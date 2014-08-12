function LuaYU_111353_0()

	LoadQuestOption( OwnerID() )
	AddSpeakOption( OwnerID(), TargetID( ), GetString("YU_111353_DIALOG1") , "LuaYU_111353_1", 0 ) --神祕老人的過去
	AddSpeakOption( OwnerID(), TargetID( ), GetString("YU_111353_DIALOG6") , "LuaYU_111353_2", 0 ) --關於風車祕室


end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function LuaYU_111353_1()
	SetSpeakDetail( OwnerID(), GetString("YU_111353_D1")   )--神祕老人的過去內文
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACK") , "LuaS_111376_0", 0 ) --回到上一頁
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function LuaYU_111353_2()
	SetSpeakDetail( OwnerID(), GetString("YU_111353_D6")   )--關於風車祕室內文
	AddSpeakOption( OwnerID(), TargetID( ), GetString("YU_111353_DIALOG2") , "LuaYU_111353_3", 0 ) --關於風車祕室的魔物
	AddSpeakOption( OwnerID(), TargetID( ), GetString("YU_111353_DIALOG3") , "LuaYU_111353_4", 0 ) --如何取得稀有的特殊材料
	AddSpeakOption( OwnerID(), TargetID( ), GetString("YU_111353_DIALOG4") , "LuaYU_111353_5", 0 ) --關於祕魔石
	AddSpeakOption( OwnerID(), TargetID( ), GetString("YU_111353_DIALOG5") , "LuaYU_111353_6", 0 ) --關於生產配方
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACK") , "LuaS_111376_0", 0 ) --回到上一頁
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function LuaYU_111353_3()
	SetSpeakDetail( OwnerID(), GetString("YU_111353_D2")   )--關於風車祕室的魔物
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACK") , "LuaS_111376_0", 0 ) --回到上一頁
end


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function LuaYU_111353_4()
	SetSpeakDetail( OwnerID(), GetString("YU_111353_D3")   )--關於特殊材料
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACK") , "LuaS_111376_0", 0 ) --回到上一頁
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function LuaYU_111353_5()
	SetSpeakDetail( OwnerID(), GetString("YU_111353_D4")   )--關於祕魔石
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACK") , "LuaS_111376_0", 0 ) --回到上一頁
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function LuaYU_111353_6()
	SetSpeakDetail( OwnerID(), GetString("YU_111353_D5")   )--關於生產配方
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACK") , "LuaS_111376_0", 0 ) --回到上一頁
end


