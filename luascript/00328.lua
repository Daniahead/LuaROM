function LuaI_110457() --�]�w��w�p�d�U���T��
	SetPlot( OwnerID(),"touch","LuaI_110457_1",40)
end
-----------------------------------------------------------------------------------------------------------------------
function LuaI_110457_1()
	if CheckCompleteQuest( OwnerID() , 420268 ) == true and CheckCompleteQuest( OwnerID() , 420269 ) == false then
		if CheckAcceptQuest( OwnerID() , 420269 ) == false and CountBodyItem(OwnerID(),201106 ) == 0 then
			GiveBodyItem( OwnerID() , 201106 , 1 )
		end
	end
	BeginPlot( TargetID() , "LuaI_110457_2" , 0 )
end
------------------------------------------------------------------------------------------------------------------------
function LuaI_110457_2()
	local RoomID = ReadRoleValue( TargetID() , EM_RoleValue_RoomID )
	Hide( OwnerID() )
	sleep( 100 )
	Show( OwnerID() , RoomID )
end
------------------------------------------------------------------------------------------------------------------------
function LuaS_201106_0() --��w�p���H

	ClearBorder( OwnerID() );
	AddBorderPage( OwnerID(), GetQuestDetail( 420269, 1  ) );

	ShowBorder( OwnerID(), 420269, GetObjNameByGUID(GetUseItemGUID(OwnerID())), "ScriptBorder_Texture_Paper" );	

end
------------------------------------------------------------------------------------------------------------------------
function LuaI_420268() --�]�w�d��@���ӧG�m
	SetPlot( OwnerID() , "range" , "LuaQ_420268_ControlCenter" , 500 )
end
------------------------------------------------------------------------------------------------------------------------
function LuaQ_420268_SetUP()
	SetPlot( TargetID() , "range" , "" , 0 ) --�ܧK����Ĳ�o
	if CheckAcceptQuest( OwnerID(),420268 ) then
		BeginPlot( TargetID() , "LuaQ_420268_SceneControl" , 0 )
	end
end
------------------------------------------------------------------------------------------------------------------------
function LuaQ_420268_SceneControl() --�G�m����
	
	Local WindSpirit = LuaFunc_SearchNPCbyOrgID( OwnerID() , 110360 , 500 )
	local Message = LuaFunc_SearchNPCbyOrgID( OwnerID() , 110457 , 500 )
	local Room = ReadRoleValue( TargetID() , EM_RoleValue_RoomID )
 	--�N��Ӫ��G�m�R��
	Delobj( WindSpirit )
	Delobj( Message )
	--�G�m�s������
	local Adery = CreateObjByFlag( 110332 , 580042 , 0 , 1 )
	local Herlong = CreatObjByFlag( 110147 , 580042, 1 , 1 )
	local Ser1 = CreateObjByFlag( 100204 , 580042 , 2 , 1 ) --�N100257
	local Ser2 = CreateObjByFlag( 100204 , 580042 , 3 , 1 ) --�N100257
	SetRoleCamp( Ser1 , "NPC" )
	SetRoleCamp( Ser2 , "NPC" )
	AddToPartition( Adery , Room )
	AddToPartition( Herlong , Room )
	AddToPartition( Ser1, Room )
	AddToPartition( Ser2 , Room )
	SetPlot( Adery , "touch" , "LuaFunc_Obj_Nothing" , 0 )
	SetPlot( Herlong , "touch" , "LuaFunc_Obj_Nothing" , 0 )
	SetPlot( Ser1 , "touch" , "LuaFunc_Obj_Nothing" , 0 )
	SetPlot( Ser2 , "touch" , "LuaFunc_Obj_Nothing" , 0 )
	--�]Ĳ�I�i�}�@��
	SetPlot( Herlong , "range" , "LuaQ_420268_Step1" , 100 )
	WriteRoleValue( Herlong , EM_RoleValue_PID , 0 )

end
-----------------------------------------------------------------------------------------------------------------------
function LuaQ_420268_Step1()
	
	CastSpell( OwnerID() , OwnerID() , 490408 ) --���Ҧ��H�i�J�L�k���ʪ����A
	if ReadRoleValue( TargetID() , EM_RoleValue_PID ) == 0 then
		BeginPlot( TargetID() , "LuaQ_420268_Step2" , 0 )	
		WriteRoleValue( TargetID(), EM_RoleValue_PID , 100 )
	end
end
-----------------------------------------------------------------------------------------------------------------------
function LuaQ_420268_Step2()
	
	local Adery = LuaFunc_SearchNPCbyOrgID( OwnerID() , 110332 , 200 )
	local Ser = LuaFunc_SearchNPCbyOrgID( OwnerID() , 100204 , 200 ) --�N100257
	Say( Adery , GetString("SAY_110332_0") ) --/*�p�ߡI
	sleep( 30 )
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_SPEAK )
	Say( OwnerID() , GetString("SAY_110147_8") ) --/*���§A�������A���L�L�̤w�g���F�ڪ��]�k�����A���ξ�ߡC�ϭˬO�A�A�A���ҧ@�Ҭ����ګܬ����O�I��ı���F�ܡH
	sleep( 30 )
	PlayMotion( Adery , ruFUSION_ACTORSTATE_CAST_BEGIN )
	Say( Adery , GetString("SAY_110332_1") ) --/*�]�k�@�K�K
	sleep( 5 )
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_CAST_INSTANT )
	CastSpell( Adery , OwnerID() ,490247 ) --���w�p�I��k�N
	sleep( 30 )
	PlayMotion( Adery , ruFUSION_ACTORSTATE_DYING ) --��w�p�ˤU
	Say( OwnerID() , GetString("SAY_110147_9") ) --/*��I�������ä�I
	MoveToFlagEnabled( OwnerID() , false )
	WriteRoleValue( OwnerID() , EM_RoleValue_IsWalk , 1 )
	LuaFunc_MoveToFlag( OwnerID(), 580042 , 0 ,0 )
	FaceObj( OwnerID() , Adery )
	sleep( 30 )
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_CRAFTING_BEGIN ) --�ȥN�ۤU���ʧ@
	sleep( 30 )
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_CRAFTING_END ) --�ȥN���_���ʧ@
	sleep( 30 )
	FaceObj( OwnerID() , Ser[0] )
	sleep( 50 )
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_SPEAK )
	Say( OwnerID() , GetString("SAY_110147_10") ) --/*��o�ӲŤ�L�a��������ݥ浹�Ժ��d���q��C
	sleep( 20 )
	PlayMotion( Ser[0] , ruFUSION_ACTORSTATE_EMOTE_SALUTE )
	sleep( 30 )
	BeginPlot( Ser[0] ,"LuaQ_420268_GoAway" , 0 )
	BeginPlot( Ser[1] ,"LuaQ_420268_GoAway" , 0 )
	if CheckID( TargetID() )  then
		FaceObj( OwnerID() , TargetID() )
		sleep( 50 )
	end
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_SPEAK )
	Say( OwnerID() , GetString("SAY_110147_11") ) --/*�i�D�A�̤@�Ӧn�����A�^���̡C
	sleep(30)
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_SPEAK )
	Say( OwnerID() , GetString("SAY_110147_12") ) --/*�o�O�̫�@�ӲŤ�L�A�ӥB�ڤw�g���A�̦b�ߩ��ǳƤF�@�����b�C
	sleep(30)
	SetPlot( OwnerID() , "range" , "" , 100 ) --�������s���W���d��@���A����i�Ӫ����|�I��
	local Player = SearchRangePlayer( OwnerID() , 500 )
	local i = 0
	while 1 do
		if Player[i] == -1 then
			break
		end
		CancelBuff( Player[i], 500828 ) --�Ѱ����a��BUFF�A�ݧ@�Ω���ϰ�
		CastSpell( Player[i] ,Player[i] , 490273)  --�ȥN�����FBUFF
		i = i + 1
 	end
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_HURT_NORMAL )
	Say( OwnerID() , GetString("SAY_110147_13") ) --/*����H�˸m���ĤF�ܡH
	SetPlot( OwnerID() , "dead" , "LuaQ_420268_Dead" , 0 )
	SetRoleCamp( OwnerID() , "Monster" )
end
----------------------------------------------------------------------------------------------------------------------	
function LuaQ_420268_GoAway()
	LuaFunc_MoveToFlag( OwnerID(), 580042 , 4 ,0 )	
	DelObj( OwnerID() )
end
----------------------------------------------------------------------------------------------------------------------
function LuaQ_420268_Dead()
	BeginPlot( OwnerID() , "LuaQ_420268_Step3" , 0 )
	SetRoleCamp( OwnerID() , "NPC" )
	SetFlag( TargetID() , 540263 , 1 ) --�n�]�w������
	return false
end
----------------------------------------------------------------------------------------------------------------------
function LuaQ_420268_Step3()
	local Adery = LuaFunc_SearchNPCbyOrgID( OwnerID() , 110332 , 200 )
	Local WindSpirit = CreateObjByFlag( 110360 , 580042 , 5 , 1)
	local Room = ReadRoleValue( OwnerID() , EM_RoleValue_RoomID )
	AddToPartition( WidSpirit , Room )

	Say( OwnerID() , GetString("SAY_110147_14") ) --/*�u�V�|�I���M�S�`�N�ɶ��w�g��F�A�������F�k�F�X�ӡK�K
	sleep(20)
	Say( OwnerID() , GetString("SAY_110147_15") ) --/*��F�A�P�A�̪�����U���A�ѨM�I
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_BUFF_INSTANT )
	CastSpell( OwnerID(), OwnerID(), 490102 )
	sleep( 30 )
	Hide( OwnerID() )
	sleep( 30 )
	PlayMotion( Adery , ruFUSION_ACTORSTATE_SLEEP_END )
	sleep( 30 )
	SetPlot( Adery , "touch" , "" , 0 )
end
----------------------------------------------------------------------------------------------------------------------