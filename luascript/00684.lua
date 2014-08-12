function LuaI_MSG_PUBLIC()
	local hour = 0
	local min = 0
	while 1 do
		hour = GetSystime(1)
		min = GetSystime(2)

		if GetSystime(1) == 11 and  GetSystime(2) == 30 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_1") )  --嚎叫山簏羅格鎮風車祕室將在 30 分鐘後開啟。
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_1") ) --凡瑞娜絲建設活動將於30分鐘後開始。
		end 
		if GetSystime(1) == 11 and  GetSystime(2) == 50 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_2") )  --嚎叫山簏羅格鎮風車祕室將在 10 分鐘後開啟。
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_2") ) --凡瑞娜絲建設活動將於10分鐘後開始。
		end 
		if GetSystime(1) == 11 and  GetSystime(2) == 55 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_3") ) --嚎叫山簏羅格鎮風車祕室將在 5 分鐘後開啟。
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_3") ) --凡瑞娜絲建設活動將於5分鐘後開始。
		end 
		if GetSystime(1) == 12 and  GetSystime(2) == 0 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_4") ) --嚎叫山簏羅格鎮風車祕室已開啟，將於 1 小時後關閉入口。
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_4") ) --凡瑞娜絲建設活動已開始，請向凡瑞娜絲城的伊米葳勒報名。
		end 
		if GetSystime(1) == 12 and  GetSystime(2) == 50 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_5") ) --凡瑞娜絲建設活動將於10分鐘後結束，請未完成者盡速回到凡瑞娜絲城。
		end
		if GetSystime(1) == 13 and  GetSystime(2) == 0 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_6") ) --凡瑞娜絲建設活動已經結束。
		end 

		if GetSystime(1) == 17 and  GetSystime(2) == 30 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_1") )  --嚎叫山簏羅格鎮風車祕室將在 30 分鐘後開啟。

		end 
		if GetSystime(1) == 17 and  GetSystime(2) == 50 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_2") ) --嚎叫山簏羅格鎮風車祕室將在 10 分鐘後開啟。
		end 
		if GetSystime(1) == 17 and  GetSystime(2) == 55 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_3") ) --嚎叫山簏羅格鎮風車祕室將在 5 分鐘後開啟。
		end 
		if GetSystime(1) == 18 and  GetSystime(2) == 0 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_4") )-- 嚎叫山簏羅格鎮風車祕室已開啟，將於 1 小時後關閉入口。
		end 
		if GetSystime(1) == 19 and  GetSystime(2) == 30 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_1") ) --凡瑞娜絲建設活動將於30分鐘後開始。
		end 
		if GetSystime(1) == 19 and  GetSystime(2) == 50 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_2") ) --凡瑞娜絲建設活動將於10分鐘後開始。
		end 
		if GetSystime(1) == 19 and  GetSystime(2) == 55 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_3") ) --凡瑞娜絲建設活動將於5分鐘後開始。
		end 
		if GetSystime(1) == 20 and  GetSystime(2) == 0 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_4") ) --凡瑞娜絲建設活動已開始，請向凡瑞娜絲城的伊米葳勒報名。
		end 
		if GetSystime(1) == 20 and  GetSystime(2) == 50 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_5") ) --凡瑞娜絲建設活動將於10分鐘後結束，請未完成者盡速回到凡瑞娜絲城。
		end
		if GetSystime(1) == 21 and  GetSystime(2) == 0 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_6") ) --凡瑞娜絲建設活動已經結束。
		end 		

		if  ( hour == 21 and min  == 40 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("BLOODYGALLERY_OPEN_1") )	-- 血腥迴廊裡的蝙蝠群開始蠢蠢欲動。
		end 
		if  ( hour == 21 and min  == 50 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("BLOODYGALLERY_OPEN_2") )	-- 血腥迴廊裡的蝙蝠群開始蠢蠢欲動，傳送結界即將開啟。
		end 
		if  ( hour == 22 and min  == 0 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("BLOODYGALLERY_OPEN_3") )	-- 血腥迴廊的結界開啟，蝙蝠群一湧而出！！
		end 
		if  ( hour == 0 and min  == 0 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("BLOODYGALLERY_OPEN_4") )	-- 血腥迴廊的蝙蝠群吸取了飽滿的鮮血回巢，傳送結界已經關閉！！
		end 

		if  ( hour == 17 and min  == 50 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("SC_LOVE_ACTION_1") )		-- 愛意之戒保護行動將於10分鐘後開始。
		end
		if  ( hour == 18 and min  == 0 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("SC_LOVE_ACTION_2") )		-- 愛意之戒保護行動已開始，請向凡瑞娜絲城東區的羅密報名。
		end
		if  ( hour == 19 and min  == 50 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("SC_LOVE_ACTION_3") )		-- 愛意之戒保護行動將於10分鐘後結束，請未完成者儘速完成。
		end
		if  ( hour == 20 and min  == 0 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("SC_LOVE_ACTION_4") )		-- 愛意之戒保護行動已經結束。
		end

--		if (hour > 10  or hour < 23) and (min == 55) then
--			RunningMsg( OwnerID() , 2 ,  GetString("SC_111284_1") )	-- 聖火試鍊的秘境將在五分鐘後開放
--		end

--		if (hour > 11) and (min == 0) then
--			RunningMsg( OwnerID() , 2 ,  GetString("SC_111284_2") )	-- 想接受聖火試鍊的玩家請找奧提尼各！
--		end

--		if (hour > 11) and (min == 40) then
--			RunningMsg( OwnerID() , 2 ,  GetString("SC_111284_10") )	-- 聖火試鍊的秘境已關閉
--		end
		sleep( 300 )

	end

end