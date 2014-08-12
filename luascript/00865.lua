function LuaS_111367_Change()

	local Player = OwnerID()
	local RND =  Rand( 1000 ) + 1
	if RND > 0 and RND <= 400 then
	elseif RND > 400 and RND <= 600 then
	elseif RND > 600 and RND <= 800 then
	elseif RND > 800 and RND <= 900 then
	elseif RND > 900 and RND <= 950 then
	elseif RND > 950 and RND <= 999 then
	elseif RND > 999 and RND <= 1000 then
	else
		ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_OLDBRINGNEW_01") , C_DEFAULT )	-- 無法使用，你目前還處在技術組隊的效果之中！！
	end

end