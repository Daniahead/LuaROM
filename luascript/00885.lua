--�M�w���Ǫ��禡
function Lua_TheThiefKing_Password()
	local Password = {}
	local RandNum

	Password[0] =  Ver_Zone108_Trap[RoomID][State]

	for i = 1 , Password[0] , 1 do
		RandNum = Rand(5) + 1
		Password[i] = RandNum
	end
	return Password
end
--�����t���禡
function LuaS_TheThiefKing_Play()
	local RoomID = ReadRoleValue(OwnerID() , EM_RoleValue_RoomID )
	local Party = LuaFunc_PartyData(TargetID())  
	local Cache
	local Door = Ver_Zone108_Trap[RoomID][Door] 

	Show( Door[0] , RoomID ) --�}�l�԰��N�����A����
	local Password = Lua_TheThiefKing_Password()
	Ver_Zone108_Trap[RoomID][Password] = Password 
	if Password[0] == 3 then
		for i = 1 , Party[0] , 1 do
			ScriptMessage( Party[i], Party[i], 0,GetString("SC_111368_7"), 1 ); --�Ĵ��_�S���ۼv�ۨ�G���F�q�L�շҡA�u�����`��a�A�����}�o�̡I
			sleep( 30 )
			ScriptMessage( Party[i], Party[i], 0,GetString("SC_111368_8"), 1 ); --�Ĵ��_�S���ۼv�ۨ�G�^���_�۪����O�̫᪺��A�]�O�̫᪺�_�͡I
			sleep( 30 )
			ScriptMessage( Party[i], Party[i], 0,GetString("SC_111368_9"), 1 ); --�Ĵ��_�S���ۼv�ۨ�G�J�Ӭݦn���Ǫ��a�I
			sleep( 30 )
		end
	end

	for i = 1 , 5 , 1 do
		Show( Door[i] , RoomID )
	end

	for i = 1 , Password[0] , 1 do
		Cache = Password[i]
		PlayMotionEX( Door[Cache] , ruFUSION_ACTORSTATE_ACTIVATE_BEGIN,ruFUSION_ACTORSTATE_ACTIVATE_LOOP )
		sleep(15)
		PlayMotion( Door[Cache] , ruFUSION_ACTORSTATE_ACTIVATE_END )
		sleep(15)
	end

	for i = 1 , Party[0] , 1 do
		ScriptMessage( Party[i], Party[i], 0,GetString("SC_111368_10"), 1 ); --�Ĵ��_�S���ۼv�ۨ�G�{�b����A�̤F...���C���}�l�a�I
	end
	
	Sleep( 20 )

	for i = 1 , 5 , 1 do
		SetPlot( Door[i] , "touch" , "LuaS_TheThiefKing_Door" , 50 )
	end

end

function LuaS_TheThiefKing_Door()
	local RoomID = ReadRoleValue(OwnerID() , EM_RoleValue_RoomID )
	local Door = Ver_Zone108_Trap[RoomID][Door] 

	for i = 1 , 5 , 1 do
		SetPlot( Door[i] , "touch" , "" , 50 )
	end
	BeginPlot( TargetID() , "LuaS_TheThiefKing_CHECK" , 0)
end 

function LuaS_TheThiefKing_CHECK()
	local RoomID = ReadRoleValue(OwnerID() , EM_RoleValue_RoomID )
	local Door = Ver_Zone108_Trap[RoomID][Door] 

	local Password = Ver_Zone108_Trap[RoomID][Password]
	local Count = Ver_Zone108_Trap[RoomID][Count] + 1
	local State = Ver_Zone108_Trap[RoomID][State] 
	PlayMotionEX( OwnerID() , ruFUSION_ACTORSTATE_ACTIVATE_BEGIN,ruFUSION_ACTORSTATE_ACTIVATE_LOOP )
	sleep(15)
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_ACTIVATE_END )
	sleep(15)
	if Password[Count] == ReadRoleValue( OwnerID() , EM_RoleValue_PID ) then
		if Count == State then
			BeginPlot( Ver_Zone108_Trap[RoomID][ThiefKing] , "LuaS_TheThiefKing_BossBattle" , 0 )
		else
			for i = 1 , 5 , 1 do
				SetPlot( Door[i] , "touch" , "LuaS_TheThiefKing_Door" , 50 )
			end
		end
	else
		BeginPlot( Ver_Zone108_Trap[RoomID][ThiefKing] , "LuaS_TheThiefKing_Fail" , 0 )
	end
end 

function LuaS_TheThiefKing_BossBattle()
	local RoomID = ReadRoleValue(OwnerID() , EM_RoleValue_RoomID )
	local Door = Ver_Zone108_Trap[RoomID][Door]
	local State = Ver_Zone108_Trap[RoomID][State] 
	local BossID = {[0] = 100925 , [1] = 100918 , [2] = 100919 , [3] = 100920 , [4] = 100921 , [5] = 100922 }
	local BossAI = {[0] = "AI_TreatureGuard" , 
			[1] = "LuaS_TheThiefKing_Dead" ,
			[2] = "LuaS_TheThiefKing_Dead" , 
			[3] = "LuaS_TheThiefKing_Dead" , 
			[4] = "LuaS_TheThiefKing_Dead" , 
			[5] = "LuaS_TheThiefKing_Dead"}
	local FlagID = 580095
	local Char
	local AI
	if State < 7 then
		local RandNum = Rand(5) + 1
		Char = BossID[RandNum]
		AI = BossAI[RandNum]
		ScriptMessage(OwnerID(), 0 , 0,GetString("SC_111368_11"), 1 ); --�Ĵ��_�S���ۼv�ۨ�G���ߧA�̡I�_�çY�N�X�{�A���˥��a�I�A�̪����y�N�b�������W�I
	else
		Char = BossID[0]
		AI = BossAI[0]
		ScriptMessage(OwnerID(), 0 , 0,GetString("SC_111368_12"), 1 ); --�Ĵ��_�S���ۼv�ۨ�G�̫᪺���|�I�̫᪺�_�áI�ӧa�I���ڭ̨ɨ��̫᪺�԰��I
	end
	for i = 1 , 5 , 1 do
		PlayMotionEX( Door[i] , ruFUSION_ACTORSTATE_ACTIVATE_BEGIN,ruFUSION_ACTORSTATE_ACTIVATE_LOOP )
		sleep(15)
	end
	sleep( 20 )
	local Boss = CreateObjByFlag( Char , FlagID , 0 , 1 );
	AddToPartition( Boss, RoomID )
	BeginPlot( Boss, AI , 0)
	SetPlot( Boss , "Dead" , "LuaS_TheThiefKing_BossDead" , 40 )

end

function LuaS_TheThiefKing_BossDead()
	local RoomID = ReadRoleValue(OwnerID() , EM_RoleValue_RoomID )
	BeginPlot( Ver_Zone108_Trap[RoomID][ThiefKing] , "LuaS_TheThiefKing_Reset" , 0 )
	return true
end

function LuaS_TheThiefKing_Reset()
	local RoomID = ReadRoleValue(OwnerID() , EM_RoleValue_RoomID )
	local Door = Ver_Zone108_Trap[RoomID][Door]
	local State = Ver_Zone108_Trap[RoomID][State] 
	local FlagID = 580095
	for i = 1 , 5 , 1 do
		PlayMotion( Door[i] , ruFUSION_ACTORSTATE_ACTIVATE_END )
		sleep(15)
	end
	Ver_Zone108_Trap[RoomID][State] = State+2
	if ( State + 2 ) < 9 then
		DisableQuest( OwnerID() , false)
		ScriptMessage( OwnerID(), 0, 0,GetString("SC_111368_13"), 1 ); --�Ĵ��_�S���ۼv�ۨ�G�ݮ��@�U�a�I�ڭ̪��C���٨S�����O�I
	else
		local ExitDoor = CreateObjByFlag( Char , FlagID , 7 , 1 );
		ScriptMessage( OwnerID(), 0, 0,GetString("SC_111368_14"), 1 ); --�Ĵ��_�S���ۼv�ۨ�G�C�������F�A���a�I�a���A�̪��B���A�^��A�̪��a��a�I
		AddToPartition( ExitDoor, RoomID )
		SetPlot( ExitDoor , "range" , "LuaS_TheThiefKing_Exit" , 50 )
	end
end

function LuaS_TheThiefKing_Exit() --�ǰe��~�����@��

end

function LuaS_TheThiefKing_Fail()
	local RoomID = ReadRoleValue(OwnerID() , EM_RoleValue_RoomID )
	local Door = Ver_Zone108_Trap[RoomID][Door]
	local State = Ver_Zone108_Trap[RoomID][State] 
	local EXMonsterID = 100924
	local MonsterID = 100923
	local Monster = {}
	local EXMosterCount = 0
	ScriptMessage( OwnerID(), 0, 0,GetString("SC_111368_15"), 1 ); --�Ĵ��_�S���ۼv�ۨ�G��I�C�����W�h�O�����̥��������g�@�C
	for i = 1 , 3 , 1 do
		for j = 1 , 6 , 1 do
			local Count = ((i-1)*6 + j)
			if j == 1 or j == 3 or j == 5 or EXMosterCount < State then 
				Monster[Count] = CreateObjByFlag( EXMonsterID , FlagID , j , 1 );
				EXMosterCount = EXMosterCount + 1
			else
				Monster[Count] = CreateObjByFlag( MonsterID , FlagID , j , 1 );
			end
			AddToPartition( Monster[Count], RoomID )
			SetPlot(Monster[Count],"dead", "LuaFunc_DeadPlay" , 40 )
			BeginPlot(Monster[Count], "LuaS_TheThiefKing_Dead" , 0 )
		end
	end
	local Check
	while 1 do
		Check = "Clear"
		for i = 1 , 18 , 1 do
			if CheckID(Monster[i] ) then
				Check = "ATTACK"
			end
		end
		if Check == "Clear" then
			break
		end
		sleep(5)
	end
	BeginPlot( Ver_Zone108_Trap[RoomID][ThiefKing] , "LuaS_TheThiefKing_Reset" , 0 )
end

function LuaS_TheThiefKing_Dead()
	LuaFunc_Obj_Suicide(50)
end