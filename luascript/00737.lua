function LuaS_111256_0()
	local Area = LuaS_111256_ZoneID( ReadRoleValue( OwnerID() , EM_RoleValue_ZoneID ) )
	local Flag = {[1] = 541313 ,[2] = 541314 ,[4] = 541315 ,[5] = 541316 ,[6] = 541317 ,[10] = 541318 ,[11] = 541319 }
	if Area > 99 or Area < 1 or Area == 3 then
		LoadQuestOption( OwnerID() )		
	else
		SetSpeakDetail( OwnerID() , GetString("SC_111256_0") )--呼～小子，你想做什麼快說；我，可是很沒耐心的。
		if CheckFlag( OwnerID() , Flag[Area] ) == false then
			SetFlag( OwnerID() , Flag[Area] , 1)
			ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_111256_OT"), C_SYSTEM );
		end
		if CheckFlag( OwnerID()  , 540001 ) == false then
			SetFlag( OwnerID()  , 540001 , 1 )
		end
		AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SC_111256_Q") , "LuaS_111256_Q", 0 ); --傳送是什麼？
		AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SC_111256_S") , "LuaS_111256_S", 0 ); --我要將回程術地點登記於此
		LuaS_Area_List(Area,Flag)
	end
end

function LuaS_111256_Q()

	SetSpeakDetail( OwnerID(), GetString("SC_111256_QD"));
	--你想知道老子是做啥的？
	--呼～我啊，是艾力克研究團的傳送師；名字...已經不重要了。
	--
	--你只要知道你很幸運，艾力克研究團允許你使用我們的傳送裝置，這個寶貝啊～只要你知道其他裝置的位置，它就可以讓你傳送到鄰近的同類型裝置。
	--不過因為每次使用會耗費一定的魔力，所以我們只限定特定人士可以使用，而且必須付費來平衡我們的支出；我，就是負責把關、收費、操縱的人。
	--小子，像你們這種常常跑來跑去的冒險者能夠被允許使用這個寶貝，要心懷感激！知道嗎？
	--
	--呼～還有，你知道回程術嗎？艾力克研究團就是因為你天生擁有這樣的力量所以才會允許你使用我們的傳送裝置。
	--...雖然很麻煩，但我還是說明一下好了。
	--回程術可以使你回到你魔力紀錄的地點，但一個人的魔力只能記錄在一個地方；而要紀錄必須找到有某個特殊技能的人；
	--再次的，你要感激，因為我就有這種技術。
	--
	--不過有件事讓我很不爽，我為什麼得免費提供這項服務...呼～算了，總之這些技術是很珍貴的，你要珍惜著使用啊！

	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACKTALK") , "LuaS_111256_0", 0 ); 	--我想回到剛剛的對話

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

		if CheckAcceptQuest( OwnerID() , 420664 ) == true then	-- for 新手導引任務
			SetFlag( OwnerID() , 540866 , 1 )	-- 做完回程地點登記
		end

		CastSpell( OwnerID() , OwnerID() , 491008 )
		ScriptMessage( OwnerID(), OwnerID(), 2, GetString(Point[Area])  , C_SYSTEM )	--畫面中間訊息：您將回程地點登記在開墾聚落！
		ScriptMessage( OwnerID(), OwnerID(), 0, GetString(Point[Area]) , 0 )	--您將回程地點登記在開墾聚落！
	else
		ScriptMessage( OwnerID(), OwnerID(), 2, GetString("ST_TRANSFER_FAIL")  , C_SYSTEM )	--畫面中間訊息：回程地點登記失敗！
		ScriptMessage( OwnerID(), OwnerID(), 0, GetString("ST_TRANSFER_FAIL") , 0 )	--回程地點登記失敗！
	end

	CloseSpeak( OwnerID() );	--關閉對話視窗

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
		ScriptMessage(OwnerID() ,OwnerID() , 1 , GetString("SYS_FIXEQ_DATA_ERROR") , 0 )	--資料送出有問題
		return 0
	end

	while 1 do
		sleep( 1 )
		n = n + 1
		DialogStatus = DialogGetResult( OwnerID() )
		if n > 300 then -- 防無窮迴圈，300 = 三十秒
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