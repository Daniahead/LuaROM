function LuaI_420263() --�s���ȥN
	local RoomID = ReadRoleValue( OwnerID() , EM_RoleValue_RoomID )
	sleep(5)
	Ver_Zone103_Trap[RoomID]["DLS"] = OwnerID()
	Setplot( OwnerID() , "dead" , "LuaQ_420263_Dead", 40 )
	Beginplot( OwnerID() , "LuaB_DSL_AI_SYSYTEM" , 0 )
end
-------------------------------------------------------------------------------------------------------------
function LuaQ_420263_Dead()

	local Player = LuaFunc_PartyData(TargetID())
	local Check = 0
	local RoomID = ReadRoleValue( OwnerID() , EM_RoleValue_RoomID )
	for i = 1 , Player[0] , 1 do
		if CheckAcceptQuest( Player[i] , 420560 ) == true and CountBodyItem( Player[i], 201008 ) == 0  then
			GiveBodyItem( Player[i] , 201008 , 1 ) --�������Ȫ��~�A�Ҧ����a���n����
			Check = Player[i] 
		end 
	end
	if Ver_Zone103_Trap[RoomID]["DRAMA"] == 1 then
		Say( OwnerID() ,GetString("SAY_100178_3") ) --/*�o�K�K���i��K�K�ڪ��O�q�K�K
	else
		Say( OwnerID() ,GetString("SAY_100178_4") ) --/*�O�o�N......�ݬݧA�̦^�h�����a�I�گd�F�@��§�����A��......�������I
		local COGD = CreateObjByFlag( 100274 , 580030 , 4 , 1 ) --���ͫ��e���j�F
		AddToPartition( COGD ,RoomID )
		SetPlot( COGD , "Dead" , "LuaQ_420280" , 40 )
		Beginplot( COGD ,"LuaB_OGD_AI_SYSYTEM" , 0 )	
	end
--	if Check ~= 0 then
--		local Hurlong = CreateObjByFlag(110147,580030,7,1)
--		WriteRoleValue( Hurlong , EM_RoleVaue_PID , Check)
--		AddToPartition( Hurlong ,RoomID )
--		BeginPlot( Hurlong , "LuaQ_420560_Play" , 0 )		
--	end
	--������}�ұK�D--
	local Trap = {}
	Trap[1] = Ver_Zone103_Trap[RoomID]["Fire1"] 
	Trap[2]  = Ver_Zone103_Trap[RoomID]["Fire2"] 
	Trap[3]  = Ver_Zone103_Trap[RoomID]["BOX1"] 
	Trap[4] = Ver_Zone103_Trap[RoomID]["BOX2"] 
	Trap[5] = Ver_Zone103_Trap[RoomID]["Door1"] 
	Trap[6] = Ver_Zone103_Trap[RoomID]["Door2"] 
	Trap[7] = Ver_Zone103_Trap[RoomID]["OGD"] 
	Trap[8] = Ver_Zone103_Trap[RoomID]["Soldiers"] 
	Trap[9] = Ver_Zone103_Trap[RoomID]["STATE"] 
	Trap[10] = Ver_Zone103_Trap[RoomID]["FIRECONTROL"]
	if Ver_Zone103_Trap[RoomID]["DRAMA"] == 0 then
		for i = 1 , 7 , 1 do
			Hide( Trap[i])
		end
		for i = 0 , 11 , 1 do
			Hide(Trap[8][i])
		end
		BeginPlot( COGD , "LuaQ_420279_Corpse" , 0 )
		BeginPlot( Trap[9] , "LuaQ_110248_End" , 0 )
		BeginPlot( Trap[10] , "LuaQ_110250_End" , 0)
	end
	
	return true
end
-------------------------------------------------------------------------------------------------------------
function LuaQ_420560_Play()

		local Altar = LuaFunc_SearchNPCbyOrgID( OwnerID() , 110291 , 150 )
		local Player = ReadRoleValue( OwnerID() , EM_RoleValue_PID )
		MoveToFlagEnabled( OwnerID() , false );
		DisableQuest( OwnerID() , true )
		AdjustFaceDir( OwnerID(), Altar, 0 )
--		PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_CRAFTING_BEGIN )
		sleep( 30 )
--		PlayMotion( OwnerID(), ruFUSION_ACTORSTATE_CRAFTING_END )	
		PlayMotion( Altar , ruFUSION_ACTORSTATE_ACTIVATE_END )
		Say( OwnerID() , GetString("SAY_110147_4") )--/*�������I�Ŧ�Ť�L�{�b�]���F�I
		sleep( 20 )
		AdjustFaceDir( OwnerID(), Player, 0 )
		sleep( 50 )
--		PlayMotion( OwnerID(), ruFUSION_ACTORSTATE_EMOTE_SPEAK )
--		Say( OwnerID() , GetString("SAY_110147_5") )--/*��H�o���O�h�|�����y���U�z�ܡH�S�����աI
--		sleep( 30 )
		Say( OwnerID(), GetString("SAY_110147_6") )--/*�i�����٦��ƭn���A�S��k�[�d�C
		PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_SALUTE )
		sleep( 30 )
		PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_POINT )
		Say( OwnerID() , GetString("SAY_110147_7") )--/*�U�������ڴN���|�o��§�F�C�ˤ�N�A�����O�ڪ��a���A���p�A�ٯଡ�쨺�ӮɭԪ��ܡA�A���F�I
		sleep( 30 )
		CastSpell( OwnerID() , OwnerID() , 491008 )
		sleep(5)
		DelObj( OwnerID() )

end
-------------------------------------------------------------------------------------------------------------
function LuaQ_420560_Complete()
	DisableQuest( OwnerID() , true ) 
	MoveToFlagEnabled( OwnerID(), false );
	WriteRoleValue( OwnerID() ,EM_RoleValue_IsWalk , 1  )
	local Cage = LuaFunc_SearchNPCbyOrgID( OwnerID() ,110366 , 50 , 0)
	local SandGlass = LuaFunc_SearchNPCbyOrgID( OwnerID() ,110783 , 250 , 0)
--	Hide( Cage )
	sleep( 20 )
	local Guard = {}
	--580030�X�Цb���^���Q�ΡA�P�ƥ����ҥN���N�q���P
	LuaFunc_MoveToFlag( OwnerID() , 580030 , 1 , 0 ) --�����s
	AdjustFaceDir( OwnerID(), SandGlass, 0 )
	sleep( 30 )
	Say( OwnerID() , GetString("SAY_110251_0") ) --/*�z��p�G�i�H�b�̭���s�@�w�ܴΡI
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_SPEAK)
	sleep( 30 )
	AdjustDir( OwnerID(), 180 ) --���ਭ180�ת��ʧ@
	sleep( 30 )
	Say( OwnerID() , GetString("SAY_110251_1") ) --/*���L�ڱo���֦^�h��o�ǭ��n����Ƶ��O�U�ӡC 
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_SPEAK)
	sleep( 30 )
	Say( OwnerID() , GetString("SAY_110251_2") ) --/*���a�I�U�ַU�n�I�ڧ��ƾ�z�n�����٭n���^�o���~���s�O�I
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_SPEAK)
	sleep( 5 )
	for i = 1 , 5 , 1 do --���򲣥�5�Ӷ��`�M�h�Ϊ���F�w��A�w�쬰 3 ~ 7
		Guard[i] = CreateObjByFlag( 110311 , 580030 , 2 , 1 )
		AddToPartition( Guard[i] , 0 )
		MoveToFlagEnabled( Guard[i], false );
		DisableQuest( Guard[i] , true ) 
		Say( Guard[i] , Guard[i]  )
		WriteRoleValue( Guard[i] ,EM_RoleValue_PID , i )
		if i ~= 5 then
			BeginPlot( Guard[i] , "LuaQ_420263_Play", 0 )
		else
			WriteRoleValue( Guard[i] ,EM_RoleValue_IsWalk , 0  )
			LuaFunc_MoveToFlag( Guard[i] , 580030 , 2+i , 0 )
		end
		sleep( 5 )
	end		
	Say( OwnerID() , GetString("SAY_110251_3") ) --/*��I�O���x�C�I
	WriteRoleValue( OwnerID() ,EM_RoleValue_IsWalk , 0  )
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_SPEAK)
	sleep( 5 )
	LuaFunc_MoveToFlag( OwnerID() , 580030 , 0 , 0 )
	Say( Guard[5] ,GetString("SAY_110251_4")) --/*���§A����U�A�L�����������ڭ̨ӱ����A�̡A���U�ӴN�浹�ڭ̧a�I 
	PlayMotion( Guard[5]  , ruFUSION_ACTORSTATE_EMOTE_SPEAK)
	sleep( 5 )
	Say( OwnerID() ,GetString("SAY_110251_5")) --/*�Ӧn�F�I�֨��a�I�ڨ����F�o�ǺC�]�]���å�F�I
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_SPEAK)
	sleep( 30 )
	Say( Guard[5] ,GetString("SAY_110251_6")) --/*<���a�m�W>�j�H�A�L���������Ʊ�z�b�^�쫢���Ҥ��ɯ����L�ͽ͡A�L�Ʊ����P�±z�����U�C
	PlayMotion( Guard[5]  , ruFUSION_ACTORSTATE_EMOTE_SPEAK)
	sleep( 5 )
	Say( OwnerID() ,GetString("SAY_110251_7")) --/*���ԩ԰�����H���ٻ��ۭn��o�Ǹ�Ƶ��O�U�өO�I�ȡA�A�̦��a�ȶܡH
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_SPEAK)
	sleep( 30 )
	Say( Guard[5] ,GetString("SAY_110251_8")) --/*���ڭ̥��i��F�C
	PlayMotion( Guard[5]  , ruFUSION_ACTORSTATE_EMOTE_SALUTE)
	WriteRoleValue( OwnerID() ,EM_RoleValue_IsWalk , 1 )
	sleep( 10 )
	for i = 1 , 5 , 1 do 
		WriteRoleValue( Guard[i] ,EM_RoleValue_IsWalk , 1  )
		if i == 5 then
			Say( OwnerID() ,GetString("SAY_110251_9")) --/*�ڭ̦^�h��z���o�Ǹ�Ƥ���A�٭n�ǳƦ^�ӳo�̬�s�K�K
			PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_SPEAK)
			sleep( 10 )
			Say( Guard[i] ,GetString("SAY_110251_10")) --/*��p�A�ڭ̦b�o�ӥ��Ȥ����٦���L�԰ȭn����C
			PlayMotion( Guard[i]  , ruFUSION_ACTORSTATE_EMOTE_SPEAK)
		end
		BeginPlot( Guard[i] , "LuaQ_420263_BACK" ,  5*i )
	end
	
	while 1 do
		if LuaFunc_MoveToFlag( OwnerID() , 580030 , 2 , 0 ) then
			DisableQuest( OwnerID() , false )
			Show( Cage , 0 )
			Hide( OwnerID() )
			sleep( 300 )
			LuaFunc_ResetObj( OwnerID() );
			break
		end
		sleep( 1 )
	end	
end
------------------------------------------------------------------------------------------------------------
function LuaQ_420263_Play()
	local i = ReadRoleValue( OwnerID() , EM_RoleValue_PID )
	WriteRoleValue( OwnerID() ,EM_RoleValue_IsWalk , 0  )
	LuaFunc_MoveToFlag( OwnerID(), 580030 , 2+i , 0 )
end

function LuaQ_420263_BACK()
	while 1 do
		if LuaFunc_MoveToFlag( OwnerID() , 580030 , 2 , 0 ) then
			DelObj( OwnerID() )
			break
		end
		sleep( 1 )
	end
end
------------------------------------------------------------------------------------------------------------

