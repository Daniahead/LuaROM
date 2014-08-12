function LuaS_421159_0()

	if CheckAcceptQuest( OwnerID() , 421159 ) == true and CheckFlag( OwnerID() , 541299 ) == true then
		SetSpeakDetail( OwnerID(), GetString("SC_421159_1")   ); --/*�ڪ��D�F�A�O����...�O����...�ڻ��N�O�F�C
		AddSpeakOption(  OwnerID(), TargetID( ), GetString("SC_421159_2"),  "LuaS_421159_2",  0 ); --/*�߰ݶ���
	else		
		LoadQuestOption( OwnerID() );
		if CheckAcceptQuest( OwnerID() , 421159 ) == true and CheckFlag( OwnerID() , 541299 ) == false then
			AddSpeakOption(  OwnerID(), TargetID( ), GetString("SC_421159_0"),  "LuaS_421159_1",  0 ); --/*�N�}�g���ܧi�D����
		end
	end
end

function LuaS_421159_1()
	SetSpeakDetail( OwnerID(), GetString("SC_421159_3")   );
	--/*���򤣴M�`���F��H�ڤ~�S���I����F��I�V�b�I
	--/*�A�̳o�Ƕ��`�M�h�Ϊ������I���`�M�h�κ⤰��H
	--*��@��H�h���٤��O����Ĺ�W�����H�A�u�|�b����[����ϡA�{�b�٥i�H�H�K�N�h�äH�ڡI
	if CheckAcceptQuest( OwnerID() , 421159 ) == true and CheckFlag( OwnerID() , 541296 ) == false then
		AddSpeakOption(  OwnerID(), TargetID( ), GetString("SC_421159_4"),  "LuaS_421159_3",  0 ); --/*�ΪZ�O�����ϧN�R
	end
end

function LuaS_421159_2()
	SetSpeakDetail( OwnerID(), GetString("SC_421159_5")   );
	--/*�گu���S���o�{����_�Ǫ��F��C
	--/*���L...�s���B��򩳪��d�F�V�ۤ@�Ǻ���A�ڳ̪�`�`���������Ǻ���_��...
	--/*���Ǻ������D���ګ������A���O�̭����@�Ǫ��ݥi�H���ҥX�ӡA�ڴN����`
	--/*�M�h�ΰt�������ݰ����ð_�ӡA�γo�Ǫ��ݰ����L�̭׸ɲ���...
	--/*�o�N�O�����F�I�n���B�@�ڳ������I���O�A��H�ӥ��ڤF...
	SetFlag( OwnerID() , 541296 , 1 )
end

function LuaS_421159_3()
	CloseSpeak(OwnerID())
	DisableQuest( TargetID() , true )

	BeginPlot( TargetID() , "LuaS_421159_4" , 0 )
end

function LuaS_421159_4()
	Hide( OwnerID() )
	WriteRoleValue( OwnerID() , EM_RoleValue_Pid , 10 )
	local DBID = ReadRoleValue( TargetID(), EM_RoleValue_DBID ) 
	local Otto = LuaFunc_CreateObjByObj ( 100736, OwnerID() )
	SetAttack( Otto, TargetID() )
	SetPlot( Otto , "dead" , "LuaS_421159_dead" , 40 )
	BeginPlot( Otto , "LuaS_421159_Reset" , 0 ) 
	Say( Otto , GetString("SC_421159_7") ) --/*�����ڡH�ӰڡI
	while 1 do
		if CheckID( Otto ) ~= true or ReadRoleValue( Otto , EM_RoleValue_IsNPC ) ~= 1 then
			say( Otto , "Check OK " )
			sleep(10)
			Show( OwnerID() , 0 )
			sleep(10)
			if Luafunc_Player_Alive( TargetID(),DBID,250 ) == true and ReadRoleValue( TargetID(), EM_RoleValue_IsDead) ~= 1 and CheckFlag( TargetID() , 541299 ) == true then
				Say( OwnerID() , GetString("SC_421159_6") ) --/*�O���F�I�O���F�I�ڻ��N�O�F�C
				PlayMotion( OwnerID() ,ruFUSION_ACTORSTATE_EMOTE_SURRENDER )
			end
			sleep( 50 )
			WriteRoleValue( OwnerID() , EM_RoleValue_PID , 0 )
			DisableQuest( OwnerID() , false )
			break
		end
		Sleep( 20 )
	end
end

function LuaS_421159_dead()

	if  ReadRoleValue( TargetID(), EM_RoleValue_IsDead) ~= 1 and CheckAcceptQuest( TargetID() , 421159 ) == true then 
		SetFlag( TargetID() , 541299, 1 )
	end	
	Delobj( OwnerID() )
	return false
end

function LuaS_421159_Reset()
	LuaFunc_Obj_Suicide(10)
end