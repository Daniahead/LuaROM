function LuaI_111274()
	SetMinimapIcon( OwnerID(), EM_MapIconType_Shop )
	SetShop( OwnerID() , 600120 , "Test_Shop_Close" )
end

function LuaS_111274()

	local Player = OwnerID()
	local Target = TargetID()

	LoadQuestOption( Player )	--載入任務模板
	--SetSpeakDetail( Player , GetString("ST_110068_0") )

	local Couple1 = GetPartyID( Player , 1 )
	local Couple2 = GetPartyID( Player , 2 )

	-- 未滿 LV18
	if Get_MAXLV( Couple1 ) < 18 then
		Say( Target , ReplaceString( GetString("SC_MARRY_34"), "CoupleName" , GetName( Couple1 ) ) )
	elseif Get_MAXLV( Couple2 ) < 18 then
		Say( Target , ReplaceString( GetString("SC_MARRY_34"), "CoupleName" , GetName( Couple2 ) ) )

	-- 有人結過婚
	elseif CheckFlag( Couple1 , 541321 ) == true then
		Say( Target , ReplaceString( GetString("SC_MARRY_29"), "CoupleName" , "|cff7777ff"..GetName( Couple1 ).."|r" ) )		-- CoupleName 仍然為已婚狀態，你們不能申請結婚。
	elseif CheckFlag( Couple1 , 541322 ) == true then
		Say( Target , ReplaceString( GetString("SC_MARRY_29"), "CoupleName" , "|cffff7777"..GetName( Couple1 ).."|r" ) )
	elseif CheckFlag( Couple2 , 541321 ) == true then
		Say( Target , ReplaceString( GetString("SC_MARRY_29"), "CoupleName" , "|cff7777ff"..GetName( Couple2 ).."|r" ) )
	elseif CheckFlag( Couple2 , 541322 ) == true then
		Say( Target , ReplaceString( GetString("SC_MARRY_29"), "CoupleName" , "|cffff7777"..GetName( Couple2 ).."|r" ) )
	else
		AddSpeakOption( OwnerID(), TargetID(), GetString("SC_MARRY_1") , "Marry_Check" , 0 )	--選項，我想要結婚
	--else
	--	AddSpeakOption( OwnerID(), TargetID(), GetString("SC_MARRY_19") , "Marry_Undo" , 0 )	--選項，我想要離婚
	end
	AddSpeakOption( OwnerID(), TargetID(), GetString("SC_MARRY_20") , "Marry_Shop" , 0 )		--選項，購買婚姻相關物品
end

function Marry_Shop()
	CloseSpeak( OwnerID() )	-- 關閉對話視窗
	OpenShop()
end

function LuaS_111282()

	LoadQuestOption( OwnerID() )	--載入任務模板

	if CheckFlag( OwnerID() , 541321 ) == false and CheckFlag( OwnerID() , 541322 ) == false then
		--SetSpeakDetail( OwnerID(), GetString("ST_110068_0") )
		AddSpeakOption( OwnerID(), TargetID(), GetString("SC_MARRY_2") , "Marry_Start" , 0 )	--選項，婚禮開始
	end

end

function Marry_Start()
	CloseSpeak( OwnerID() )			-- 關閉對話視窗
	BeginPlot( TargetID() , "Marry_Start_Begin", 1 )
end

function Marry_Undo()
	CloseSpeak( OwnerID() )			-- 關閉對話視窗
	BeginPlot( TargetID() , "Marry_Undo_Begin", 1 )
end

function Marry_Undo_Begin()

	if CheckFlag( TargetID() , 541321 ) == false and CheckFlag( TargetID() , 541322 ) == false then
		Say( OwnerID() , GetString("SC_MARRY_21") )		-- 完成結婚的人才能辦理離婚喔！
	else
		if CountBodyItem( TargetID() , 202559 ) < 1 then
			Say( OwnerID() , GetString("SC_MARRY_22") )	-- 申請離婚手續必須準備一張離婚證書，若你未持有的話，可以跟我購買。
		else
			local CoupleName = GetName( TargetID() )
			local MessageString = ""
			MessageString = ReplaceString( GetString("SC_MARRY_23") , "CoupleName" , CoupleName )
			DialogCreate( TargetID() , EM_LuaDialogType_YesNo , MessageString )	-- 你確定要申請離婚，與CoupleName切斷婚姻關係嗎？
			DialogSelectStr( TargetID() , GetString("SC_MARRY_25") )			-- 是的，我確定！
			DialogSelectStr( TargetID() , GetString("SC_MARRY_16") )			-- 我需要考慮！
			local Undo_Ask = Marry_Ask( TargetID() )
			if Undo_Ask == "Yes" then
				--MessageString = ReplaceString( GetString("SC_MARRY_17"), "BoyName" , BoyName )
				--MessageString = ReplaceString( MessageString , "GirlName" , GirlName )
				DialogCreate( TargetID() , EM_LuaDialogType_YesNo , GetString("SC_MARRY_24") )		-- 你真的確定要申請離婚嗎？絕不後悔！？
				DialogSelectStr( TargetID() , GetString("SC_MARRY_16") )		-- 我需要考慮！
				DialogSelectStr( TargetID() , GetString("SC_MARRY_26") )		-- 我決不後悔！
				
				local Undo_Ask2 = Marry_Ask( TargetID() )
				if Undo_Ask2 == "No" then
					local CoupleName = GetName( TargetID() )
					local MessageString = ""
					MessageString = ReplaceString( GetString("SC_MARRY_27") , "CoupleName" , CoupleName )
					DelBodyItem( TargetID() , 202559 , 1 )
					Say( OwnerID() , MessageString )			-- 我現在宣佈，你與CoupleName正式脫離夫妻關係。
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
	DialogCreate( Boy , EM_LuaDialogType_YesNo , MessageString )	-- BoyName，你願意娶GirlName為你的妻子？照顧她，愛護她，無論貧窮還是富有，疾病還是健康，相愛相敬，不離不棄，永遠在一起？
	DialogSelectStr( Boy , GetString("SC_MARRY_15") )			-- 是的，我願意
	DialogSelectStr( Boy , GetString("SC_MARRY_16") )			-- 我需要考慮！
	Say( OwnerID() , MessageString )	-- BoyName，你願意娶GirlName為你的妻子？照顧她，愛護她，無論貧窮還是富有，疾病還是健康，相愛相敬，不離不棄，永遠在一起？
	local Ask_For_Boy = Marry_Ask( Boy )
	if Ask_For_Boy == "Yes" then
		Say( Boy , GetString("SC_MARRY_15") )
		MessageString = ReplaceString( GetString("SC_MARRY_17"), "BoyName" , BoyName )
		MessageString = ReplaceString( MessageString , "GirlName" , GirlName )
		DialogCreate( Girl , EM_LuaDialogType_YesNo , MessageString )	-- GirlName，你願意嫁給BoyName做為他的妻子？跟隨他，扶持他，無論貧窮還是富有，疾病還是健康，相愛相敬，不離不棄，永遠在一起？
		DialogSelectStr( Girl , GetString("SC_MARRY_15") )			-- 是的，我願意
		DialogSelectStr( Girl , GetString("SC_MARRY_16") )			-- 我需要考慮！
		Say( OwnerID() , MessageString )	-- GirlName，你願意嫁給BoyName做為他的妻子？跟隨他，扶持他，無論貧窮還是富有，疾病還是健康，相愛相敬，不離不棄，永遠在一起？
		local Ask_For_Girl = Marry_Ask( Girl )
		if Ask_For_Girl == "Yes" then
			if SetRelation( Boy  , Girl , EM_RelationType_Husband , 0 , EM_RelationType_Wife , 0 ) then	-- 設定夫妻關係
				Say( Girl , GetString("SC_MARRY_15") )
				Say( OwnerID() , GetString("SC_MARRY_18") )			-- 我現在宣佈，你們正式成為合法的夫妻。恭喜你們！	
				local MessageString = ReplaceString( GetString("SC_MARRY_30"), "BoyName" , BoyName )
				        MessageString = ReplaceString( MessageString , "GirlName" , GirlName )
				RunningMsg( Boy , 2 , MessageString ) 	-- 恭喜 BoyName 與 GirlName 完成婚禮，祝福他們永結同心、永浴愛河！
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
		ScriptMessage( Player , Player , 1 , GetString("SYS_FIXEQ_DATA_ERROR") , 0 )	--資料送出有問題
		return 0
	end

	local n = 0
	local DialogResult = ""

	while true do
		Sleep( 5 )
		local DialogStatus = DialogGetResult( Player )
		n = n + 1
		if n > 120 then -- 防無窮迴圈，120 = 一分鐘
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