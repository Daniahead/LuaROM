
function LuaS_110807()

	local RND = Rand( 5 ) + 1	-- 1-5 五種說話內容
	local TalkGroup = MonsterTalkFormat( GetString("SO_ZONE6RNDTALK") )
	SetSpeakDetail( OwnerID(), TalkGroup[RND] )

end