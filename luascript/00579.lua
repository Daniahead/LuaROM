
function LuaS_110807()

	local RND = Rand( 5 ) + 1	-- 1-5 ���ػ��ܤ��e
	local TalkGroup = MonsterTalkFormat( GetString("SO_ZONE6RNDTALK") )
	SetSpeakDetail( OwnerID(), TalkGroup[RND] )

end