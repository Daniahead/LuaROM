function LuaS_110391_0()
--�����ܤ��e--
	if( ReadRoleValue ( OwnerID(), EM_RoleValue_SkillMax_Tailor  ) > 80) then --�ˬd�W���j��80����
		SetSpeakDetail( OwnerID(), GetString ( "ST_110391_5" )   );--#�������A�O�ڪ��a���A�аݦ�����Ƨڥi�H���W�����ܡH
	elseif ( ReadRoleValue(OwnerID(), EM_RoleValue_SkillMax_Tailor   ) == 80 )then --�ˬd���j�v��檺��
		SetSpeakDetail( OwnerID(), GetString ( "ST_110391_4" )   );--#�A�n�I�S�ӧ�M�s�����_���ѤF�ܡH�ګַܼN�򹳧A�o���u�q�����_�j�v���ɳo�Ǫ��ѡC
	elseif ( ReadRoleValue( OwnerID() , EM_RoleValue_Skill_Tailor ) == 60 ) then  --����60���ܭn���a�h���`�ۭn��
		SetSpeakDetail( OwnerID(), GetString ( "ST_110391_3" )   );--#���ߡI�A�����_�޳N�w�g��ģ���F�O�I�ګܺF�\�ۤv�L�k�A���U�A��W�@�h�ӡA���L�ڻ����Ӷǻ������_�j�v�����U�A�A��Ѫ��O�ڥu���D���`�ۭn�봿�g���L�������A�S�����W����b�ܩ�p�C
	elseif ReadRoleValue( OwnerID() , EM_RoleValue_Skill_Tailor  ) < 40  then --���Ťp��40�h�s���a�h��t�@��NPC
		SetSpeakDetail( OwnerID(), GetString ( "ST_110391_2" )   );--#�A�O�Ӿǵ��_���ܡH���Τӵ۫�A�ݧA�ٮ����ߪ��A�ڪ���l�s�i�O�J���ɮv�A�A�i�H����L���̾Ǥ@�ǹ�Ϊ��޳N�A���A�N�L�������ǥ��F�A�کγ\����A���U�A��i�@�B�C
	elseif(    ReadRoleValue( OwnerID() , EM_RoleValue_Skill_Tailor  ) == 40 ) then  --���ŵ���40�ɧP�_�O�_�i������
		--###�ޯ�F��i���зǮɥ[�J����###--
		if LuaFunction_CheckWorkQuest( 2 ) == true and LuaFunction_CheckLimitJob( 60 ) < 3  then
			LoadQuestOption( OwnerID() );
		else --�i�����a�ҾǤu�@�ޯ�W�L�F
			SetSpeakDetail( OwnerID(), GetString ( "ST_110391_1" )   );--#�A�n�A�A�O�n�Ӿǵ��_���ܡH�ڡI��p�A�ڨS�`�N��A�w�g�M���L�T�ˤu�@�ޯ�F�C
		end
		--################################--
	else --40~60�Ū����
		SetSpeakDetail( OwnerID(), GetString("ST_110391_0" )  );
		--/*�A�n�A�ڬO���Ǯa�����A�t�d�޲z�o�ӫ��������_�u�K��´�A�p�G�A��o�譱������A�ڤ]�i�H�ЧA�@��²�檺�ޥ��C
	end

--�����ܿﶵ--
	if( ReadRoleValue ( OwnerID(), EM_RoleValue_SkillMax_Tailor ) >= 40) then --�֦��u�K�H�W���h�X�{�i�H����檺�ﶵ
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_DEGRADE_DIALOG") , "LuaS_110391_1", 0 ) --/*�ڷQ���ثe�����
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_DEGRADE_SAY"), "LuaS_DEGRADE", 0 ); --/*���󦳮ɭn���C���H
	end 

--�`�A��ܿﶵ--
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_FORMULA_STORE") , "Lua_110391_RecipeList_Touch", 0 )  --/*�ڷQ�ݬݧA�檺�t��C--�����|���H�]��ݬݯవ����F��	
	AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SO_LIVING_SAY") , "LuaS_LIVING_SAY", 0 );--#����O�ͬ��ޯ�H
end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110391_1()

	SetSpeakDetail( OwnerID(), GetString("ST_DEGRADE_WARN" )  );
	--/*�ڥ��������A�A�@�����ثe�����A�A�N���h�Ӹ�����o�����šA�A�T�w�n���ܡH
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_YES"), "LuaS_DEGRADE_TAILOR", 0 ); --/*�T�w�C
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO"), "LuaS_110391_0", 0 ); --/*�ڦA�Ҽ{�ݬݡC

end
--------------------------------------------------------------------------------------------------------------------------