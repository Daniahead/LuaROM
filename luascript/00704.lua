function LuaS_421014()
	LoadQuestOption( OwnerID() )	-- ���J���ȼҪO
	if CheckAcceptQuest( OwnerID() , 421014 ) == true then
		AddSpeakOption( OwnerID(), TargetID(), GetString("SC_421014_0") ,      "LuaS_421014_Matsuri",     0 )	-- �ǳƧ����A�i�����
	end
end

function LuaS_421014_Matsuri()
	CloseSpeak( OwnerID() )	-- ������ܵ���
	DisableQuest( TargetID() , true )
	DisableQuest( TargetID() , false )
end

function LuaS_421019()
	LoadQuestOption( OwnerID() )	-- ���J���ȼҪO
	if CheckAcceptQuest( OwnerID() , 421019 ) == true then
		AddSpeakOption( OwnerID(), TargetID(), GetString("SC_421019_0") ,      "LuaS_421019_Matsuri",     0 )	-- �ǳƧ����A�i�����
	end
end

function LuaS_421024()
	LoadQuestOption( OwnerID() )	-- ���J���ȼҪO
	if CheckAcceptQuest( OwnerID() , 421024 ) == true then
		AddSpeakOption( OwnerID(), TargetID(), GetString("SC_421024_0") ,      "LuaS_421024_Matsuri",     0 )	-- �ǳƧ����A�i�����
	end
end

function LuaS_421024_Matsuri()
	CloseSpeak( OwnerID() )	-- ������ܵ���
	DisableQuest( TargetID() , true )
	DisableQuest( TargetID() , false )

end