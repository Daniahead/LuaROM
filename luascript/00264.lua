function LuaS_110147_0()

	if CountBodyItem( OwnerID(), 200728 ) > 0 and CountBodyItem( OwnerID(), 200729 ) > 0  then  
		SetSpeakDetail( OwnerID(), GetString("ST_110147_0")   );
		--/*�ڨS�ݹL�A......�A�O�֬��Ӫ��H�Ӱ����򪺡H
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110147_1") , "LuaS_110147_1", 0 ) 
		--/*��Ť��������s��
	else
		SetSpeakDetail( OwnerID(), GetString("ST_110147_8")   );
		--/*�_�I�̡A�o�@�ɤW���ܦh�Ʊ��̦n���n���D�A�]���A�ڦb���ۼ�����ĳ�A......�ֺu�I
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110147_0") , "LuaS_110147_EXIT", 0 ) 
		--/*�������
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110147_EXIT()
	CloseSpeak( OwnerID() );	--������ܵ���
end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110147_1()

	SetSpeakDetail( OwnerID(), GetString("ST_110147_1")   );
	--/*�@�I�A�N�O�h�|�����h���H�H�A���Ӫ��D���O�O�A�n������F��L�Ӫ��a�I
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110147_2") , "LuaS_110147_2", 0 )
	--/*�����s�ݲŤ�L�C

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110147_2()

	SetSpeakDetail( OwnerID(), GetString("ST_110147_2")   );
	--/*�ܦn�I���٦b�Q�p�G�h�|�����H�d�{�F�A�ڭn��򵽫�F�ݨӬO�٤F�@��·ШơA�֧�Ť�L���L�ӧa�I
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110147_3") , "LuaS_110147_3", 0 ) 
	--/*�^�ӥL�A�X��������Ť�L���Ʊ��C

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110147_3()

	SetSpeakDetail( OwnerID(), GetString("ST_110147_3")   );
	--/*�����I�o�i���u�O�j�ª��۽L�A�ӬO���j�N����ʳ���ɤ������_�͡I�ǥѳo�ǲŤ�L�A�A�[�W�u�@�̤��ߪ��]�O�A�ڭ̥i�H����ʦL�A���s�}�ҵ�ɤ����o�I
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110147_4") , "LuaS_110147_4", 0 ) 
	--/*�Q��k�M�X�p��βŤ�L�}�ҵ�ɤ�������k

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110147_4()

	SetSpeakDetail( OwnerID(), GetString("ST_110147_4")   );
	--/*��I�h�|�������U���o��L���ܡH��M���i��u�a�o�ӲŤ�L�I�ڭ�褣�O���F�n�Ρu�o�ǡv�Ť�L�H�Φu�@�̤��ߪ��]�O�ܡH�Ť�L�O�c���@�ӥj�Ѹ˸m���s��A�Ӧu�@�̤��ߴN�O���˸m�B�@���]�O���F�L�t�d�P�ڤ��Y�����o�ǲŤ�L�A�L�����U���M�s�o�ǪF�誺�I���������D�A�o�n����ڡI���ǥL���̪��i�ר���C�I
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110147_5") , "LuaS_110147_5", 0 ) 
	--/*���ۤv�O��Ӥ~�[�J���A�Q��k�M�X��L�Ť�L�M�u�@�̤��ߪ��U���C
end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110147_5()

	SetSpeakDetail( OwnerID(), GetString("ST_110147_5")   );
	--/*�Я�l���άO���i�԰���A�ڭ̴N�ѳo��Ӧa�誺�Ť�L�٨S���Ӥw�I���L�h�|�����M�o�t�~��H�A�ݨӥL�����U�l������......�ڬݥL�ڥ����ⳡ�U���h���L������F�A���I
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110147_6") , "LuaS_110147_6", 0 ) 
	--/*�l�ݦu�@�̤��ߪ��U��

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110147_6()

	SetSpeakDetail( OwnerID(), GetString("ST_110147_6")   );
	--/*��H�u�@�̤��߰ڡH��Ӧh�|���s�o�Ӥ]�S��A���ڡI�o�ˤ���A�ڭ̲�´���H�����ӭn���D�o��ơA�J��ť�n�o�I
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110147_7") , "LuaS_110147_7", 0 ) 
	--/*�\�X��ť������

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110147_7()

	SetSpeakDetail( OwnerID(), GetString("ST_110147_7")   );
	--/*�u�@�̤��߬O�ݩ�j�N�u�@�̪��O�q�A������O����´�Ҵx�������j���K�A�u�����p���y�����i�H�o����T���A�o���......
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110147_8") , "LuaS_110147_8", 0 ) 
	--/*�~���ť
end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110147_8()

	CloseSpeak( OwnerID() )
	SAY( TargetID() , GetString("SAY_110147_0") ) --/*�Ҧ��Ѥ��o���p�e����´���������Ӧb�[�J�ɳQ�i���A���D�F�ܡH���_�̡I
	BeginPlot( TargetID() , "LuaS_110147_9" , 0 )

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110147_9()

--	local PPL = SearchRangePlayer( OwnerID() , 500 )
--	local Ser = LuaFunc_SearchNPCbyOrgID( OwnerID() , 100257 , 100 , 1)	-- ���p���y�ͱq
	local RoomID = ReadRoleValue( TargetID() , EM_RoleValue_RoomID)
--	SAY( TargetID() , "RoomID="..RoomID  )	-- �ˬdRoomID 
--	for i = 0 , 35 , 1 do --��X�Ҧ����a�����
--		if PPL[i] == -1 then 
--			break
--
--		obj = Role:New( PPL [i] )
--		obj = TargetID()
		if CheckAcceptQuest( TargetID() , 420555 ) == true and CheckFlag( TargetID() , 540204 ) == false then
		--���Ҧ����a���i�ѧ�����
			DelBodyItem( TargetID() , 200728 , 1 )		-- �Ť���
			DelBodyItem( TargetID() , 200729 , 1 )		-- ���Ť�L
			SetFlag( TargetID() , 540204 , 1 )
		end
--		Castspell( TargetID() , OwnerID() ,123456 ) --�I�i�ت��N�A�ĪG����3��
--	end
	sleep( 10 )

--	Hide( OwnerID() )
--	MoveToFlagEnabled( OwnerID(), false );	
--	LuaFunc_MoveToFlag( OwnerID(), 580101 , 1 ,0 ) --���ʨ찪�B
--	SetPosByFlag( OwnerID(), 580101 , 0 )		--���ʨ찪�B
--	Show( OwnerID() , RoomID )

	SAY( OwnerID() , GetString("SAY_110147_1") ) --/*��I�کӻ{�ۤv���q�ɶ����T�Q�A���F�F�A�i���A�̫��٬O�S�X�}��F�I
	ScriptMessage( OwnerID() , OwnerID() , 0 , GetString("EM_110147_0") , 0 ) --/*�A�o�{�Ť�L�w�g�����F�C 
	sleep( 10 )
	SAY( OwnerID() , GetString("SAY_110147_2") ) --/*�o���Ť�L�ڴN���Ȯ𪺱a���F�A���ӧ����ӿ˦۸ѨM�A�A���ڱo�h���L�Ť�L�A�Ю��ڥ������}�C
	sleep ( 10 )
	local Mob1 = CreateObjByFlag( 100258 , 580101 , 1 , 1 )
	AddToPartition( Mob1 , RoomID )
	local Mob2 = CreateObjByFlag( 100258 , 580101 , 2 , 1 )
	AddToPartition( Mob2 , RoomID )
	local Mob3 = CreateObjByFlag( 100258 , 580101 , 3 , 1 )
	AddToPartition( Mob3 , RoomID )
--	SetPosByFlag( OwnerID(), 580101 , 1 )		--���ʨ찪�B
	SAY( OwnerID() , GetString("SAY_110147_3") ) --/*�ѨM�L�̡I
	SetAttack( Mob1 , TargetID() )
	SetAttack( Mob2 , TargetID() )
	SetAttack( Mob3 , TargetID() )
	BeginPlot( Mob1 ,"LuaQ_110147_Sui",0)
	BeginPlot( Mob2 ,"LuaQ_110147_Sui",0)
	BeginPlot( Mob3 ,"LuaQ_110147_Sui",0)

--	for i = 0 , 5 , 1 do
--		if Ser[i] == -1 then 
--			break
--		end
--		SetRoleCamp( Ser[i] , "Monster")
--		SetAttack( Ser[i] ,TargetID() )
--	end

	Delobj( OwnerID() )

end
--------------------------------------------------------------------------------------------------------------------------
function LuaQ_110147_Sui()
	LuaFunc_Obj_Suicide(300)
end