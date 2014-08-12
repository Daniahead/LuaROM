function LuaS_111367()

	LoadQuestOption( OwnerID() )	--載入任務模板

	if CheckCompleteQuest( OwnerID(), 421450 ) == true then
		AddSpeakOption( OwnerID(), TargetID(), GetString("SC_OLDBRINGNEW_07") , "LuaS_111367_BUY" , 0 )		-- 選項，購買「導師證明」
		--AddSpeakOption( OwnerID(), TargetID(), GetString("SC_OLDBRINGNEW_02") , "LuaS_111367_ADDPoint" , 0 )	-- 選項，兌換永久增加基本點數
	end

end

function LuaS_111367_BUY()
	CloseSpeak( OwnerID() )	--關閉對話視窗

	if CheckFlag( OwnerID() , 541800 ) == true and CheckFlag( OwnerID() , 541801 ) == true then
		Say ( TargetID() , GetString("SC_OLDBRINGNEW_11") )		-- 你無法再購買，一天只能購買 2 張導師證明！
	else
		BeginPlot( OwnerID(), "LuaS_111367_Dialog", 1 )
	end
end

function LuaS_111367_Dialog()



		local n = 0
		local DialogResult = ""

		DialogCreate( OwnerID() , EM_LuaDialogType_YesNo  , GetString("SC_OLDBRINGNEW_08") )	-- 導師證明一張只需 5000 金，你想要購買嗎？
		DialogSelectStr( OwnerID() , GetString("SC_OLDBRINGNEW_09") )	-- 沒問題，我要買！
		DialogSelectStr( OwnerID() , GetString("SC_OLDBRINGNEW_10") )	-- 太貴了，不想買！

		if( DialogSendOpen( OwnerID() ) == false ) then 
			ScriptMessage( OwnerID() , OwnerID() , 1 , GetString("SYS_FIXEQ_DATA_ERROR") , 0 )	-- 資料送出有問題
			return 0
		end
	
		while true do
			Sleep( 5 )
			local DialogStatus = DialogGetResult( OwnerID() )
			n = n + 1
			if n > 120 then -- 防無窮迴圈，120 = 1分鐘
				--ScriptMessage( OwnerID(), OwnerID(), 0, "無窮迴圈", 0 )
				DialogClose( OwnerID() )
				break
			else
				--ScriptMessage( OwnerID(), OwnerID(), 0, "合法迴圈", 0 )
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
			--ScriptMessage( OwnerID(), TargetID(), 0, "You Have Money："..Money , 0 )

			if ( Money < 5000 ) then
				Say ( OwnerID() , GetString("SO_111082_5") )	-- 你身上的金錢不足，我無法賣給你！
			else
				Role_MoneyChange( OwnerID(), -5000 )
				if CheckFlag( OwnerID() , 541800 ) == false then
					SetFlag( OwnerID() , 541800 , 1 )
				elseif CheckFlag( OwnerID() , 541800 ) == true then
					SetFlag( OwnerID() , 541801 , 1 )
				end
				GiveBodyItem ( OwnerID() , 202879 , 1 )	-- 導師證明
				
			end
		elseif ( DialogResult == "No" ) then

		else
			Say ( OwnerID() , GetString("SO_111082_6") )	-- 還是下次再來買吧！
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

	LoadQuestOption( OwnerID() )	--載入任務模板

	if STR < 50 then
		local MessageString = ReplaceString( GetString("SC_OLDBRINGNEW_03") , "HonorPoint" , NeedPoint[STR+1] )	-- 以 HonorPoint 點榮譽積分兌換 NeedPoint
		local StringSTR = ReplaceString( MessageString  , "NeedPoint" , "STR+1" )
		AddSpeakOption( OwnerID(), TargetID(), StringSTR , "LuaS_111367_ADDSTR" , 0 )	--選項，STR+1
	end

	if STA < 50 then
		local MessageString = ReplaceString( GetString("SC_OLDBRINGNEW_03") , "HonorPoint" , NeedPoint[STA+1] )	-- 以 HonorPoint 點榮譽積分兌換 NeedPoint
		local StringSTA = ReplaceString( MessageString  , "NeedPoint" , "STA+1" )
		AddSpeakOption( OwnerID(), TargetID(), StringSTA , "LuaS_111367_ADDSTA" , 0 )	--選項，STA+1 
	end

	if INT < 50 then
		local MessageString = ReplaceString( GetString("SC_OLDBRINGNEW_03") , "HonorPoint" , NeedPoint[INT+1] )	-- 以 HonorPoint 點榮譽積分兌換 NeedPoint
		local StringINT = ReplaceString( MessageString  , "NeedPoint" , "INT+1" )
		AddSpeakOption( OwnerID(), TargetID(), StringINT , "LuaS_111367_ADDINT" , 0 )	--選項，INT+1 
	end

	if MND < 50 then
		local MessageString = ReplaceString( GetString("SC_OLDBRINGNEW_03") , "HonorPoint" , NeedPoint[MND+1] )	-- 以 HonorPoint 點榮譽積分兌換 NeedPoint
		local StringMND = ReplaceString( MessageString  , "NeedPoint" , "MND+1" )
		AddSpeakOption( OwnerID(), TargetID(), StringMND , "LuaS_111367_ADDMND" , 0 )	--選項，MND+1 
	end

	if AGI < 50 then
		local MessageString = ReplaceString( GetString("SC_OLDBRINGNEW_03") , "HonorPoint" , NeedPoint[AGI+1] )	-- 以 HonorPoint 點榮譽積分兌換 NeedPoint
		local StringAGI = ReplaceString( MessageString  , "NeedPoint" , "AGI+1" )
		AddSpeakOption( OwnerID(), TargetID(), StringAGI , "LuaS_111367_ADDAGI" , 0 )	--選項，AGI+1 
	end

	if STR < 50 then
		local MessageString = ReplaceString( GetString("SC_OLDBRINGNEW_03") , "HonorPoint" , NeedPoint[STR+1] )	-- 以 HonorPoint 點榮譽積分兌換 NeedPoint
		local StringTP = ReplaceString( MessageString  , "NeedPoint" , "TP+1" )
		AddSpeakOption( OwnerID(), TargetID(), StringTP , "LuaS_111367_ADDTP" , 0 )	--選項，TP+1 
	end

end

function OldBringNew_Tech( Option )

	local PlayerID = OwnerID()
	local PackageID = 202879		-- 導師證明

	if ( Option == "CHECK" ) then
		if CountBodyItem( PlayerID , PackageID ) >= 1 then
			local TechTime = ReadRoleValue( OwnerID() , EM_RoleValue_TimeFlag + EM_TimeFlagEffect_HonorParty )
			if TechTime <= 0 then
				return true
			elseif TechTime > 0 then
				--Say( OwnerID() , "TechTime = "..TechTime )
				ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_OLDBRINGNEW_01") , C_DEFAULT )	-- 無法使用，你目前還處在榮譽組隊的效果之中！！
				return false
			else
				Say( OwnerID() , "Something Error !!")
			end
		else
			return false
		end
	elseif ( Option == "USE" ) then
		WriteRoleValue( OwnerID() , EM_RoleValue_TimeFlag + EM_TimeFlagEffect_HonorParty , 180 )		-- 180分 = 3小時
	end

end

function GiveMedalCount ()	-- 測試
	ScriptMessage( OwnerID(), OwnerID(), 1, "You Get 10000 Honor Point" , C_DEFAULT )
	AddRoleValue( OwnerID() , EM_RoleValue_MedalCount , 10000 )
end

