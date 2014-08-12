function LuaS_421014()
	LoadQuestOption( OwnerID() )	-- 載入任務模板
	if CheckAcceptQuest( OwnerID() , 421014 ) == true then
		AddSpeakOption( OwnerID(), TargetID(), GetString("SC_421014_0") ,      "LuaS_421014_Matsuri",     0 )	-- 準備完成，進行儀式
	end
end

function LuaS_421014_Matsuri()
	CloseSpeak( OwnerID() )	-- 關閉對話視窗
	DisableQuest( TargetID() , true )
	DisableQuest( TargetID() , false )
end

function LuaS_421019()
	LoadQuestOption( OwnerID() )	-- 載入任務模板
	if CheckAcceptQuest( OwnerID() , 421019 ) == true then
		AddSpeakOption( OwnerID(), TargetID(), GetString("SC_421019_0") ,      "LuaS_421019_Matsuri",     0 )	-- 準備完成，進行儀式
	end
end

function LuaS_421024()
	LoadQuestOption( OwnerID() )	-- 載入任務模板
	if CheckAcceptQuest( OwnerID() , 421024 ) == true then
		AddSpeakOption( OwnerID(), TargetID(), GetString("SC_421024_0") ,      "LuaS_421024_Matsuri",     0 )	-- 準備完成，進行儀式
	end
end

function LuaS_421024_Matsuri()
	CloseSpeak( OwnerID() )	-- 關閉對話視窗
	DisableQuest( TargetID() , true )
	DisableQuest( TargetID() , false )

end