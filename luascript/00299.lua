--���j�F�a��H�i�J�K�D
function LuaQ_420279_Complete()

	local Player = LuaFunc_PartyData(TargetID())
	for i = 1 , Player[0] , 1 do
		if CheckAcceptQuest( Player[i] , 420279) == true then --���H�S�^���ȡA�@���N�����U�]
			return
		end 
	end

	DisableQuest( OwnerID() , true ) 
	MoveToFlagEnabled( OwnerID(), false );
	local RoomID = ReadRoleValue( TargetID() , EM_RoleValue_RoomID ) 
	WriteRoleValue( OwnerID() ,EM_RoleValue_IsWalk , 0  )
	LuaFunc_MoveToFlag( OwnerID(), 580030 , 1 ,0 ) 
	local Soldier = Ver_Zone103_Trap[RoomID]["Soldiers"] 
	Say( OwnerID() , GetString("SAY_110247_4") ) --/*�Ԥh�̡I 
	for i = 0 , 12 , 1 do
		if Soldier[i] == -1 then			
			Break
		end
		MoveToFlagEnabled( Soldier[i], false );
		WriteRoleValue( Soldier[i] ,EM_RoleValue_IsWalk , 0  )
		LuaFunc_MoveToFlag( Soldier[i], 580030 , i+101 ,0 ) --�\��h�L����m101~112
		AdjustFaceDir( Soldier[i], OwnerID(), 0 )
		
	end
	sleep( 50 )
	Say( OwnerID() , GetString("SAY_110247_5") ) --/*�A�̷ǳƦn�F�ܡH
	sleep( 30 )
	Say( Soldier[5] , GetString("SAY_110450_0") ) --/*���N�ǳƦn�F�I�����I
	sleep( 30 )
	Say( Soldier[3] , GetString("SAY_110450_1") ) --/*���Ӥ[�A�ڪ��M�b���֥��äF�I
	sleep( 30 )
	Say( OwnerID() , GetString("SAY_110247_6") ) --/*�w�R�I�d���ҡA�A�̦n�b�ڼƨ�T���e��M�b���ڿi�Q�A�]���ڭ̭n�X�o�F�C
	sleep( 30 )
	Say( Soldier[3] , GetString("SAY_110450_5") ) --/*�����I�ڦV�A�O�ҳo�ӤM�b�������}�̰�T������I
	sleep( 30 )
	Say( OwnerID() , GetString("SAY_110247_7") ) --/*���N�g�b�a�I�Ԥh�̡I�]�̫᪺���\�u��Y����I
	for i = 0 , 11 , 1 do
		Say( Soldier[i] , GetString("SAY_110450_6") ) --/*�q��		
		PlayMotion( Soldier[i] , ruFUSION_ACTORSTATE_ATTACK_POLEARM ) --��ɭԬݱ����ܴ�
		BeginPlot( Soldier[i] , "LuaQ_420279_Solider" , 0 )
	end
	sleep( 30 )

	for i = 0 , 20 , 1 do
		LuaFunc_MoveToFlag( OwnerID(), 580030 , i+10 ,0 ) --�q10~30�����|B
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
			 Enemy = 100609 --��Ͱ��d���]�~
		else
			 Enemy = 100594--���p���y���{
		end
		Corpse[i] = CreateObjByFlag( Enemy , 580030 , i , 1 )
		SetRoleCamp( Corpse[i] ,"NPC")
		PlayMotionEX( Corpse[i], ruFUSION_ACTORSTATE_DYING,ruFUSION_ACTORSTATE_DEAD)
		AddToPartition( Corpse[i] ,RoomID )
	end
	Hide( OwnerID() )
end
----------------------------------------------------------------------------------------------------------
--���j�F�P�h�|�����԰�
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
	local DLS = Ver_Zone103_Trap[RoomID]["DLS"]  --�ȥN�A��X�h�|��
	Hide( DLS )
	DisableQuest( OGD , true )
	AddToPartition( OGD , RoomID )
	local Dummy_DLS = CreateObjByFlag( 100611, 580030 , 5 , 1 ) 
	SetRoleCamp( Dummy_DLS ,"NPC" )
	AddToPartition( Dummy_DLS , RoomID )
	sleep( 100 )
	Say( OGD , GetString("SAY_110247_8") ) --/*�������å�I
	FaceObj( Dummy_DLS , OGD )
	SetAttack( OGD , Dummy_DLS )
	PlayMotion( Dummy_DLS , ruFUSION_ACTORSTATE_CAST_INSTANT )
	sleep( 50 )
	CastSpell( OGD , OGD, 491033 )
	Say( OGD , GetString("SAY_110247_8") ) --/*�������K�K�å�K�K
	SetStopAttack( OGD )
	SetPosture( OGD, 8 , ruFUSION_ACTORSTATE_DYING );
	sleep( 30 )
	SAY( Dummy_DLS, GetString("SAY_100178_0") ) --/*��I�ϰϤۼv�A�ڦ��N�ǳƹ�I�A����k�F�C
	CastSpell( Dummy_DLS ,OwnerID(), 490111 )
	sleep( 30 )
	SAY( Dummy_DLS, GetString("SAY_100178_1") ) --/*�ݨӾi���ƥ��ǳƪ��ߺD�A���T�i�H�קK�ܦh�·�......
	local COGD = LuaFunc_CreateObjByObj( 100274 , OGD ) --���ͫ��e���j�F
	AddToPartition( COGD ,RoomID )
	DelObj( OGD )
	MoveToFlagEnabled( COGD, false );
	SetPlot( COGD , "Dead" , "LuaQ_420280" , 40 )
	Beginplot( COGD ,"LuaB_OGD_AI_SYSYTEM" , 0 )
	SAY( Dummy_DLS , GetString("SAY_100178_2") ) --/*�h��I�L�̡C
	SetAttack( COGD , TargetID() )
	CastSpell( Dummy_DLS , Dummy_DLS, 490111 ) --�H�U���h�|���^����
	sleep( 10 )		
	Delobj(Dummy_DLS)
	Show( DLS , RoomID )		

end
----------------------------------------------------------------------------------------------------------
--�������j�F����
function LuaQ_420280()

	local Player = LuaFunc_PartyData(TargetID())
	for i = 1 , Player[0] , 1 do
		if CheckCompleteQuest( Player[i]  , 420280 ) ~= true and CheckCompleteQuest( Player[i] , 420279 ) == true and CountBodyItem( Player[i] , 200735) == 0 then
			GiveBodyItem( Player[i]  ,200735 , 1 )
		end 
	end
end
----------------------------------------------------------------------------------------------------------