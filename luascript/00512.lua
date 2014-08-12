function LuaS_GetPriest_0()

	LoadQuestOption( OwnerID() )

	if ( CheckFlag( OwnerID() , 540804 ) == false ) then
		local job = ReadRoleValue( OwnerID() , EM_RoleValue_VOC )	-- �p�G������A�@�}�l�N�ӸѪ���
		if ( job == 5 ) then
			SetFlag( OwnerID() , 540815 , 1 )	-- �s��¾�~�ﲽ�q
		end
		SetFlag( OwnerID() , 540804 , 1 )	-- �s��¾�~�w��
	end

	if ( CheckFlag( OwnerID() , 540820 ) == false ) then
		NoGiveCrystal()	-- �ѨM������Ť�����ҩ�
	end

	if ReadRoleValue( OwnerID() , EM_RoleValue_VOCLV_Priest ) == 0 then -- �ˬd����
		if ReadRoleValue( OwnerID() , EM_RoleValue_LV) >= 10 or CheckFlag(OwnerID() , 540820 ) == true then
			AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETPRIEST_1"), "LuaS_GetPriest_1", 0 )	--/*�боɧڲ��q���ޥ�
		else
			AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_LVLIMIT") , "LuaS_GetJob_EXIT", 0 );	
		end
	end

	local NPC = ReadRoleValue( TargetID() , EM_RoleValue_OrgID)
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_SPEAK") , "LuaS_"..NPC.."_0", 0 );
	
end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetPriest_1()

	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then	-- �Ť���������ҩ�
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEM") )	-- �A�n�ϥβŤ���������ҩ��Ө��o�o��¾�~�ܡH
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetPriest_3", 0 )		--/*�T�w 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GetPriest_0", 0 )	--/*�ڦA�Ҽ{�ݬ�
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETVOCMASSAGE") )	--/*��M�i�H�A���L��|���Ѫ��V�m���O�K�O���A�ݭn�I�X 10 ���Ť崹��A�A�T�w�n�����V�m�ܡH
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetPriest_2", 0 )		--/*�T�w 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GetPriest_0", 0 )	--/*�ڦA�Ҽ{�ݬ�
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetPriest_2()

	local Job_Num = JobCount()
	if  Job_Num then
		SetSpeakDetail( OwnerID(), GetString("ST_GETPRIEST_1") )
		--/*�ժܪ��иq�ݭn�ǥѹ�����|�A���U�ӧA�����٫ܪ��A�@�u���@���A�C�o�i�ǰe���b�e�A�A�A�i�H�ϥΥ��^��}���E���A�q���̭��s�i��ۤv�C
		DelBodyItem( OwnerID() , 201211 , 10 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 5 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)--�����n���~540820�u���o¾�~�v�A�}�ҩ�¾�~�޲z��������
	else
		SetSpeakDetail( OwnerID(), GetString("SC_GETJOBERROR") )	--�藍�_�A�ثe�A�w�F�i���o¾�~�ƪ��W���A�ҥH�L�k���o�s��¾�~�I�I
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetPriest_3()

	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then
		SetSpeakDetail( OwnerID(), GetString("ST_GETPRIEST_1") )
		--/*�ժܪ��иq�ݭn�ǥѹ�����|�A���U�ӧA�����٫ܪ��A�@�u���@���A�C�o�i�ǰe���b�e�A�A�A�i�H�ϥΥ��^��}���E���A�q���̭��s�i��ۤv�C
		DelBodyItem( OwnerID() , 201467 , 1 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 5 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)--�����n���~540820�u���o¾�~�v�A�}�ҩ�¾�~�޲z��������
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEMERROR") )	-- �ܿ�ѡA�A���W���G�S���Ť�����������ҩ��A�o�˧ڵL�k���A���o�o��¾�~�C
	end

end
--------------------------------------------------------------------------------------------------------------------------

function LuaS_GetKnight_0()

	LoadQuestOption( OwnerID() )

	if ( CheckFlag( OwnerID() , 540804 ) == false ) then
		local job = ReadRoleValue( OwnerID() , EM_RoleValue_VOC )	-- �p�G������A�@�}�l�N�ӸѪ���
		if ( job == 6 ) then
			SetFlag( OwnerID() , 540816 , 1 )	-- �s��¾�~���M�h
		end
		SetFlag( OwnerID() , 540804 , 1 )	-- �s��¾�~�w��
	end

	if ( CheckFlag( OwnerID() , 540820 ) == false ) then
		NoGiveCrystal()	-- �ѨM������Ť�����ҩ�
	end

	if ReadRoleValue( OwnerID() , EM_RoleValue_VOCLV_Knight ) == 0 then -- �ˬd����
		if ReadRoleValue( OwnerID() , EM_RoleValue_LV) >= 10 or CheckFlag(OwnerID() , 540820 ) == true then
			AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETKNIGHT_1"), "LuaS_GetKnight_1", 0 )	--/*�боɧ��M�h���ޥ�
		else
			AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_LVLIMIT") , "LuaS_GetJob_EXIT", 0 );	
		end
	end

	local NPC = ReadRoleValue( TargetID() , EM_RoleValue_OrgID)
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_SPEAK") , "LuaS_"..NPC.."_0", 0 );

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetKnight_1()

	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then	-- �Ť���������ҩ�
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEM") )	-- �A�n�ϥβŤ���������ҩ��Ө��o�o��¾�~�ܡH
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetKnight_3", 0 )	--/*�T�w 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GetKnight_0", 0 )	--/*�ڦA�Ҽ{�ݬ�
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETVOCMASSAGE") )	--/*��M�i�H�A���L��|���Ѫ��V�m���O�K�O���A�ݭn�I�X 10 ���Ť崹��A�A�T�w�n�����V�m�ܡH
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetKnight_2", 0 )	--/*�T�w 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GetKnight_0", 0 )	--/*�ڦA�Ҽ{�ݬ�
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetKnight_2()

	local Job_Num = JobCount()
	if  Job_Num then
		SetSpeakDetail( OwnerID(), GetString("ST_GETKNIGHT_1") )
		--/*�{��A�O�o�ӥ@�ɿi�m�ڭ̷N�Ӫ��u��A�Ƿ|�M�h��¦���A�A�ӬO�D�Բ{������ۤv��i�@�B���ɭԤF�C�o�i�ǰe���b�e�A�A�A�i�H�ϥΥ��^��}���E���A�q���̭��s�i��ۤv�C
		DelBodyItem( OwnerID() , 201211 , 10 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 6 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)--�����n���~540820�u���o¾�~�v�A�}�ҩ�¾�~�޲z��������
	else
		SetSpeakDetail( OwnerID(), GetString("SC_GETJOBERROR") )	--�藍�_�A�ثe�A�w�F�i���o¾�~�ƪ��W���A�ҥH�L�k���o�s��¾�~�I�I
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetKnight_3()

	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then
		SetSpeakDetail( OwnerID(), GetString("ST_GETKNIGHT_1") )
		--/*�{��A�O�o�ӥ@�ɿi�m�ڭ̷N�Ӫ��u��A�Ƿ|�M�h��¦���A�A�ӬO�D�Բ{������ۤv��i�@�B���ɭԤF�C�o�i�ǰe���b�e�A�A�A�i�H�ϥΥ��^��}���E���A�q���̭��s�i��ۤv�C
		DelBodyItem( OwnerID() , 201467 , 1 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 6 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)--�����n���~540820�u���o¾�~�v�A�}�ҩ�¾�~�޲z��������
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEMERROR") )	-- �ܿ�ѡA�A���W���G�S���Ť�����������ҩ��A�o�˧ڵL�k���A���o�o��¾�~�C
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetJob_EXIT()
	CloseSpeak( OwnerID() )
end