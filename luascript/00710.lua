function LuaI_111274()
	SetMinimapIcon( OwnerID(), EM_MapIconType_Shop )
	SetShop( OwnerID() , 600120 , "Test_Shop_Close" )
end

function LuaS_111274()

	local Player = OwnerID()
	local Target = TargetID()

	LoadQuestOption( Player )	--���J���ȼҪO
	--SetSpeakDetail( Player , GetString("ST_110068_0") )

	local Couple1 = GetPartyID( Player , 1 )
	local Couple2 = GetPartyID( Player , 2 )

	-- ���� LV18
	if Get_MAXLV( Couple1 ) < 18 then
		Say( Target , ReplaceString( GetString("SC_MARRY_34"), "CoupleName" , GetName( Couple1 ) ) )
	elseif Get_MAXLV( Couple2 ) < 18 then
		Say( Target , ReplaceString( GetString("SC_MARRY_34"), "CoupleName" , GetName( Couple2 ) ) )

	-- ���H���L�B
	elseif CheckFlag( Couple1 , 541321 ) == true then
		Say( Target , ReplaceString( GetString("SC_MARRY_29"), "CoupleName" , "|cff7777ff"..GetName( Couple1 ).."|r" ) )		-- CoupleName ���M���w�B���A�A�A�̤���ӽе��B�C
	elseif CheckFlag( Couple1 , 541322 ) == true then
		Say( Target , ReplaceString( GetString("SC_MARRY_29"), "CoupleName" , "|cffff7777"..GetName( Couple1 ).."|r" ) )
	elseif CheckFlag( Couple2 , 541321 ) == true then
		Say( Target , ReplaceString( GetString("SC_MARRY_29"), "CoupleName" , "|cff7777ff"..GetName( Couple2 ).."|r" ) )
	elseif CheckFlag( Couple2 , 541322 ) == true then
		Say( Target , ReplaceString( GetString("SC_MARRY_29"), "CoupleName" , "|cffff7777"..GetName( Couple2 ).."|r" ) )
	else
		AddSpeakOption( OwnerID(), TargetID(), GetString("SC_MARRY_1") , "Marry_Check" , 0 )	--�ﶵ�A�ڷQ�n���B
	--else
	--	AddSpeakOption( OwnerID(), TargetID(), GetString("SC_MARRY_19") , "Marry_Undo" , 0 )	--�ﶵ�A�ڷQ�n���B
	end
	AddSpeakOption( OwnerID(), TargetID(), GetString("SC_MARRY_20") , "Marry_Shop" , 0 )		--�ﶵ�A�ʶR�B�ì������~
end

function Marry_Shop()
	CloseSpeak( OwnerID() )	-- ������ܵ���
	OpenShop()
end

function LuaS_111282()

	LoadQuestOption( OwnerID() )	--���J���ȼҪO

	if CheckFlag( OwnerID() , 541321 ) == false and CheckFlag( OwnerID() , 541322 ) == false then
		--SetSpeakDetail( OwnerID(), GetString("ST_110068_0") )
		AddSpeakOption( OwnerID(), TargetID(), GetString("SC_MARRY_2") , "Marry_Start" , 0 )	--�ﶵ�A�B§�}�l
	end

end

function Marry_Start()
	CloseSpeak( OwnerID() )			-- ������ܵ���
	BeginPlot( TargetID() , "Marry_Start_Begin", 1 )
end

function Marry_Undo()
	CloseSpeak( OwnerID() )			-- ������ܵ���
	BeginPlot( TargetID() , "Marry_Undo_Begin", 1 )
end

function Marry_Undo_Begin()

	if CheckFlag( TargetID() , 541321 ) == false and CheckFlag( TargetID() , 541322 ) == false then
		Say( OwnerID() , GetString("SC_MARRY_21") )		-- �������B���H�~���z���B��I
	else
		if CountBodyItem( TargetID() , 202559 ) < 1 then
			Say( OwnerID() , GetString("SC_MARRY_22") )	-- �ӽ����B���򥲶��ǳƤ@�i���B�ҮѡA�Y�A���������ܡA�i�H����ʶR�C
		else
			local CoupleName = GetName( TargetID() )
			local MessageString = ""
			MessageString = ReplaceString( GetString("SC_MARRY_23") , "CoupleName" , CoupleName )
			DialogCreate( TargetID() , EM_LuaDialogType_YesNo , MessageString )	-- �A�T�w�n�ӽ����B�A�PCoupleName���_�B�����Y�ܡH
			DialogSelectStr( TargetID() , GetString("SC_MARRY_25") )			-- �O���A�ڽT�w�I
			DialogSelectStr( TargetID() , GetString("SC_MARRY_16") )			-- �ڻݭn�Ҽ{�I
			local Undo_Ask = Marry_Ask( TargetID() )
			if Undo_Ask == "Yes" then
				--MessageString = ReplaceString( GetString("SC_MARRY_17"), "BoyName" , BoyName )
				--MessageString = ReplaceString( MessageString , "GirlName" , GirlName )
				DialogCreate( TargetID() , EM_LuaDialogType_YesNo , GetString("SC_MARRY_24") )		-- �A�u���T�w�n�ӽ����B�ܡH�����ᮬ�I�H
				DialogSelectStr( TargetID() , GetString("SC_MARRY_16") )		-- �ڻݭn�Ҽ{�I
				DialogSelectStr( TargetID() , GetString("SC_MARRY_26") )		-- �ڨM���ᮬ�I
				
				local Undo_Ask2 = Marry_Ask( TargetID() )
				if Undo_Ask2 == "No" then
					local CoupleName = GetName( TargetID() )
					local MessageString = ""
					MessageString = ReplaceString( GetString("SC_MARRY_27") , "CoupleName" , CoupleName )
					DelBodyItem( TargetID() , 202559 , 1 )
					Say( OwnerID() , MessageString )			-- �ڲ{�b�ŧG�A�A�PCoupleName���������ҩd���Y�C
					if CheckFlag( TargetID() , 541321 ) == true then
						SetFlag( TargetID() , 541321 , 0 )
					end
					if CheckFlag( TargetID() , 541322 ) == true then
						SetFlag( TargetID() , 541322 , 0 )
					end
				end
			end
		end			
	end

end

function Marry_Start_Begin_Combo( Boy , Girl )

	local BoyName = "|cff7777ff"..GetName( Boy ).."|r"
	local GirlName = "|cffff7777"..GetName( Girl ).."|r"
	local MessageString = ""
	MessageString = ReplaceString( GetString("SC_MARRY_14") , "BoyName" , BoyName )
	MessageString = ReplaceString( MessageString ,"GirlName" , GirlName )
	DialogCreate( Boy , EM_LuaDialogType_YesNo , MessageString )	-- BoyName�A�A�@�N��GirlName���A���d�l�H���U�o�A�R�@�o�A�L�׳h�a�٬O�I���A�e�f�٬O���d�A�۷R�۷q�A��������A�û��b�@�_�H
	DialogSelectStr( Boy , GetString("SC_MARRY_15") )			-- �O���A���@�N
	DialogSelectStr( Boy , GetString("SC_MARRY_16") )			-- �ڻݭn�Ҽ{�I
	Say( OwnerID() , MessageString )	-- BoyName�A�A�@�N��GirlName���A���d�l�H���U�o�A�R�@�o�A�L�׳h�a�٬O�I���A�e�f�٬O���d�A�۷R�۷q�A��������A�û��b�@�_�H
	local Ask_For_Boy = Marry_Ask( Boy )
	if Ask_For_Boy == "Yes" then
		Say( Boy , GetString("SC_MARRY_15") )
		MessageString = ReplaceString( GetString("SC_MARRY_17"), "BoyName" , BoyName )
		MessageString = ReplaceString( MessageString , "GirlName" , GirlName )
		DialogCreate( Girl , EM_LuaDialogType_YesNo , MessageString )	-- GirlName�A�A�@�N����BoyName�����L���d�l�H���H�L�A�߫��L�A�L�׳h�a�٬O�I���A�e�f�٬O���d�A�۷R�۷q�A��������A�û��b�@�_�H
		DialogSelectStr( Girl , GetString("SC_MARRY_15") )			-- �O���A���@�N
		DialogSelectStr( Girl , GetString("SC_MARRY_16") )			-- �ڻݭn�Ҽ{�I
		Say( OwnerID() , MessageString )	-- GirlName�A�A�@�N����BoyName�����L���d�l�H���H�L�A�߫��L�A�L�׳h�a�٬O�I���A�e�f�٬O���d�A�۷R�۷q�A��������A�û��b�@�_�H
		local Ask_For_Girl = Marry_Ask( Girl )
		if Ask_For_Girl == "Yes" then
			if SetRelation( Boy  , Girl , EM_RelationType_Husband , 0 , EM_RelationType_Wife , 0 ) then	-- �]�w�ҩd���Y
				Say( Girl , GetString("SC_MARRY_15") )
				Say( OwnerID() , GetString("SC_MARRY_18") )			-- �ڲ{�b�ŧG�A�A�̥��������X�k���ҩd�C���ߧA�̡I	
				local MessageString = ReplaceString( GetString("SC_MARRY_30"), "BoyName" , BoyName )
				        MessageString = ReplaceString( MessageString , "GirlName" , GirlName )
				RunningMsg( Boy , 2 , MessageString ) 	-- ���� BoyName �P GirlName �����B§�A���֥L�̥õ��P�ߡB�ïD�R�e�I
				SetFlag( Boy , 541320 , 0 )
				SetFlag( Girl , 541320 , 0 )
				SetFlag( Boy , 541321 , 1 )
				SetFlag( Girl , 541322 , 1 )
			end
		end
	end
end

function Marry_Ask( Player )

	if( DialogSendOpen( Player ) == false ) then 
		ScriptMessage( Player , Player , 1 , GetString("SYS_FIXEQ_DATA_ERROR") , 0 )	--��ưe�X�����D
		return 0
	end

	local n = 0
	local DialogResult = ""

	while true do
		Sleep( 5 )
		local DialogStatus = DialogGetResult( Player )
		n = n + 1
		if n > 120 then -- ���L�a�j��A120 = �@����
			--ScriptMessage( Player , Player , 0, "Infinity Loop", 0 )
			DialogClose( Player )
			break
		else
			--ScriptMessage( Player , Player , 0, "OK", 0 )
		end

		if ( DialogStatus >= 0 ) then
			if ( DialogStatus == 0 ) then
				DialogResult = "Yes"
				DialogClose( Player )
				break
			elseif ( DialogStatus == 1 ) then
				DialogResult = "No"
				DialogClose( Player )
				break
			else
				DialogResult = "Etc"
			end
		end
	end

	return DialogResult

end