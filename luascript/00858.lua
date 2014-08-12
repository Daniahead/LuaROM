function LuaS_111367()

	LoadQuestOption( OwnerID() )	--���J���ȼҪO

	if CheckCompleteQuest( OwnerID(), 421450 ) == true then
		AddSpeakOption( OwnerID(), TargetID(), GetString("SC_OLDBRINGNEW_07") , "LuaS_111367_BUY" , 0 )		-- �ﶵ�A�ʶR�u�ɮv�ҩ��v
		--AddSpeakOption( OwnerID(), TargetID(), GetString("SC_OLDBRINGNEW_02") , "LuaS_111367_ADDPoint" , 0 )	-- �ﶵ�A�I���ä[�W�[���I��
	end

end

function LuaS_111367_BUY()
	CloseSpeak( OwnerID() )	--������ܵ���

	if CheckFlag( OwnerID() , 541800 ) == true and CheckFlag( OwnerID() , 541801 ) == true then
		Say ( TargetID() , GetString("SC_OLDBRINGNEW_11") )		-- �A�L�k�A�ʶR�A�@�ѥu���ʶR 2 �i�ɮv�ҩ��I
	else
		BeginPlot( OwnerID(), "LuaS_111367_Dialog", 1 )
	end
end

function LuaS_111367_Dialog()



		local n = 0
		local DialogResult = ""

		DialogCreate( OwnerID() , EM_LuaDialogType_YesNo  , GetString("SC_OLDBRINGNEW_08") )	-- �ɮv�ҩ��@�i�u�� 5000 ���A�A�Q�n�ʶR�ܡH
		DialogSelectStr( OwnerID() , GetString("SC_OLDBRINGNEW_09") )	-- �S���D�A�ڭn�R�I
		DialogSelectStr( OwnerID() , GetString("SC_OLDBRINGNEW_10") )	-- �ӶQ�F�A���Q�R�I

		if( DialogSendOpen( OwnerID() ) == false ) then 
			ScriptMessage( OwnerID() , OwnerID() , 1 , GetString("SYS_FIXEQ_DATA_ERROR") , 0 )	-- ��ưe�X�����D
			return 0
		end
	
		while true do
			Sleep( 5 )
			local DialogStatus = DialogGetResult( OwnerID() )
			n = n + 1
			if n > 120 then -- ���L�a�j��A120 = 1����
				--ScriptMessage( OwnerID(), OwnerID(), 0, "�L�a�j��", 0 )
				DialogClose( OwnerID() )
				break
			else
				--ScriptMessage( OwnerID(), OwnerID(), 0, "�X�k�j��", 0 )
			end

			if ( DialogStatus >= 0 ) then 
				if ( DialogStatus == 0 ) then
					DialogResult = "Yes"
					DialogClose( OwnerID() )
					break;
				elseif ( DialogStatus == 1 ) then
					DialogResult = "No"
					DialogClose( OwnerID() )
					break;
				end
			end
		end

		if ( DialogResult == "Yes" ) then
			local Money = Read_Role_Money( OwnerID() )
			--ScriptMessage( OwnerID(), TargetID(), 0, "You Have Money�G"..Money , 0 )

			if ( Money < 5000 ) then
				Say ( OwnerID() , GetString("SO_111082_5") )	-- �A���W�����������A�ڵL�k�浹�A�I
			else
				Role_MoneyChange( OwnerID(), -5000 )
				if CheckFlag( OwnerID() , 541800 ) == false then
					SetFlag( OwnerID() , 541800 , 1 )
				elseif CheckFlag( OwnerID() , 541800 ) == true then
					SetFlag( OwnerID() , 541801 , 1 )
				end
				GiveBodyItem ( OwnerID() , 202879 , 1 )	-- �ɮv�ҩ�
				
			end
		elseif ( DialogResult == "No" ) then

		else
			Say ( OwnerID() , GetString("SO_111082_6") )	-- �٬O�U���A�ӶR�a�I
		end

end

function LuaS_111367_ADDPoint()

	local NeedPoint =
		{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
		  11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
		  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
		  31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
		  41, 42, 43, 44, 45, 46, 47, 48, 49, 50
		}

	local STR = ReadRoleValue( OwnerID() , EM_RoleValue_STR )
	local STA = ReadRoleValue( OwnerID() , EM_RoleValue_STA )
	local INT = ReadRoleValue( OwnerID() , EM_RoleValue_INT )
	local MND = ReadRoleValue( OwnerID() , EM_RoleValue_MND )
	local AGI = ReadRoleValue( OwnerID() , EM_RoleValue_AGI )

	LoadQuestOption( OwnerID() )	--���J���ȼҪO

	if STR < 50 then
		local MessageString = ReplaceString( GetString("SC_OLDBRINGNEW_03") , "HonorPoint" , NeedPoint[STR+1] )	-- �H HonorPoint �I�a�A�n���I�� NeedPoint
		local StringSTR = ReplaceString( MessageString  , "NeedPoint" , "STR+1" )
		AddSpeakOption( OwnerID(), TargetID(), StringSTR , "LuaS_111367_ADDSTR" , 0 )	--�ﶵ�ASTR+1
	end

	if STA < 50 then
		local MessageString = ReplaceString( GetString("SC_OLDBRINGNEW_03") , "HonorPoint" , NeedPoint[STA+1] )	-- �H HonorPoint �I�a�A�n���I�� NeedPoint
		local StringSTA = ReplaceString( MessageString  , "NeedPoint" , "STA+1" )
		AddSpeakOption( OwnerID(), TargetID(), StringSTA , "LuaS_111367_ADDSTA" , 0 )	--�ﶵ�ASTA+1 
	end

	if INT < 50 then
		local MessageString = ReplaceString( GetString("SC_OLDBRINGNEW_03") , "HonorPoint" , NeedPoint[INT+1] )	-- �H HonorPoint �I�a�A�n���I�� NeedPoint
		local StringINT = ReplaceString( MessageString  , "NeedPoint" , "INT+1" )
		AddSpeakOption( OwnerID(), TargetID(), StringINT , "LuaS_111367_ADDINT" , 0 )	--�ﶵ�AINT+1 
	end

	if MND < 50 then
		local MessageString = ReplaceString( GetString("SC_OLDBRINGNEW_03") , "HonorPoint" , NeedPoint[MND+1] )	-- �H HonorPoint �I�a�A�n���I�� NeedPoint
		local StringMND = ReplaceString( MessageString  , "NeedPoint" , "MND+1" )
		AddSpeakOption( OwnerID(), TargetID(), StringMND , "LuaS_111367_ADDMND" , 0 )	--�ﶵ�AMND+1 
	end

	if AGI < 50 then
		local MessageString = ReplaceString( GetString("SC_OLDBRINGNEW_03") , "HonorPoint" , NeedPoint[AGI+1] )	-- �H HonorPoint �I�a�A�n���I�� NeedPoint
		local StringAGI = ReplaceString( MessageString  , "NeedPoint" , "AGI+1" )
		AddSpeakOption( OwnerID(), TargetID(), StringAGI , "LuaS_111367_ADDAGI" , 0 )	--�ﶵ�AAGI+1 
	end

	if STR < 50 then
		local MessageString = ReplaceString( GetString("SC_OLDBRINGNEW_03") , "HonorPoint" , NeedPoint[STR+1] )	-- �H HonorPoint �I�a�A�n���I�� NeedPoint
		local StringTP = ReplaceString( MessageString  , "NeedPoint" , "TP+1" )
		AddSpeakOption( OwnerID(), TargetID(), StringTP , "LuaS_111367_ADDTP" , 0 )	--�ﶵ�ATP+1 
	end

end

function OldBringNew_Tech( Option )

	local PlayerID = OwnerID()
	local PackageID = 202879		-- �ɮv�ҩ�

	if ( Option == "CHECK" ) then
		if CountBodyItem( PlayerID , PackageID ) >= 1 then
			local TechTime = ReadRoleValue( OwnerID() , EM_RoleValue_TimeFlag + EM_TimeFlagEffect_HonorParty )
			if TechTime <= 0 then
				return true
			elseif TechTime > 0 then
				--Say( OwnerID() , "TechTime = "..TechTime )
				ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_OLDBRINGNEW_01") , C_DEFAULT )	-- �L�k�ϥΡA�A�ثe�ٳB�b�a�A�ն����ĪG�����I�I
				return false
			else
				Say( OwnerID() , "Something Error !!")
			end
		else
			return false
		end
	elseif ( Option == "USE" ) then
		WriteRoleValue( OwnerID() , EM_RoleValue_TimeFlag + EM_TimeFlagEffect_HonorParty , 180 )		-- 180�� = 3�p��
	end

end

function GiveMedalCount ()	-- ����
	ScriptMessage( OwnerID(), OwnerID(), 1, "You Get 10000 Honor Point" , C_DEFAULT )
	AddRoleValue( OwnerID() , EM_RoleValue_MedalCount , 10000 )
end

