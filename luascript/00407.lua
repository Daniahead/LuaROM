function LuaS_GetWarrior_0()

	LoadQuestOption( OwnerID() )

	if ( CheckFlag( OwnerID() , 540804 ) == false ) then
		local job = ReadRoleValue( OwnerID() , EM_RoleValue_VOC )	-- �p�G������A�@�}�l�N�ӸѪ���
		if ( job == 1 ) then
			SetFlag( OwnerID() , 540811 , 1 )	-- �s��¾�~��Ԥh
		end
		SetFlag( OwnerID() , 540804 , 1 )	-- �s��¾�~�w��

	end

	if ( CheckFlag( OwnerID() , 540820 ) == false ) then
		NoGiveCrystal()	-- �ѨM������Ť�����ҩ�
	end

	if ReadRoleValue( OwnerID() , EM_RoleValue_VOCLV_Warrior ) == 0 then -- �ˬd����
		if ReadRoleValue( OwnerID() , EM_RoleValue_LV) >= 10 or CheckFlag(OwnerID() , 540820 ) == true then
			AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETWARRIOR_1"), "LuaS_GetWarrior_1", 0 )	--/*�боɧھԤh���ޥ�
		else
			AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_LVLIMIT") , "LuaS_GetJob_EXIT", 0 );	
		end
	end

	local NPC = ReadRoleValue( TargetID() , EM_RoleValue_OrgID)
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_SPEAK") , "LuaS_"..NPC.."_0", 0 );

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetWarrior_1()

	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then	-- �Ť���������ҩ�
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEM") )	-- �A�n�ϥβŤ���������ҩ��Ө��o�o��¾�~�ܡH
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetWarrior_3", 0 )	--/*�T�w 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GetWarrior_0", 0 )	--/*�ڦA�Ҽ{�ݬ�
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETVOCMASSAGE") )	--/*��|���Ѫ��V�m���O�K�O���A�ݭn�I�X 10 ���Ť崹��A�A�T�w�n�����V�m�ܡH
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetWarrior_2", 0 )	--/*�T�w 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GetWarrior_0", 0 )	--/*�ڦA�Ҽ{�ݬ�
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetWarrior_2()

	local Job_Num = JobCount()
	if  Job_Num then
		SetSpeakDetail( OwnerID(), GetString("ST_GETWARRIOR_1") )
		--/*�ܦn�A�{�b�A�w�g�x���Ԥh���򥻧ޥ��F�I���U�ӴN�ݧA�ۤv�b��Ԥ��������F�C�o�i�ǰe���b�e�A�A�A�i�H�ϥΥ��^��}���E���A�q���̭��s�i��ۤv�C
		DelBodyItem( OwnerID() , 201211 , 10 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 1 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)	--�����n���~540820�u���o¾�~�v�A�}�ҩ�¾�~�޲z��������
	else
		SetSpeakDetail( OwnerID(), GetString("SC_GETJOBERROR") )	--�藍�_�A�ثe�A�w�F�i���o¾�~�ƪ��W���A�ҥH�L�k���o�s��¾�~�I�I
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetWarrior_3()
	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then
		SetSpeakDetail( OwnerID(), GetString("ST_GETWARRIOR_1") )
		--/*�ܦn�A�{�b�A�w�g�x���Ԥh���򥻧ޥ��F�I���U�ӴN�ݧA�ۤv�b��Ԥ��������F�C�o�i�ǰe���b�e�A�A�A�i�H�ϥΥ��^��}���E���A�q���̭��s�i��ۤv�C
		DelBodyItem( OwnerID() , 201467 , 1 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 1 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)	--�����n���~540820�u���o¾�~�v�A�}�ҩ�¾�~�޲z��������
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEMERROR") )	-- �ܿ�ѡA�A���W���G�S���Ť�����������ҩ��A�o�˧ڵL�k���A���o�o��¾�~�C
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetRanger_0()

	LoadQuestOption( OwnerID() )

	if ( CheckFlag( OwnerID() , 540804 ) == false ) then
		local job = ReadRoleValue( OwnerID() , EM_RoleValue_VOC )	-- �p�G������A�@�}�l�N�ӸѪ���
		if ( job == 2 ) then
			SetFlag( OwnerID() , 540812 , 1 )	-- �s��¾�~��C�L
		end
		SetFlag( OwnerID() , 540804 , 1 )	-- �s��¾�~�w��
	end

	if ( CheckFlag( OwnerID() , 540820 ) == false ) then
		NoGiveCrystal()	-- �ѨM������Ť�����ҩ�
	end

	if ReadRoleValue( OwnerID() , EM_RoleValue_VOCLV_Ranger) == 0 then -- �ˬd����
		if ReadRoleValue( OwnerID() , EM_RoleValue_LV) >= 10 or CheckFlag(OwnerID() , 540820 ) == true then
			AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETRANGER_1"), "LuaS_GetRanger_1", 0 )	--/*�боɧڹC�L���ޥ�
		else
			AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_LVLIMIT") , "LuaS_GetJob_EXIT", 0 );	
		end
	end

	local NPC = ReadRoleValue( TargetID() , EM_RoleValue_OrgID)
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_SPEAK") , "LuaS_"..NPC.."_0", 0 );	

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetRanger_1()

	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then	-- �Ť���������ҩ�
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEM") )	-- �A�n�ϥβŤ���������ҩ��Ө��o�o��¾�~�ܡH
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetRanger_3", 0 )	--/*�T�w 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GetRanger_0", 0 )	--/*�ڦA�Ҽ{�ݬ�
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETVOCMASSAGE") )	--/*��M�i�H�A���L��|���Ѫ��V�m���O�K�O���A�ݭn�I�X 10 ���Ť崹��A�A�T�w�n�����V�m�ܡH
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetRanger_2", 0 )	--/*�T�w 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GetRanger_0", 0 )	--/*�ڦA�Ҽ{�ݬ�
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetRanger_2()

	local Job_Num = JobCount()
	if  Job_Num then
		SetSpeakDetail( OwnerID(), GetString("ST_GETRANGER_1") )
		--/*���M�A�{�b�Ƿ|�F�C�L���ޥ��A���٦���h�ݭn�A�˨��h����~��⮩���g��A�[�o�a�I�o�i�ǰe���b�e�A�A�A�i�H�ϥΥ��^��}���E���A�q���̭��s�i��ۤv�C
		DelBodyItem( OwnerID() , 201211 , 10 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 2 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)--�����n���~540820�u���o¾�~�v�A�}�ҩ�¾�~�޲z��������
	else
		SetSpeakDetail( OwnerID(), GetString("SC_GETJOBERROR") )	--�藍�_�A�ثe�A�w�F�i���o¾�~�ƪ��W���A�ҥH�L�k���o�s��¾�~�I�I
	end


end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetRanger_3()

	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then
		SetSpeakDetail( OwnerID(), GetString("ST_GETRANGER_1") )
		--/*���M�A�{�b�Ƿ|�F�C�L���ޥ��A���٦���h�ݭn�A�˨��h����~��⮩���g��A�[�o�a�I�o�i�ǰe���b�e�A�A�A�i�H�ϥΥ��^��}���E���A�q���̭��s�i��ۤv�C
		DelBodyItem( OwnerID() , 201467 , 1 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 2 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)--�����n���~540820�u���o¾�~�v�A�}�ҩ�¾�~�޲z��������
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEMERROR") )	-- �ܿ�ѡA�A���W���G�S���Ť�����������ҩ��A�o�˧ڵL�k���A���o�o��¾�~�C
	end

end
