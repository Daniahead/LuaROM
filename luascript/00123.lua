function LuaS_110017_0()
--�����ܤ��e--
	if ( ReadRoleValue(OwnerID(), EM_RoleValue_SkillMax_Mining ) >= 80 )  then --�ˬd���j�v�H�W��檺��
		SetSpeakDetail( OwnerID(), GetString ( "ST_110017_5" )   );--#�F���_�I�A�����N�w�g�W�L�ڤF�I
	elseif ( ReadRoleValue( OwnerID() , EM_RoleValue_Skill_Mining ) == 60 ) then  --����60���ܭn���a�h���`�ۭn��
		SetSpeakDetail( OwnerID(), GetString ( "ST_110017_4" )   );--#�p�G�A�Q���󰪹Ҭ��ڶi�A�N�h�M��ǻ������q���j�v�a�Iť�����`�ۭn�릳�L�������C
	elseif ReadRoleValue( OwnerID() , EM_RoleValue_Skill_Mining ) >= 40  then --���Ťj��40�h�s���a�h��t�@��NPC
		SetSpeakDetail( OwnerID(), GetString ( "ST_110017_3" )   );--#�����I�ڪ��{�רS��k�A�ЧA����F�A�A�ӥh��M�~�ɮv�ڮ��D�}��ǲߤF�a�I
	elseif(    ReadRoleValue( OwnerID() , EM_RoleValue_Skill_Mining  ) == 20 ) then  --���ŵ���20�ɧP�_�O�_�i������
		--###�ޯ�F��i���зǮɥ[�J����###--
		if LuaFunction_CheckWorkQuest( 1 ) == true and LuaFunction_CheckLimitJob( 40 ) < 6  then
			LoadQuestOption( OwnerID() );
		else --�i�����a�ҾǤu�@�ޯ�W�L�F����
			SetSpeakDetail( OwnerID(), GetString ( "ST_110017_2" )   );--#�A���ޯ�w�g���媺�ܤ����աI�i���A�A�ǤF�Ӧh��L���ޯ�A�o�˧ڴN�S��k�Ǳ§A�u�K�����Z�o�I
		end
		--################################--
	else --0~40�Ū����
		SetSpeakDetail( OwnerID(), GetString("ST_110017_0")   );--/*�ڴN�O�q�u�u�Y�ڸ��S�A������q���Ʊ����ްݧڡI�ڤ��@�w���o�X�ӴN�O�F�A�����I
	end

--�����ܿﶵ--
	if( ReadRoleValue ( OwnerID(), EM_RoleValue_SkillMax_Mining ) >= 40) then --�֦��u�K�H�W���h�X�{�i�H����檺�ﶵ
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_DEGRADE_DIALOG") , "LuaS_110017_2", 0 ) --/*�ڷQ���ثe�����
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_DEGRADE_SAY"), "LuaS_DEGRADE", 0 ); --/*���󦳮ɭn���C���H
	end 

	if ( CheckFlag( OwnerID(), 540269 ) == true ) then --�p�G�|���q
		AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SO_GATHER_SAY") , "LuaS_GATHER_SAY", 0 );--#�ڭn�p��~��ֳt�a���Ķ��ؼСH
		AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SO_AFTER_GATHER_MINE") , "LuaS_AFTER_GATHER_MINE", 0 );--#�Чi�D��������媺�Ʊ��C			
	else  --�p�G���|���q
		AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SO_110017_1") , "LuaS_110017_1", 0 );--#�ڷQ�ǲ߫��q�C
	end

--�`�A��ܿﶵ--
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_FORMULA_STORE") , "Lua_110017_RecipeList_Touch", 0 )  --/*�ڷQ�ݬݧA�檺�t��C--�����|���H�]��ݬݯవ����F��	
	AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SO_LIVING_SAY") , "LuaS_LIVING_SAY", 0 );--#����O�ͬ��ޯ�H

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110017_1()

	SetSpeakDetail( OwnerID(), GetString("ST_110017_1")   );--/*�A�Q�ǫ��q�ڡI�ڪ��T�i�H�ЧA�@�I��¦���A�����q�ܨ��W��I
								--/*�����A�A�������@�Ӥu��A�ڥ��e�A�@�ӧa�I
								--/*�A�n�N�o�ӡu���W���Q�r��v�˳ư_�ӡA�M����q���I������N�i�H���q�F�C
								--/*�ڴN�ЧA�o�ǡA���U�ӧA�N��@���q���ںt�m�a�I
	AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SO_IKNOW") , "LuaS_110017_3", 0 );--

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110017_2()

	SetSpeakDetail( OwnerID(),GetString( "ST_DEGRADE_WARN" )  );
	--/*�ڥ��������A�A�@�����ثe�����A�A�N���h�Ӹ�����o�����šA�A�T�w�n���ܡH
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_YES"), "LuaS_DEGRADE_MINING", 0 ); --/*�T�w�C
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO"), "LuaS_110017_0", 0 ); --/*�ڦA�Ҽ{�ݬݡC

end

--------------------------------------------------------------------------------------------------------------------------
function LuaS_110017_3()

	CloseSpeak( OwnerID())
	Beginplot( OwnerID() ,"LuaFunc_MINING_Dialog", 0 )

end

--------------------------------------------------------------------------------------------------------------------------