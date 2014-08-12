function LuaS_110147_0()

	if CountBodyItem( OwnerID(), 200728 ) > 0 and CountBodyItem( OwnerID(), 200729 ) > 0  then  
		SetSpeakDetail( OwnerID(), GetString("ST_110147_0")   );
		--/*我沒看過你......你是誰派來的？來做什麼的？
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110147_1") , "LuaS_110147_1", 0 ) 
		--/*把符文方塊給赫龍看
	else
		SetSpeakDetail( OwnerID(), GetString("ST_110147_8")   );
		--/*冒險者，這世界上有很多事情最好不要知道，因此，我在此誠摯的建議你......快滾！
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110147_0") , "LuaS_110147_EXIT", 0 ) 
		--/*結束對話
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110147_EXIT()
	CloseSpeak( OwnerID() );	--關閉對話視窗
end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110147_1()

	SetSpeakDetail( OwnerID(), GetString("ST_110147_1")   );
	--/*哦！你就是多魯梭派去的人？你應該知道指令是你要拿什麼東西過來的吧！
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110147_2") , "LuaS_110147_2", 0 )
	--/*給赫龍看符文盤。

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110147_2()

	SetSpeakDetail( OwnerID(), GetString("ST_110147_2")   );
	--/*很好！我還在想如果多魯梭的人搞砸了，我要怎麼善後；看來是省了一堆麻煩事，快把符文盤拿過來吧！
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110147_3") , "LuaS_110147_3", 0 ) 
	--/*奉承他，趁機問關於符文盤的事情。

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110147_3()

	SetSpeakDetail( OwnerID(), GetString("ST_110147_3")   );
	--/*哈哈！這可不只是古舊的石盤，而是當初古代王國封閉虛界之門的鑰匙！藉由這些符文盤，再加上守護者之心的魔力，我們可以反轉封印，重新開啟虛界之門吶！
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110147_4") , "LuaS_110147_4", 0 ) 
	--/*想辦法套出如何用符文盤開啟虛界之門的方法

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110147_4()

	SetSpeakDetail( OwnerID(), GetString("ST_110147_4")   );
	--/*哼！多魯梭的部下都這麼無知嗎？當然不可能只靠這個符文盤！我剛剛不是說了要用「這些」符文盤以及守護者之心的魔力嗎？符文盤是構成一個古老裝置的零件，而守護者之心就是讓裝置運作的魔力源；他負責與我分頭收集這些符文盤，他的部下竟然連這些東西的背景都不知道，這要怎麼找啊！難怪他那裡的進度那麼慢！
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110147_5") , "LuaS_110147_5", 0 ) 
	--/*說自己是後來才加入的，想辦法套出其他符文盤和守護者之心的下落。
end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110147_5()

	SetSpeakDetail( OwnerID(), GetString("ST_110147_5")   );
	--/*塵荒峽谷或是海波拉高原，我們就剩這兩個地方的符文盤還沒到手而已！不過多魯梭竟然得另外找人，看來他的部下損失不少......我看他根本都把部下拿去做他的實驗了，哼哼！
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110147_6") , "LuaS_110147_6", 0 ) 
	--/*追問守護者之心的下落

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110147_6()

	SetSpeakDetail( OwnerID(), GetString("ST_110147_6")   );
	--/*喔？守護者之心啊？原來多魯梭連這個也沒跟你說啊！這樣不行，我們組織的人都應該要知道這件事，仔細聽好囉！
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110147_7") , "LuaS_110147_7", 0 ) 
	--/*擺出聆聽的姿勢

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110147_7()

	SetSpeakDetail( OwnerID(), GetString("ST_110147_7")   );
	--/*守護者之心是屬於古代守護者的力量，其消息是本組織所掌握的極大秘密，只有索雷爾頓之環可以得知其訊息，這件事......
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110147_8") , "LuaS_110147_8", 0 ) 
	--/*繼續聆聽
end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110147_8()

	CloseSpeak( OwnerID() )
	SAY( TargetID() , GetString("SAY_110147_0") ) --/*所有參予這次計畫的組織成員都應該在加入時被告知，知道了嗎？假冒者！
	BeginPlot( TargetID() , "LuaS_110147_9" , 0 )

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110147_9()

--	local PPL = SearchRangePlayer( OwnerID() , 500 )
--	local Ser = LuaFunc_SearchNPCbyOrgID( OwnerID() , 100257 , 100 , 1)	-- 索雷爾頓侍從
	local RoomID = ReadRoleValue( TargetID() , EM_RoleValue_RoomID)
--	SAY( TargetID() , "RoomID="..RoomID  )	-- 檢查RoomID 
--	for i = 0 , 35 , 1 do --抓出所有玩家的資料
--		if PPL[i] == -1 then 
--			break
--
--		obj = Role:New( PPL [i] )
--		obj = TargetID()
		if CheckAcceptQuest( TargetID() , 420555 ) == true and CheckFlag( TargetID() , 540204 ) == false then
		--讓所有玩家都可解完任務
			DelBodyItem( TargetID() , 200728 , 1 )		-- 符文方塊
			DelBodyItem( TargetID() , 200729 , 1 )		-- 綠色符文盤
			SetFlag( TargetID() , 540204 , 1 )
		end
--		Castspell( TargetID() , OwnerID() ,123456 ) --施展目盲術，效果持續3秒
--	end
	sleep( 10 )

--	Hide( OwnerID() )
--	MoveToFlagEnabled( OwnerID(), false );	
--	LuaFunc_MoveToFlag( OwnerID(), 580101 , 1 ,0 ) --移動到高處
--	SetPosByFlag( OwnerID(), 580101 , 0 )		--移動到高處
--	Show( OwnerID() , RoomID )

	SAY( OwnerID() , GetString("SAY_110147_1") ) --/*哼！我承認自己有段時間的確被你給騙了，可惜你最後還是露出破綻了！
	ScriptMessage( OwnerID() , OwnerID() , 0 , GetString("EM_110147_0") , 0 ) --/*你發現符文盤已經不見了。 
	sleep( 10 )
	SAY( OwnerID() , GetString("SAY_110147_2") ) --/*這塊符文盤我就不客氣的帶走了，本來我應該親自解決你，但我得去找其他符文盤，請恕我必須離開。
	sleep ( 10 )
	local Mob1 = CreateObjByFlag( 100258 , 580101 , 1 , 1 )
	AddToPartition( Mob1 , RoomID )
	local Mob2 = CreateObjByFlag( 100258 , 580101 , 2 , 1 )
	AddToPartition( Mob2 , RoomID )
	local Mob3 = CreateObjByFlag( 100258 , 580101 , 3 , 1 )
	AddToPartition( Mob3 , RoomID )
--	SetPosByFlag( OwnerID(), 580101 , 1 )		--移動到高處
	SAY( OwnerID() , GetString("SAY_110147_3") ) --/*解決他們！
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