function LuaS_110388_0()
--�����ܤ��e--
	if ( ReadRoleValue(OwnerID(), EM_RoleValue_SkillMax_Cook  ) >= 80 )  then --�ˬd���j�v�H�W��檺��
		SetSpeakDetail( OwnerID(), GetString ( "ST_110388_5" )   );--#�����I���ڦn�n���Y��A��u�O�ǧ@�ڡI���ڤ��O�b�Y��A����A�A�ӬO�A�������żp�v����z�ڡI�ݤ���ܡH���p���K��U�N���F��I
	elseif ( ReadRoleValue( OwnerID() , EM_RoleValue_Skill_Cook ) == 60 ) then  --����60���ܭn���a�h���`�ۭn��
		SetSpeakDetail( OwnerID(), GetString ( "ST_110388_4" )   );--#��I�g�ħa�I�A���o�X�Ӫ����㨺�w�g���H�V�i���j�v�ǲ߷��ܪ����N�I���A�n���D�A�o�Ӽh�������N�S����e���F��A�A���������i���j�v�A�Ӳ{�b�o�ӥ@�ɥu�����`�ۭn���ٴݯd�F�@�ǥL�������Ӥw�C
	elseif ReadRoleValue( OwnerID() , EM_RoleValue_Skill_Cook  ) >= 40  then --���Ťj��40�h�s���a�h��t�@��NPC
		SetSpeakDetail( OwnerID(), GetString ( "ST_110388_3" )   );--#���ŤF�I�{�b�A�x����������O�w�g���J�Q���F�I�A���ӥh�V�d���}����ͽбСA�h�ǲߥL�����N�a�I
	elseif(    ReadRoleValue( OwnerID() , EM_RoleValue_Skill_Cook  ) == 20 ) then  --���ŵ���20�ɧP�_�O�_�i������
		--###�ޯ�F��i���зǮɥ[�J����###--
		if LuaFunction_CheckWorkQuest( 1 ) == true and LuaFunction_CheckLimitJob( 40 ) < 6  then
			LoadQuestOption( OwnerID() );
		else --�i�����a�ҾǤu�@�ޯ�W�L�F
			SetSpeakDetail( OwnerID(), GetString ( "ST_110388_2" )   );--#��㤣��I�A�o�ˤl�����u���I�����F�I�Ӧh��L���u�@�ޯ�F�I�o�˧A�S��k�F��󰪲`���i���ҬɡC
		end
		--################################--
	else --0~40�Ū����
		SetSpeakDetail( OwnerID(), GetString("ST_110388_0")   );--/*�Ӭ����F�I�ڪ��H�ʹN�O���F�l�D���ܪ������A�A�]�Q�P�ڤ@�_�ӦV�o���n���ؼ��ڶi�ܡH
	end

--�����ܿﶵ--
	if( ReadRoleValue ( OwnerID(), EM_RoleValue_SkillMax_Cook ) >= 40) then
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_DEGRADE_DIALOG") , "LuaS_110388_2", 0 ) --/*�ڷQ���ثe�����
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_DEGRADE_SAY"), "LuaS_DEGRADE", 0 ); --/*���󦳮ɭn���C���H
	end 

	if ( ReadRoleValue( OwnerID() , EM_RoleValue_SkillMax_Cook ) > 0) then --�p�G�|�i��
		AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SO_LEARNING_SAY") , "LuaS_LEARNING_SAY", 0 );--#�ڭn���ǲ߷s���s�y�κ���H		
	else  --�p�G���|�i��
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110388_1") , "LuaS_110388_1", 0 );	--/*�ڷQ�ǲ߲i���C
	end

--�`�A��ܿﶵ--
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_FORMULA_STORE") , "Lua_110388_RecipeList_Touch", 0 )  --/*�ڷQ�ݬݧA�檺�t��C--�����|���H�]��ݬݯవ����F��	
	AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SO_LIVING_SAY") , "LuaS_LIVING_SAY", 0 );--#����O�ͬ��ޯ�H


end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110388_1()

	SetSpeakDetail( OwnerID(), GetString("ST_110388_1")   );
	--/*�i���O�a���H�̬��O���޳N�A�{�b�N���ڭ̤@�_�i�J�i�����@�ɧa�I
	--/*���}�t�ΦC�����u�ͬ��ޯ�v��ܲi���A�A�N�i�H�ݨ�A�Ҧ��i�H���������β����C�����䦳�i������A�åB���Ƴ��ǳƦn���ɭԡA�N�i�H�}�l�i���F�C
	--/*�A�N���έ��Ƿ|���򥻲i���ոլݧa�I
	
	AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SO_IKNOW") , "LuaS_110388_3", 0 );--

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110388_2()

	SetSpeakDetail( OwnerID(), GetString("ST_DEGRADE_WARN" )  );
	--/*�ڥ��������A�A�@�����ثe�����A�A�N���h�Ӹ�����o�����šA�A�T�w�n���ܡH
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_YES"), "LuaS_DEGRADE_COOK", 0 ); --/*�T�w�C
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO"), "LuaS_110388_0", 0 ); --/*�ڦA�Ҽ{�ݬݡC

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110388_3()

	CloseSpeak( OwnerID())
	Beginplot( OwnerID() ,"LuaFunc_COOK_Dialog", 0 )

end
--------------------------------------------------------------------------------------------------------------------------