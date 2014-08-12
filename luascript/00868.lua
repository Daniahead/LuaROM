function LuaI_421452_A_Check()

	local OrgID = ReadRoleValue( TargetID() , EM_RoleValue_OrgID )
	local MonsterID = 100660 

	if CheckAcceptQuest( OwnerID() , 421452 ) == false then
		return false							--沒有任務的狀態
	elseif CountBodyItem( OwnerID() , 202919 ) >= 10 then
		ScriptMessage( OwnerID() , OwnerID() , 0 , GetString("SC_421452_1") , 0 )	--你已經達成野生蘑菇人捕捉的數量
		return false
	elseif ( CheckID( TargetID() ) == false ) or ( TargetID() == OwnerID() ) or  ( OrgID ~= MonsterID ) then
		ScriptMessage( OwnerID() , OwnerID() , 0 , GetString("SC_421452_2") , 0 )	--你所捕捉對象不是野生蘑菇人！
		return false
	else
		return true
	end

end

function LuaC_421452_A_Effect()

	BeginPlot( TargetID() , "LuaI_421452_Reset" , 0 )
	ScriptMessage( OwnerID() , OwnerID() , 0 , GetString("SC_421452_3") , 0 )	--你成功的捕捉到一隻普通野生蘑菇人！
	GiveBodyItem( OwnerID() , 202919 , 1 )
	BeginPlot( OwnerID() , "LuaS_421452_SetFlag" , 0 )

end

function LuaI_421452_B_Check()

	local OrgID = ReadRoleValue( TargetID() , EM_RoleValue_OrgID )
	local MonsterID = 100660 

	if CheckAcceptQuest( OwnerID() , 421452 ) == false then
		return false							--沒有任務的狀態
	elseif CountBodyItem( OwnerID() , 202920 ) >= 1 then
		ScriptMessage( OwnerID() , OwnerID() , 0 , GetString("SC_421452_1") , 0 )	--你已經達成野生蘑菇人捕捉的數量
		return false
	elseif ( CheckID( TargetID() ) == false ) or ( TargetID() == OwnerID() ) or  ( OrgID ~= MonsterID ) then
		ScriptMessage( OwnerID() , OwnerID() , 0 , GetString("SC_421452_2") , 0 )	--你所捕捉對象不是野生蘑菇人！
		return false	
	else
		return true
	end

end

function LuaC_421452_B_Effect()

	BeginPlot( TargetID() , "LuaI_421452_Reset" , 0 )
	ScriptMessage( OwnerID() , OwnerID() , 0 , GetString("SC_421452_4") , 0 )	--你成功的捕捉到一隻黃金野生蘑菇人！
	GiveBodyItem( OwnerID() , 202920 , 1 )
	BeginPlot( OwnerID() , "LuaS_421452_SetFlag" , 0 )

end

function LuaI_421452_Reset()
	LuaFunc_ResetObj( OwnerID() )
end

function LuaS_421452_SetFlag()

	Sleep( 10 )
	if CountBodyItem( OwnerID() , 202919 ) >= 10 then
		SetFlag( OwnerID() , 541797 , 1 )	--野生蘑菇人捕捉完畢
	end
	if CountBodyItem( OwnerID() , 202920 ) >= 1 then
		SetFlag( OwnerID() , 541797 , 1 )	--野生蘑菇人捕捉完畢
	end

end

function LuaQ_421452_Complete()

	DelBodyItem( TargetID() , 202919 , CountBodyItem( TargetID() , 202919 ) )
	DelBodyItem( TargetID() , 202937 , CountBodyItem( TargetID() , 202937 ) )

	if DelBodyItem( TargetID() , 202920 , 1 ) then
		local RND =  Rand( 1000 ) + 1	-- 產生 1~1000 的亂數
		local ItemID
		if RND > 0 and RND <= 400 then
			ItemID = 202921
		elseif RND > 400 and RND <= 600 then
			ItemID = 202922
		elseif RND > 600 and RND <= 800 then
			ItemID = 202923
		elseif RND > 800 and RND <= 900 then
			ItemID = 202924
		elseif RND > 900 and RND <= 950 then
			ItemID = 202925
		elseif RND > 950 and RND <= 999 then
			ItemID = 202926
		elseif RND > 999 and RND <= 1000 then
			ItemID = 202927
		else
			Say( TargetID() , "Somrthing Error !!")
		end

		GiveBodyItem( TargetID() , ItemID , 1 )
	end
end

function LuaS_111377()

	LoadQuestOption( OwnerID() )	--載入任務模板

	if CheckAcceptQuest( OwnerID() , 421452 ) == true then
		AddSpeakOption( OwnerID(), TargetID(), GetString("SC_421452_5"), "LuaS_111377_BUY" , 0 )	--選項，我要購買黃金套繩
	end
end

function LuaS_111377_BUY()
	CloseSpeak( OwnerID() )	--關閉對話視窗
	BeginPlot( OwnerID(), "LuaS_111377_Dialog", 1 )
end

function LuaS_111377_Dialog()
	local n = 0
	local DialogResult = ""

	if CheckFlag( OwnerID() , 541799 ) == false then
		DialogCreate( OwnerID() , EM_LuaDialogType_YesNo , GetString("SC_421452_6") )	-- 黃金套繩只需花費您 1 元的符文幣，你想要購買嗎？
	else
		local MessageString = ReplaceString( GetString("SC_421452_6") , "1" , "10" )
		DialogCreate( OwnerID() , EM_LuaDialogType_YesNo , MessageString )	-- 黃金套繩只需花費您 10 元的符文幣，你想要購買嗎？
	end
	DialogSelectStr( OwnerID() , GetString("SC_421452_7") )	-- 沒問題，我買了！
	DialogSelectStr( OwnerID() , GetString("SC_421452_8") )	-- 太貴了不想買！

	if( DialogSendOpen( OwnerID() ) == false ) then 
		ScriptMessage( OwnerID() , OwnerID() , 1 , GetString("SYS_FIXEQ_DATA_ERROR") , 0 )	--資料送出有問題
		return 0
	end
	
	while true do
		Sleep( 5 )
		local DialogStatus = DialogGetResult( OwnerID() );
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
		local AccountMoney = ReadRoleValue( OwnerID() , EM_RoleValue_Money_Account )
		--ScriptMessage( OwnerID(), TargetID(), 0, "You Have Money："..AccountMoney , 0 )

		if CheckFlag( OwnerID() , 541799 ) == false then
			if ( AccountMoney < 1 ) then
				Say ( OwnerID() , GetString("SC_421452_9") )	-- 你身上的符文幣不足，請進行儲值！
			else
				AddRoleValue( OwnerID() , EM_RoleValue_Money_Account , -1 )
				SetFlag( OwnerID() , 541799 , 1 )
				GiveBodyItem ( OwnerID() , 202938 , 1 )	-- 黃金套繩
			end
		else
			if ( AccountMoney < 10 ) then
				Say ( OwnerID() , GetString("SC_421452_9") )	-- 你身上的符文幣不足，請進行儲值！
			else
				AddRoleValue( OwnerID() , EM_RoleValue_Money_Account , -10 )
				GiveBodyItem ( OwnerID() , 202938 , 1 )	-- 黃金套繩
			end	
		end			
	elseif ( DialogResult == "No" ) then

	else
		--Say ( OwnerID() , GetString("SO_111082_6") )	-- 還是下次再來買吧！
	end

end
