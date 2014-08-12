function LuaS_GETROGUE_0()

	LoadQuestOption( OwnerID() )

	if ( CheckFlag( OwnerID() , 540804 ) == false ) then
		local job = ReadRoleValue( OwnerID() , EM_RoleValue_VOC )	-- �p�G������A�@�}�l�N�ӸѪ���
		if ( job == 3 ) then
			SetFlag( OwnerID() , 540813 , 1 )	-- �s��¾�~��s��
		end
		SetFlag( OwnerID() , 540804 , 1 )	-- �s��¾�~�w��
	end

	if ( CheckFlag( OwnerID() , 540820 ) == false ) then
		NoGiveCrystal()	-- �ѨM������Ť�����ҩ�
	end

	if ReadRoleValue( OwnerID() , EM_RoleValue_VOCLV_Rogue ) == 0 then -- �ˬd����
		if ReadRoleValue( OwnerID() , EM_RoleValue_LV) >= 10 or CheckFlag(OwnerID() , 540820 ) == true then
			AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETROGUE_1"), "LuaS_GetRogue_1",0 )	--/*�боɧڵs�骺�ޥ�
		else
			AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_LVLIMIT") , "LuaS_GetJob_EXIT", 0 );	
		end
	end

	local NPC = ReadRoleValue( TargetID() , EM_RoleValue_OrgID)
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_SPEAK") , "LuaS_"..NPC.."_0", 0 );

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetRogue_1()

	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then	-- �Ť���������ҩ�
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEM") )	-- �A�n�ϥβŤ���������ҩ��Ө��o�o��¾�~�ܡH
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetRogue_3", 0 )		--/*�T�w 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GETROGUE_0", 0 )	--/*�ڦA�Ҽ{�ݬ�
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETVOCMASSAGE") )	--/*��M�i�H�A���L��|���Ѫ��V�m���O�K�O���A�ݭn�I�X 30 ���Ť崹��A�A�T�w�n�����V�m�ܡH
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetRogue_2", 0 )		--/*�T�w 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GETROGUE_0", 0 )	--/*�ڦA�Ҽ{�ݬ�
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetRogue_2()

	local Job_Num = JobCount()
	if  Job_Num then
		SetSpeakDetail( OwnerID(), GetString("ST_GETROGUE_1") )
		--/*�K�I�������I�Ǫ����֪��I���U�ӧA���ӯ���ۤv����ۤv�F�a�H��H�o�i�ǰe���b�e�A�A�A�i�H�ϥΥ��^��}���E���A�q���̭��s�i��ۤv�C
		DelBodyItem( OwnerID() , 201211 , 10 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 3 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)--�����n���~540820�u���o¾�~�v�A�}�ҩ�¾�~�޲z��������
	else
		SetSpeakDetail( OwnerID(), GetString("SC_GETJOBERROR") )	--�藍�_�A�ثe�A�w�F�i���o¾�~�ƪ��W���A�ҥH�L�k���o�s��¾�~�I�I
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetRogue_3()

	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then
		SetSpeakDetail( OwnerID(), GetString("ST_GETROGUE_1") )
		--/*�K�I�������I�Ǫ����֪��I���U�ӧA���ӯ���ۤv����ۤv�F�a�H��H�o�i�ǰe���b�e�A�A�A�i�H�ϥΥ��^��}���E���A�q���̭��s�i��ۤv�C
		DelBodyItem( OwnerID() , 201467 , 1 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 3 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)--�����n���~540820�u���o¾�~�v�A�}�ҩ�¾�~�޲z��������
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEMERROR") )	-- �ܿ�ѡA�A���W���G�S���Ť�����������ҩ��A�o�˧ڵL�k���A���o�o��¾�~�C
	end

end
--------------------------------------------------------------------------------------------------------------------------

function LuaS_GetMage_0()

	LoadQuestOption( OwnerID() )

	if ( CheckFlag( OwnerID() , 540804 ) == false ) then
		local job = ReadRoleValue( OwnerID() , EM_RoleValue_VOC )	-- �p�G������A�@�}�l�N�ӸѪ���
		if ( job == 4 ) then
			SetFlag( OwnerID() , 540814 , 1 )	-- �s��¾�~��k�v
		end
		SetFlag( OwnerID() , 540804 , 1 )	-- �s��¾�~�w��
	end

	if ( CheckFlag( OwnerID() , 540820 ) == false ) then
		NoGiveCrystal()	-- �ѨM������Ť�����ҩ�
	end

	if ReadRoleValue( OwnerID() , EM_RoleValue_VOCLV_Wizard ) == 0 then -- �ˬd����
		if ReadRoleValue( OwnerID() , EM_RoleValue_LV) >= 10 or CheckFlag(OwnerID() , 540820 ) == true then
			AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETMAGE_1"), "LuaS_GetMage_1", 0 )	--/*�боɧڪk�v���ޥ�
		else
			AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_LVLIMIT") , "LuaS_GetJob_EXIT", 0 );		
		end
	end

	local NPC = ReadRoleValue( TargetID() , EM_RoleValue_OrgID)
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_SPEAK") , "LuaS_"..NPC.."_0", 0 );

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetMage_1()

	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then	-- �Ť���������ҩ�
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEM") )	-- �A�n�ϥβŤ���������ҩ��Ө��o�o��¾�~�ܡH
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetMage_3", 0 )		--/*�T�w 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GetMage_0", 0 )	--/*�ڦA�Ҽ{�ݬ�
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETVOCMASSAGE") )	--/*��M�i�H�A���L��|���Ѫ��V�m���O�K�O���A�ݭn�I�X 10 ���Ť崹��A�A�T�w�n�����V�m�ܡH
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetMage_2", 0 )		--/*�T�w 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GetMage_0", 0 )	--/*�ڦA�Ҽ{�ݬ�
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetMage_2()

	local Job_Num = JobCount()
	if  Job_Num then
		SetSpeakDetail( OwnerID(), GetString("ST_GETMAGE_1") )
		--/*�{�b�A���Ӥw�g�y�L�⮩��x���������ޥ��F�A���n���q�o���ǰݡA���F�ǲߡA�٭n��h���m�ߤ~��C�o�i�ǰe���b�e�A�A�A�i�H�ϥΥ��^��}���E���A�q���̭��s�i��ۤv�C
		DelBodyItem( OwnerID() , 201211 , 10 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 4 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)--�����n���~540820�u���o¾�~�v�A�}�ҩ�¾�~�޲z��������
	else
		SetSpeakDetail( OwnerID(), GetString("SC_GETJOBERROR") )	--�藍�_�A�ثe�A�w�F�i���o¾�~�ƪ��W���A�ҥH�L�k���o�s��¾�~�I�I
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetMage_3()

	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then
		SetSpeakDetail( OwnerID(), GetString("ST_GETMAGE_1") )
		--/*�{�b�A���Ӥw�g�y�L�⮩��x���������ޥ��F�A���n���q�o���ǰݡA���F�ǲߡA�٭n��h���m�ߤ~��C�o�i�ǰe���b�e�A�A�A�i�H�ϥΥ��^��}���E���A�q���̭��s�i��ۤv�C
		DelBodyItem( OwnerID() , 201467 , 1 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 4 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)--�����n���~540820�u���o¾�~�v�A�}�ҩ�¾�~�޲z��������
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEMERROR") )	-- �ܿ�ѡA�A���W���G�S���Ť�����������ҩ��A�o�˧ڵL�k���A���o�o��¾�~�C
	end

end


