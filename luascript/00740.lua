function Lua_BG_111258_Init()

	SetPlot( OwnerID() , "Touch" , "Lua_BG_111258_Touch" , 60 );
	--SetRoleCamp( OwnerID(), "Monster" );

end

function Lua_BG_111258_Touch()

	local ObjID  	= 0;
	local CastResult	= 0;

	BeginCastBar( OwnerID(), GetName( TargetID() ) , 150 , ruFUSION_ACTORSTATE_CRAFTING_BEGIN , ruFUSION_ACTORSTATE_CRAFTING_END , 0 );
	
	while 1 do
		sleep( 2 );
		
		local CastBarStatus = CheckCastBar( OwnerID() );
		if ( CastBarStatus ~= 0 ) then 
			if ( CastBarStatus > 0) then -- 成功
				CastResult = 1;
				EndCastBar( OwnerID(), CastBarStatus )
				break;
			elseif ( CastBarStatus < 0 ) then -- 失敗
				CastResult = -1;
				EndCastBar( OwnerID(), CastBarStatus )
				break;
			end
		end

	end

	if( CastResult == 1 ) then 
		-- 將物件刪除

		local TeamID 	= GetTeamID( OwnerID() );
		local OrgID 	= ReadRoleValue( TargetID(), EM_RoleValue_OrgID );

		if( OrgID == 111261 ) then -- Gray 

			if( TeamID == 1 ) then -- TEAM A
				ChangeObjID( TargetID(), 111264 );	-- TEAM 1 RED
			else
				ChangeObjID( TargetID(), 111258 );	-- TEAM 2 BLUE
			end
		else

			if( OrgID == 111264 ) then
				ChangeObjID( TargetID(), 111258 );	-- TEAM 2 BLUE
			else
				ChangeObjID( TargetID(), 111264 );	-- TEAM 2 BLUE
			end
		end
	

		SetPlot( TargetID(), "Touch" , "Lua_BG_111258_Touch" , 60 );
		SetRoleCampID( TargetID(), GetRoleCampID( OwnerID() ) );
	end

end

function LuaZone_BG15_Init( ZoneID, RoomID )

	-- 戰場區域初始劇情, 用於產生物件, 設定分數
	--SetBGScore( RoomID, 1, 0 );
	--SetBGScore( RoomID, 2, 0 );
	local ObjID = 0;

	-- 產生灰色水晶
	ObjID = CreateObj( 111261, 131.7, -3.4, -84.5, 0, 1 );
	AddtoPartition( ObjID, RoomID );

	ObjID = CreateObj( 111261, 54.6, -5.1, -153.8, 0, 1 );
	AddtoPartition( ObjID, RoomID );

	-- 產生一個隱型的控制物件於地圖, 定時處理並檢查戰場狀態

	ObjID = CreateObj( 111264, 0, 0, 0, 0, 1 );	-- 產生一個控制物件, 用來控制戰場行為
	BeginPlot( ObjID, "LuaZone_BG15_Main", 0 );

end

function LuaZone_BG15_Main()

	local 	RoomID 	= ReadRoleValue( OwnerID(), EM_RoleValue_RoomID );
	local	ObjID	= 0;
	local	Flag	= {};
	local 	FlagID 	= 1;

	SetZonePVPScript( "LuaZone_BG15_PVPDead" );
	SetZoneReviveScript( "LuaZone_BG15_Revive" );

	-- 設定戰場據點資料
	SetLandMarkInfo( RoomID, 0, 0, 131.7, -3.4, -84.5, "TEST-1", 1 );
	SetLandMarkInfo( RoomID, 1, 0, 54.6, -5.1, -153.8, "TEST-2", 1 );

	-- 產生灰色水晶
	FlagID = 1;
	Flag[ FlagID ] = CreateObj( 111261, 131.7, -3.4, -84.5, 0, 1 );
	AddtoPartition( Flag[ FlagID ] , RoomID );
	SetPlot( Flag[ FlagID ], "Touch" , "Lua_BG_111258_Touch" , 60 );
	SetRoleCampID( Flag[ FlagID ], 2 );	-- 將預設旗子設為怪物

	FlagID = 2;
	Flag[ FlagID ] = CreateObj( 111261, 54.6, -5.1, -153.8, 0, 1 );
	AddtoPartition( Flag[ FlagID ] , RoomID );
	SetPlot( Flag[ FlagID ], "Touch" , "Lua_BG_111258_Touch" , 60 );
	SetRoleCampID( Flag[ FlagID ], 2 );	-- 將預設旗子設為怪物


	-- 產生柵門
	
	-- 檢查兩邊人數都滿了才開柵門

	-- 檢查戰場開始時間至今已多久, 若達五分鐘仍未達人數, 則關畢戰場

	-- 檢查兩邊

	-- 主要迴圈, 檢查水晶屬於那個陣營, 並計分

	local CheckFlag = 0;

	while 1 do

		sleep( 10 );

		CheckFlag = CheckFlag + 1;
		
		-- 檢查旗子加分
		if( CheckFlag == 10 ) then
			
			CheckFlag = 0;

			for i, FlagID in Flag do
			
				local TeamID	= 0;
				local OrgID 	= ReadRoleValue( FlagID, EM_RoleValue_OrgID );
				
				if( OrgID == 111264 ) then	-- 屬於 TEAM 1
					TeamID = 1;
				elseif( OrgID == 111258 ) then	-- 屬於 TEAM 2
					TeamID = 2;
				end

				if( TeamID ~= 0 ) then

					local Score = GetScore( RoomID, TeamID ) + 10;
					
					if( Score >= 2000 ) then
						Score = 2000;
					end

					SetScore( RoomID, TeamID, Score );

					if( Score >= 2000 ) then
						break;
					end
				end
			end
		end

		-- 檢查雙邊陣營穫勝
		for i=1, 2, 1 do			
			if( GetScore( RoomID, i ) >= 2000 ) then
				-- 已經有贏家產生, 使用劇情, 將所有有害的 buff 消除, 等待			
				--CheckBGWinner();
				SetWinner( RoomID, i );
				break;
			end
		end
	end
end

function LuaZone_BG15_PVPDead( KillerID , DeadID , ZoneID , ParallelZoneID , RoomID )

	local KillerTeamID	= GetTeamID( KillerID );

	if( KillerTeamID ~= GetTeamID( DeadID ) ) then

		local 	RoomID 	= ReadRoleValue( OwnerID(), EM_RoleValue_RoomID );
		local 	Score 	= GetScore( RoomID, KillerTeamID ) + 1;

		if( Score >= 2000 ) then
			Score = 2000;
		end
		
		SetScore( RoomID, KillerTeamID, Score );
	end
end

function LuaZone_BG15_Revive()
	
	-- 區域重生劇情
	local 	TeamID	= GetTeamID( OwnerID() );
	local	X	= 0;
	local	Y	= 0;
	local	Z	= 0;
	local	Dir	= 0;

	if( TeamID == 1 ) then	
		X 	= 0;
		Y	= 0;
		Z 	= 0;
		Dir	= 0;
	else		
		X 	= 0;
		Y	= 0;
		Z 	= 0;
		Dir	= 0;
	end

	WriteRoleValue( OwnerID(), EM_RoleValue_X, X );
	WriteRoleValue( OwnerID(), EM_RoleValue_Y, Y );
	WriteRoleValue( OwnerID(), EM_RoleValue_Z, Z );
	WriteRoleValue( OwnerID(), EM_RoleValue_Dir, Dir );

end