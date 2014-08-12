--奧古達帶領人進入密道
function LuaQ_420279_Complete()

	local Player = LuaFunc_PartyData(TargetID())
	for i = 1 , Player[0] , 1 do
		if CheckAcceptQuest( Player[i] , 420279) == true then --有人沒回任務，劇情就不往下跑
			return
		end 
	end

	DisableQuest( OwnerID() , true ) 
	MoveToFlagEnabled( OwnerID(), false );
	local RoomID = ReadRoleValue( TargetID() , EM_RoleValue_RoomID ) 
	WriteRoleValue( OwnerID() ,EM_RoleValue_IsWalk , 0  )
	LuaFunc_MoveToFlag( OwnerID(), 580030 , 1 ,0 ) 
	local Soldier = Ver_Zone103_Trap[RoomID]["Soldiers"] 
	Say( OwnerID() , GetString("SAY_110247_4") ) --/*戰士們！ 
	for i = 0 , 12 , 1 do
		if Soldier[i] == -1 then			
			Break
		end
		MoveToFlagEnabled( Soldier[i], false );
		WriteRoleValue( Soldier[i] ,EM_RoleValue_IsWalk , 0  )
		LuaFunc_MoveToFlag( Soldier[i], 580030 , i+101 ,0 ) --擺放士兵的位置101~112
		AdjustFaceDir( Soldier[i], OwnerID(), 0 )
		
	end
	sleep( 50 )
	Say( OwnerID() , GetString("SAY_110247_5") ) --/*你們準備好了嗎？
	sleep( 30 )
	Say( Soldier[5] , GetString("SAY_110450_0") ) --/*早就準備好了！隊長！
	sleep( 30 )
	Say( Soldier[3] , GetString("SAY_110450_1") ) --/*等太久，我的刀刃都快生鏽了！
	sleep( 30 )
	Say( OwnerID() , GetString("SAY_110247_6") ) --/*安靜！卡里夫，你最好在我數到三之前把刀刃給我磨利，因為我們要出發了。
	sleep( 30 )
	Say( Soldier[3] , GetString("SAY_110450_5") ) --/*隊長！我向你保證這個刀刃絕對能切開最堅固的鱗片！
	sleep( 30 )
	Say( OwnerID() , GetString("SAY_110247_7") ) --/*那就狂奔吧！戰士們！跑最後的晚餐只能吃牧草！
	for i = 0 , 11 , 1 do
		Say( Soldier[i] , GetString("SAY_110450_6") ) --/*吼～		
		PlayMotion( Soldier[i] , ruFUSION_ACTORSTATE_ATTACK_POLEARM ) --到時候看情形變換
		BeginPlot( Soldier[i] , "LuaQ_420279_Solider" , 0 )
	end
	sleep( 30 )

	for i = 0 , 20 , 1 do
		LuaFunc_MoveToFlag( OwnerID(), 580030 , i+10 ,0 ) --從10~30為路徑B
	end

	Ver_Zone103_Trap[RoomID]["DRAMA"] = 1
	BeginPlot( OwnerID() , "LuaQ_420279_Corpse" , 0 )

	
end

function LuaQ_420279_Solider()

	sleep( Rand(20)+10 )
	for i = 0 , 20 , 1 do
		LuaFunc_MoveToFlag( OwnerID(), 580030 , i+10 ,0 )
	end
	DelObj( OwnerID() )
end
function LuaQ_420279_Corpse()
	local RoomID = ReadRoleValue( TargetID() , EM_RoleValue_RoomID ) 
	local Corpse = {}
	for i = 61 , 71 , 1 do
		Corpse[i] = CreateObjByFlag( 110450 , 580030 , i , 1 )
		SetRoleCamp( Corpse[i] ,"NPC")
		PlayMotionEX( Corpse[i], ruFUSION_ACTORSTATE_DYING,ruFUSION_ACTORSTATE_DEAD)
		AddToPartition( Corpse[i] ,RoomID )
		DisableQuest( Corpse[i] , true)
	end
	for i = 72 , 80 , 1 do
		local Enemy
		local n = rand( 4 )
		if n == 1 then
			 Enemy = 100159 
		elseif n == 2 then
			 Enemy = 100374 
		elseif n == 3 then
			 Enemy = 100609 --喪屍馬卡斯魔獸
		else
			 Enemy = 100594--索雷爾頓門徒
		end
		Corpse[i] = CreateObjByFlag( Enemy , 580030 , i , 1 )
		SetRoleCamp( Corpse[i] ,"NPC")
		PlayMotionEX( Corpse[i], ruFUSION_ACTORSTATE_DYING,ruFUSION_ACTORSTATE_DEAD)
		AddToPartition( Corpse[i] ,RoomID )
	end
	Hide( OwnerID() )
end
----------------------------------------------------------------------------------------------------------
--奧古達與多魯梭的戰鬥
function LuaI_420279A()
	SetPlot( OwnerID() , "Range" ,"LuaI_420279_Range" , 150 )
end
function LuaI_420279_Range()
	SetPlot( TargetID() , "Range" ,"" , 50 )	
	BeginPlot( TargetID() , "LuaI_420279_Battle",0 )
--	Say( OwnerID() ,"Touch")
end
function LuaI_420279_Battle()

	local RoomID = ReadRoleValue( TargetID() , EM_RoleValue_RoomID ) 
	if Ver_Zone103_Trap[RoomID]["DRAMA"] == nil or Ver_Zone103_Trap[RoomID]["DRAMA"] == 0 then
		SetPlot( OwnerID() , "Range" ,"LuaI_420279_Range" , 50 )
		return
	end
	local OGD = CreateObjByFlag( 110247 , 580030 , 4 , 1 ) 
	local DLS = Ver_Zone103_Trap[RoomID]["DLS"]  --暫代，找出多魯梭
	Hide( DLS )
	DisableQuest( OGD , true )
	AddToPartition( OGD , RoomID )
	local Dummy_DLS = CreateObjByFlag( 100611, 580030 , 5 , 1 ) 
	SetRoleCamp( Dummy_DLS ,"NPC" )
	AddToPartition( Dummy_DLS , RoomID )
	sleep( 100 )
	Say( OGD , GetString("SAY_110247_8") ) --/*卑鄙的傢伙！
	FaceObj( Dummy_DLS , OGD )
	SetAttack( OGD , Dummy_DLS )
	PlayMotion( Dummy_DLS , ruFUSION_ACTORSTATE_CAST_INSTANT )
	sleep( 50 )
	CastSpell( OGD , OGD, 491033 )
	Say( OGD , GetString("SAY_110247_8") ) --/*卑鄙的……傢伙……
	SetStopAttack( OGD )
	SetPosture( OGD, 8 , ruFUSION_ACTORSTATE_DYING );
	sleep( 30 )
	SAY( Dummy_DLS, GetString("SAY_100178_0") ) --/*哼！區區幻影，我早就準備對付你的方法了。
	CastSpell( Dummy_DLS ,OwnerID(), 490111 )
	sleep( 30 )
	SAY( Dummy_DLS, GetString("SAY_100178_1") ) --/*看來養成事先準備的習慣，的確可以避免很多麻煩......
	local COGD = LuaFunc_CreateObjByObj( 100274 , OGD ) --產生屍骸奧古達
	AddToPartition( COGD ,RoomID )
	DelObj( OGD )
	MoveToFlagEnabled( COGD, false );
	SetPlot( COGD , "Dead" , "LuaQ_420280" , 40 )
	Beginplot( COGD ,"LuaB_OGD_AI_SYSYTEM" , 0 )
	SAY( Dummy_DLS , GetString("SAY_100178_2") ) --/*去對付他們。
	SetAttack( COGD , TargetID() )
	CastSpell( Dummy_DLS , Dummy_DLS, 490111 ) --以下讓多魯梭回到原位
	sleep( 10 )		
	Delobj(Dummy_DLS)
	Show( DLS , RoomID )		

end
----------------------------------------------------------------------------------------------------------
--給予奧古達之角
function LuaQ_420280()

	local Player = LuaFunc_PartyData(TargetID())
	for i = 1 , Player[0] , 1 do
		if CheckCompleteQuest( Player[i]  , 420280 ) ~= true and CheckCompleteQuest( Player[i] , 420279 ) == true and CountBodyItem( Player[i] , 200735) == 0 then
			GiveBodyItem( Player[i]  ,200735 , 1 )
		end 
	end
end
----------------------------------------------------------------------------------------------------------