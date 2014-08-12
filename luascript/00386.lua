----------------------------------------------------------以下為控制玩家進入用-------------------------------------------------------------------------------------------------
function LuaI_MysteryLand_0() --放在入口的初始劇情，要能點得到
	SetPlot( OwnerID() , "range","LuaI_MysteryLand_1" , 40 )
end

function LuaI_MysteryLand_1()
	if CheckAcceptQuest( OwnerID() , 420070 ) ~= true then
		ScriptMessage(OwnerID() , OwnerID() ,1, GetString("SAY_MYSTERYLAND_0") , C_SYSTEM ) --你覺得這陣光芒十分詭異。
	else
		BeginPlot( TargetID() , "LuaI_MysteryLand_2" , 0 )
	end
end

function LuaI_MysteryLand_2()
	Local Player = LuaFunc_PartyData(TargetID())
	if Player[0] < 6 then
		for i = 1 , Player[0] , 1 do
			ScriptMessage(Player[i] , Player[i] , 1 , GetString("SAY_MYSTERYLAND_1") , 0 ) --你的隊伍未滿六人，無法進入祕境。
		end
	else
		local count = 0
		for i = 1 , Player[0] , 1 do
			if GetDistance( OwnerID(), Player[i] ) <= 500 then
				count = count + 1
			end
		end

		if Count < 6 then
			for i = 1 , Player[0] , 1 do
				ScriptMessage(Player[i] , Player[i] , 1 , GetString("SAY_MYSTERYLAND_1") , 0 ) --你的隊伍未滿六人，無法進入祕境。		
			end
		else
			for i = 1 , Player[0] , 1 do
				if CheckID( Player[i] ) == true and ReadRoleValue( Player[i] ,EM_RoleValue_IsDead ) ~= 1 then
					ScriptMessage(Player[i] , Player[i] , 1 , GetString("SAY_MYSTERYLAND_2") , C_SYSTEM ) --你被神秘的光芒吸了進去。
					ChangeZone( Player[i] , 104 , -1, 436, 450, 1053, 327)
				end
			end
		end		
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------以下為控制怪物產生用----------------------------------------------------------------------------------------------
function LuaI_HungeryGrass_0()
	SetPlot( OwnerID() , "range","LuaI_HungeryGrass_1" , 100 )
end

function LuaI_HungeryGrass_1()
	if ReadRoleValue( OwnerID() , EM_RoleValue_IsPlayer ) == 1 then
		SetPlot( TargetID() , "range","" , 0 )	
		BeginPlot( TargetID() , "LuaI_HungeryGrass_2" , 0 )
	end
end

function LuaI_HungeryGrass_2()
	local Flag = 580015 --怪產生位置的旗標
	local Time = 100 --控制每隔多久生一次怪
	local FlagCount = GetMoveFlagCount (Flag) -1
	local Count = {}
	local Part = 0
	local RoomID = ReadRoleValue( OwnerID() , EM_RoleValue_RoomID )
	local LV = 0
	Local Player = LuaFunc_PartyData(TargetID())
	local Boss
	local Monster
	---------------------以下用來計算玩家的平均等級--------------------
	for i = 1 , Player[0] , 1 do
		LV = LV + ReadRoleValue( Player[i] ,EM_RoleValue_LV)
	end
	LV = LV / Player[0]
	-----------------------------------------------------------------------------------
	---以下控制不同等級出的怪物---
	if LV <= 10 then
		Grass = 100622
		Monster = 100623
	elseif LV <= 15 then
		Grass = 100687
		Monster = 100688
	else
		Grass = 100689		--高於15級以上的玩家，呼叫怪物
		Monster = 100690		
	end
	---------------------------------------------

	local Boss = CreateObjByFlag( Grass,Flag ,  0 , 1 );		
	AddToPartition( Boss  , RoomID )
	SetPlot( Boss , "dead" , "LuaI_HungeryGrass_Dead" , 0 )
--		Say( OwnerID() , "BEGIN" )
	for i = 0 , (6000 / Time) , 1 do
		if CheckID(Boss) == false or ReadRoleValue( Boss ,EM_RoleValue_IsDead ) == 1 or ReadRoleValue( Boss ,EM_RoleValue_IsNPC ) ~= 1 then
			for i = 0 , table.getn(Count)  , 1 do
				if Count ~= -1 and ReadRoleValue( Count[k] , EM_RoleValue_IsNPC ) ~= 1 then
					DelObj( Count[i] )
				end
			end
--			SAY( OwnerID() , "STOP" )
			break
		end
		for j = 1 , FlagCount , 1 do
			if Part < 30 then
--				Say( OwnerID() , "ADD" )
				Count[Part] = CreateObjByFlag( Monster , Flag ,  j , 1 );
				AddToPartition( Count[Part]  , RoomID )
				BeginPlot( Count[Part],"LuaI_HungeryGrass_3" , 0 )
--				Say(  Count[Part] , table.getn(Count) )
				Part = Part + 1
			elseif Part  == 30 then
				for k = 0 , 29 , 1 do
--					Say( OwnerID() , "Replace" )
					if Count[k] == -1 or ReadRoleValue( Count[k] , EM_RoleValue_IsNPC ) ~= 1 then
						Count[k] = CreateObjByFlag(Monster ,Flag , j , 1 );
						AddToPartition( Count[k]  , RoomID )
						BeginPlot( Count[k] ,"LuaI_HungeryGrass_3" , 0 )
--						Say(  Count[k] , k )
						j = j + 1
					end
				end
			end
		end

		sleep( Time )
	end
--	Say( OwnerID() , "FINISH" )
end

------------------------------------------以下為控制怪物前進用-------------------------------------
function LuaI_HungeryGrass_3()
	local Flag = 580015
	local MoveID = 580013
	local FlagCount = GetMoveFlagCount (MoveID) -1
	local X
	local Y
	local Z
	MoveToFlagEnabled( OwnerID() , False )
	for i = 0 , FlagCount , 1 do
		LuaFunc_MoveToFlag( OwnerID(), MoveID , i  , 50 )
--		X = GetMoveFlagValue( MoveID , i , EM_RoleValue_X )
--		Y = GetMoveFlagValue( MoveID , i , EM_RoleValue_Y )
--		Z = GetMoveFlagValue( MoveID , i , EM_RoleValue_Z )
--		MoveDirect( OwnerID(), X , Y , Z )
	end	
--	LuaFunc_MoveToFlag( OwnerID(), Flag , 0 , 50 )
end
-------------------------------------------------------------------------------------------------------------
function LuaI_HungeryGrass_Dead()
	Local Player = LuaFunc_PartyData(TargetID())

	for i = 1 , Player[0] , 1 do
		if  CheckAcceptQuest( Player[i] , 420070 ) == true and CheckFlag( Player[i] ,540599) ~=true  then
			SetFlag(Player[i] ,540599, 1)
		end
	end			
end
---------------------------------------以下為讓玩家出副本用----------------------------------------
function LuaI_TransPort_Zone104()
	SetPlot( OwnerID() , "Collision" , "LuaFunc_TransPort_Zone104" , 0);	
end
function LuaFunc_TransPort_Zone104()
	ChangeZone( OwnerID() , 1 , 0 , 1673, -144, -5114, 344 );
end
------------------------------------------------------------------------------------------------------------