function LuaS_111256_0()
	local Area = LuaS_111256_ZoneID( ReadRoleValue( OwnerID() , EM_RoleValue_ZoneID ) )
	local Flag = {[1] = 541313 ,[2] = 541314 ,[4] = 541315 ,[5] = 541316 ,[6] = 541317 ,[10] = 541318 ,[11] = 541319 }
	if Area > 99 or Area < 1 or Area == 3 then
		LoadQuestOption( OwnerID() )		
	else
		SetSpeakDetail( OwnerID() , GetString("SC_111256_0") )--�I��p�l�A�A�Q������ֻ��F�ڡA�i�O�ܨS�@�ߪ��C
		if CheckFlag( OwnerID() , Flag[Area] ) == false then
			SetFlag( OwnerID() , Flag[Area] , 1)
			ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_111256_OT"), C_SYSTEM );
		end
		if CheckFlag( OwnerID()  , 540001 ) == false then
			SetFlag( OwnerID()  , 540001 , 1 )
		end
		AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SC_111256_Q") , "LuaS_111256_Q", 0 ); --�ǰe�O����H
		AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SC_111256_S") , "LuaS_111256_S", 0 ); --�ڭn�N�^�{�N�a�I�n�O��
		LuaS_Area_List(Area,Flag)
	end
end

function LuaS_111256_Q()

	SetSpeakDetail( OwnerID(), GetString("SC_111256_QD"));
	--�A�Q���D�Ѥl�O��ԣ���H
	--�I��ڰڡA�O��O�J��s�Ϊ��ǰe�v�F�W�r...�w�g�����n�F�C
	--
	--�A�u�n���D�A�ܩ��B�A��O�J��s�Τ��\�A�ϥΧڭ̪��ǰe�˸m�A�o���_���ڡ�u�n�A���D��L�˸m����m�A���N�i�H���A�ǰe��F�񪺦P�����˸m�C
	--���L�]���C���ϥη|�ӶO�@�w���]�O�A�ҥH�ڭ̥u���w�S�w�H�h�i�H�ϥΡA�ӥB�����I�O�ӥ��ŧڭ̪���X�F�ڡA�N�O�t�d�����B���O�B���a���H�C
	--�p�l�A���A�̳o�ر`�`�]�Ӷ]�h���_�I�̯���Q���\�ϥγo���_���A�n���h�P�E�I���D�ܡH
	--
	--�I���٦��A�A���D�^�{�N�ܡH��O�J��s�δN�O�]���A�ѥ;֦��o�˪��O�q�ҥH�~�|���\�A�ϥΧڭ̪��ǰe�˸m�C
	--...���M�ܳ·СA�����٬O�����@�U�n�F�C
	--�^�{�N�i�H�ϧA�^��A�]�O�������a�I�A���@�ӤH���]�O�u��O���b�@�Ӧa��F�ӭn����������즳�Y�ӯS��ޯ઺�H�F
	--�A�����A�A�n�P�E�A�]���ڴN���o�ا޳N�C
	--
	--���L��������ګܤ��n�A�ڬ�����o�K�O���ѳo���A��...�I���F�A�`���o�ǧ޳N�O�ܬöQ���A�A�n�ñ��ۨϥΰڡI

	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACKTALK") , "LuaS_111256_0", 0 ); 	--�ڷQ�^���誺���

end

function LuaS_111256_S()

	local SHP = SaveHomePoint( OwnerID() );
	local Area = LuaS_111256_ZoneID( ReadRoleValue( OwnerID() , EM_RoleValue_ZoneID ) )
	if Area > 99 or Area < 1 or Area == 3 then
		CloseSpeak( OwnerID() );
		return
	end		
	local Point = {[1] = "ST_TRANSFER_2" , [2] = "ST_TRANSFER_9" , [4] = "ST_TRANSFER_4" , [5] = "ST_TRANSFER_5" , [6] = "ST_TRANSFER_10" , [10] = "ST_TRANSFER_11" ,[11] = "" }
	if (SHP == true) then

		if CheckAcceptQuest( OwnerID() , 420664 ) == true then	-- for �s��ɤޥ���
			SetFlag( OwnerID() , 540866 , 1 )	-- �����^�{�a�I�n�O
		end

		CastSpell( OwnerID() , OwnerID() , 491008 )
		ScriptMessage( OwnerID(), OwnerID(), 2, GetString(Point[Area])  , C_SYSTEM )	--�e�������T���G�z�N�^�{�a�I�n�O�b�}���E���I
		ScriptMessage( OwnerID(), OwnerID(), 0, GetString(Point[Area]) , 0 )	--�z�N�^�{�a�I�n�O�b�}���E���I
	else
		ScriptMessage( OwnerID(), OwnerID(), 2, GetString("ST_TRANSFER_FAIL")  , C_SYSTEM )	--�e�������T���G�^�{�a�I�n�O���ѡI
		ScriptMessage( OwnerID(), OwnerID(), 0, GetString("ST_TRANSFER_FAIL") , 0 )	--�^�{�a�I�n�O���ѡI
	end

	CloseSpeak( OwnerID() );	--������ܵ���

end

function LuaI_111272_0()
	SetPlot(OwnerID() , "Range" , "LuaI_111272_1" , 20 )
end
function LuaI_111272_1()
	local n = 0
	local DialogStatus = 0
	local Area = LuaS_111256_ZoneID( ReadRoleValue( OwnerID() , EM_RoleValue_ZoneID ) )
	local Flag = {[1] = 541313 ,[2] = 541314 ,[4] = 541315 ,[5] = 541316 ,[6] = 541317 ,[10] = 541318 ,[11] = 541319 }
	if CheckFlag( OwnerID() , Flag[Area] ) == false then
		SetFlag( OwnerID() , Flag[Area] , 1)
	end

	DialogCreate( OwnerID(), EM_LuaDialogType_Select , "Go TO Where ?" )
	local ResultGO = LuaS_Area_ListDialog(Area,Flag)

	if( DialogSendOpen(OwnerID() ) == false ) then 
		ScriptMessage(OwnerID() ,OwnerID() , 1 , GetString("SYS_FIXEQ_DATA_ERROR") , 0 )	--��ưe�X�����D
		return 0
	end

	while 1 do
		sleep( 1 )
		n = n + 1
		DialogStatus = DialogGetResult( OwnerID() )
		if n > 300 then -- ���L�a�j��A300 = �T�Q��
			DialogClose( OwnerID() )
			break
		end
		
		if ( DialogStatus == 0 ) or ( DialogStatus == -1 ) then
			DialogClose( OwnerID() )
			break
		elseif ( DialogStatus ~= -2 ) then
			--DialogStatus = DialogStatus + 1
			DialogClose(OwnerID() )
			BeginPlot(OwnerID() , ResultGO[DialogStatus] , 0)
			break
		end
	end
end

function LuaS_111272_Close()
	--NO Action
end