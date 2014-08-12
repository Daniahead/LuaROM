-----------------------------------------------------------------------------------------------------------
--���`��
-----------------------------------------------------------------------------------------------------------
function LuaI_110484()

	SetPlot( OwnerID(),"range","LuaI_110484_Detail",75 );

end
-----------------------------------------------------------------------------------------------------------
function LuaI_110484_Detail()
	if CheckFlag( OwnerID()  , 540794 ) == false then --�ˬd�O�_���Y�ΡG�u�s��_�I�̡v
		DialogCreate( OwnerID() , EM_LuaDialogType_YesNo  , GetString("ST_NEWHAND"));
		DialogSelectStr( OwnerID() , GetString("SO_NEWHANDYES") );
		DialogSelectStr( OwnerID() , GetString("SO_NEWHANDNO") );
--		DialogSelectStr( OwnerID() , "Yes" );
--		DialogSelectStr( OwnerID() , "NO");


		if( DialogSendOpen( OwnerID() ) == false ) then 
			ScriptMessage( OwnerID(),OwnerID(),1,GetString("SYS_FIXEQ_DATA_ERROR"),0)	
			--��ưe�X�����D
			return;
		end
		local SelectID = Hsiang_GetDialogResoult( OwnerID() );
		DialogClose( OwnerID() )
--		SAY(TargetID(),SelectID);
		if SelectID == 0  then
			ScriptMessage( OwnerID(), OwnerID(), 2, GetString("MSG_GET_NEWADV") , C_SYSTEM )	--�e�������T���G���o�Y�ΡG�u�s��_�I�̡v
			ScriptMessage( OwnerID(), OwnerID(), 0, GetString("MSG_GET_NEWADV") , 0 )		--�t�ΰT���G���o�Y�ΡG�u�s��_�I�̡v
			GiveBodyItem ( OwnerID() , 530042 , 1 )	-- �Y�ΡG�u�s��_�I�̡v
--			SAY(TargetID(),"give 540794");
			SetFlag( OwnerID()  , 540794 , 1 );
--			SAY(TargetID(),"give 540851");
			SetFlag( OwnerID()  , 540851 , 1 );
			sleep(10)
			ChangeZone( OwnerID() , 102 , -1,3230, 7, 3704, 270);--�Ǩ�102
			sleep(5)
			return
		else
			Tell ( OwnerID() , TargetID(),  GetString("ST_110484_6") );	--���ӤF�ڡK�s��_�I�̴N�O�o��X�z.........�C
			--SAY( TargetID() ,  GetString("ST_110484_6") );
			GiveBodyItem ( OwnerID() , 530042 , 1 )	-- �Y�ΡG�u�s��_�I�̡v
			ScriptMessage( OwnerID(), OwnerID(), 2, GetString("MSG_GET_NEWADV") , C_SYSTEM )	--�e�������T���G���o�Y�ΡG�u�s��_�I�̡v
			ScriptMessage( OwnerID(), OwnerID(), 0, GetString("MSG_GET_NEWADV") , 0 )		--�t�ΰT���G���o�Y�ΡG�u�s��_�I�̡v
			SetFlag( OwnerID()  , 540794 , 1 );
		end
	else
		if CheckAcceptQuest( OwnerID(), 420700) == true then
			Tell ( OwnerID() ,  TargetID(),  GetString("ST_110484_5") );	--�֩��}���E���h�a�I
			--SAY(TargetID(),  GetString("ST_110484_5") );
		elseif CheckcompleteQuest( OwnerID(), 420700) ==true then
		else
			Tell ( OwnerID() , TargetID(),  GetString("ST_110484_6") );	--���ӤF�ڡK�s��_�I�̴N�O�o��X�z.........�C
		end
	end
end
-----------------------------------------------------------------------------------------------------------
function LuaS_110484()

	LoadQuestOption( OwnerID() );  --���J���ȼҪO

	if CheckAcceptQuest( OwnerID(), 420700 ) == true then
		AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_110484_NEWER"),   "LuaS_110484_Detail_NEWer",    0 );	--�W�[�@�ӿﶵ�A�s��_�I��
		AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_110484_ES"),             "LuaS_110484_Detail_EastSouth",0 );	--�W�[�@�ӿﶵ�A�F�n��
		AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_110484_WALK"),      "LuaS_110484_Detail_Walk",       0 );	--�W�[�@�ӿﶵ�A����
		AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_110484_MISSION"), "LuaS_110484_Detail_Mission", 0 );	--�W�[�@�ӿﶵ�A����
	elseif CheckcompleteQuest( OwnerID(), 420700) ==true then
		AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_110484_NEWER"),   "LuaS_110484_Detail_NEWer",    0 );	--�W�[�@�ӿﶵ�A�s��_�I��
		AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_110484_ES"),             "LuaS_110484_Detail_EastSouth",0 );	--�W�[�@�ӿﶵ�A�F�n��
		AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_110484_WALK"),      "LuaS_110484_Detail_Walk",       0 );	--�W�[�@�ӿﶵ�A����
		AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_110484_MISSION"), "LuaS_110484_Detail_Mission", 0 );	--�W�[�@�ӿﶵ�A����
	end

end
-----------------------------------------------------------------------------------------------------------
function LuaS_110484_Detail_NEWer()

	SetSpeakDetail( OwnerID(), GetString("ST_110484_1") );
	AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_LOOKOTHER"),     "LuaS_110484",      0 );	--�W�[�@�ӿﶵ�A�ݬݨ�L����

end
-----------------------------------------------------------------------------------------------------------

function LuaS_110484_Detail_EastSouth()

	SetSpeakDetail( OwnerID(), GetString("ST_110484_2") );
	AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_LOOKOTHER"),     "LuaS_110484",      0 );	--�W�[�@�ӿﶵ�A�ݬݨ�L����

end
-----------------------------------------------------------------------------------------------------------
function LuaS_110484_Detail_Walk()

	SetSpeakDetail( OwnerID(), GetString("ST_110484_3") );
	AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_LOOKOTHER"),     "LuaS_110484",      0 );	--�W�[�@�ӿﶵ�A�ݬݨ�L����

end
-----------------------------------------------------------------------------------------------------------
function LuaS_110484_Detail_Mission()

	SetSpeakDetail( OwnerID(), GetString("ST_110484_4") );
	AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_LOOKOTHER"),     "LuaS_110484",      0 );	--�W�[�@�ӿﶵ�A�ݬݨ�L����

end
-----------------------------------------------------------------------------------------------------------
function LuaS_110484_Exit()

	CloseSpeak( OwnerID() );	--������ܵ���

end
-----------------------------------------------------------------------------------------------------------



