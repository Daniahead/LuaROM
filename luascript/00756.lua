------------------------------------------------------------------------------------------------------------------------------------------------修煉公用函式exp
function LuaFunc_HouseTrainGetEXP(average)		--/*average為平均數即為期望值
	local rand = rand( 4 )+1
	local a = average*1/3
	local b = average*2/3
	local c = average*3/3
	local d = average*4/3
	if rand == 1 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_1") , 0 )	--/*你在閱讀的時候睡著了，白白浪費了時間
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_1") , 0 )	--/*你在閱讀的時候睡著了，白白浪費了時間
	AddEXP( OwnerID() , a );
	sleep(5)
	elseif rand == 2 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_2") , 0 )	--/*你匆匆的讀了一遍，仍有許多地方看不懂
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_2") , 0)	--/*你匆匆的讀了一遍，仍有許多地方看不懂
	AddEXP( OwnerID() , b );
	sleep(5)
	elseif rand == 3 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_3") , 0 )	--/*你的努力讓你的人物穩定成長
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_3") , 0 )	--/*你的努力讓你的人物穩定成長
	AddEXP( OwnerID() , c );
	sleep(5)
	elseif rand == 4 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_4") , 0 )	--/*你有如醍醐灌頂，讀起書來事半功倍
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_4") , 0 )	--/*你有如醍醐灌頂，讀起書來事半功倍
	AddEXP( OwnerID() , d );
	sleep(5)
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------修煉公用函式tp
function LuaFunc_HouseTrainGetTP(average)		--/*average為平均數即為期望值
	local rand = rand( 4 )+1
	local a = average*1/3
	local b = average*2/3
	local c = average*3/3
	local d = average*4/3
	if rand == 1 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_1") , 0 )	--/*你在閱讀的時候睡著了，白白浪費了時間
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_1") , 0 )	--/*你在閱讀的時候睡著了，白白浪費了時間
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..a..GetString("SC_LEARNTP"), 0 )	--/*你獲得？點TP
	AddRoleValue( OwnerID() , EM_RoleValue_TpExp, a );
	sleep(5)
	elseif rand == 2 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_2") , 0 )	--/*你匆匆的讀了一遍，仍有許多地方看不懂
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_2") , 0)	--/*你匆匆的讀了一遍，仍有許多地方看不懂
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..b..GetString("SC_LEARNTP"), 0 )	--/*你獲得？點TP
	AddRoleValue( OwnerID() , EM_RoleValue_TpExp, b );
	sleep(5)
	elseif rand == 3 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_3") , 0 )	--/*你的努力讓你的人物穩定成長
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_3") , 0 )	--/*你的努力讓你的人物穩定成長
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..c..GetString("SC_LEARNTP"), 0 )	--/*你獲得？點TP
	AddRoleValue( OwnerID() , EM_RoleValue_TpExp, c );
	sleep(5)
	elseif rand == 4 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_4") , 0 )	--/*你有如醍醐灌頂，讀起書來事半功倍
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_4") , 0 )	--/*你有如醍醐灌頂，讀起書來事半功倍
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..d..GetString("SC_LEARNTP"), 0 )	--/*你獲得？點TP
	AddRoleValue( OwnerID() , EM_RoleValue_TpExp, d );
	sleep(5)
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------修煉公用函式採集大全
function LuaFunc_HouseTrainRandMLH(average)		--/*average為平均數即為期望值
	local ran = Rand( 4 )+1
	local a = average*1/3
	local b = average*2/3
	local c = average*3/3
	local d = average*4/3
	local e = Rand( 3 )+1
	local skill = ""
	if e == 1 then
		skill = EM_SkillValueType_Mining
		name = "SYS_SKILLNAME_MINING"
	elseif e == 2 then
		skill = EM_SkillValueType_Lumbering
		name = "SYS_SKILLNAME_LUMBERING"
	elseif e == 3 then
		skill = EM_SkillValueType_Herblism
		name = "SYS_SKILLNAME_HERBLISM"
	end
	if ran == 1 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_1") , 0 )	--/*你在閱讀的時候睡著了，白白浪費了時間
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_1") , 0 )	--/*你在閱讀的時候睡著了，白白浪費了時間
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..GetString("SC_ALITTLE")..GetString(name)..GetString("SC_DIG"), 0 )	--/*你獲得？點
	AddSkillValue( OwnerID() , skill, a );
	sleep(5)
	elseif ran == 2 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_2") , 0 )	--/*你匆匆的讀了一遍，仍有許多地方看不懂
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_2") , 0)	--/*你匆匆的讀了一遍，仍有許多地方看不懂
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..GetString("SC_FEW")..GetString(name)..GetString("SC_DIG"), 0 )	--/*你獲得？點
	AddSkillValue( OwnerID() , skill, b );
	sleep(5)
	elseif ran == 3 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_3") , 0 )	--/*你的努力讓你的人物穩定成長
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_3") , 0 )	--/*你的努力讓你的人物穩定成長
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..GetString("SC_ALOT")..GetString(name)..GetString("SC_DIG"), 0 )	--/*你獲得？點
	AddSkillValue( OwnerID() , skill, c );
	sleep(5)
	elseif ran == 4 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_4") , 0 )	--/*你有如醍醐灌頂，讀起書來事半功倍
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_4") , 0 )	--/*你有如醍醐灌頂，讀起書來事半功倍
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..GetString("SC_MUCH")..GetString(name)..GetString("SC_DIG"), 0 )	--/*你獲得？點
	AddSkillValue( OwnerID() , skill, d );

	sleep(5)
	end
end