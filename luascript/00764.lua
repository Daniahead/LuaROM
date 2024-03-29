------------------------------------------------------------------------------------------------------------------------------------------------修煉公用函式草
function LuaFunc_HouseTrainHerblism(average)		--/*average為平均數即為期望值
	local rand = rand( 4 )+1
	local a = average*1/3
	local b = average*2/3
	local c = average*3/3
	local d = average*4/3
	if rand == 1 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_1") , 0 )	--/*你在閱讀的時候睡著了，白白浪費了時間
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_1") , 0 )	--/*你在閱讀的時候睡著了，白白浪費了時間
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..a..GetString("SC_Herblism"), 0 )	--/*你獲得？點
	AddSkillValue( OwnerID() , EM_SkillValueType_Herblism, a );
	sleep(5)
	elseif rand == 2 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_2") , 0 )	--/*你匆匆的讀了一遍，仍有許多地方看不懂
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_2") , 0)	--/*你匆匆的讀了一遍，仍有許多地方看不懂
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..b..GetString("SC_Herblism"), 0 )	--/*你獲得？點
	AddSkillValue( OwnerID() , EM_SkillValueType_Herblism, b );
	sleep(5)
	elseif rand == 3 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_3") , 0 )	--/*你的努力讓你的人物穩定成長
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_3") , 0 )	--/*你的努力讓你的人物穩定成長
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..c..GetString("SC_Herblism"), 0 )	--/*你獲得？點
	AddSkillValue( OwnerID() , EM_SkillValueType_Herblism, c );
	sleep(5)
	elseif rand == 4 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_4") , 0 )	--/*你有如醍醐灌頂，讀起書來事半功倍
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_4") , 0 )	--/*你有如醍醐灌頂，讀起書來事半功倍
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..d..GetString("SC_Herblism"), 0 )	--/*你獲得？點
	AddSkillValue( OwnerID() , EM_SkillValueType_Herblism, d );
	sleep(5)
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------修煉公用函式木
function LuaFunc_HouseTrainLumbering(average)		--/*average為平均數即為期望值
	local rand = rand( 4 )+1
	local a = average*1/3
	local b = average*2/3
	local c = average*3/3
	local d = average*4/3
	if rand == 1 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_1") , 0 )	--/*你在閱讀的時候睡著了，白白浪費了時間
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_1") , 0 )	--/*你在閱讀的時候睡著了，白白浪費了時間
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..a..GetString("SC_Lumbering"), 0 )	--/*你獲得？點
	AddSkillValue( OwnerID() , EM_SkillValueType_Lumbering, a );
	sleep(5)
	elseif rand == 2 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_2") , 0 )	--/*你匆匆的讀了一遍，仍有許多地方看不懂
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_2") , 0)	--/*你匆匆的讀了一遍，仍有許多地方看不懂
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..b..GetString("SC_Lumbering"), 0 )	--/*你獲得？點
	AddSkillValue( OwnerID() , EM_SkillValueType_Lumbering, b );
	sleep(5)
	elseif rand == 3 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_3") , 0 )	--/*你的努力讓你的人物穩定成長
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_3") , 0 )	--/*你的努力讓你的人物穩定成長
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..c..GetString("SC_Lumbering"), 0 )	--/*你獲得？點
	AddSkillValue( OwnerID() , EM_SkillValueType_Lumbering, c );
	sleep(5)
	elseif rand == 4 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_4") , 0 )	--/*你有如醍醐灌頂，讀起書來事半功倍
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_4") , 0 )	--/*你有如醍醐灌頂，讀起書來事半功倍
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..d..GetString("SC_Lumbering"), 0 )	--/*你獲得？點
	AddSkillValue( OwnerID() , EM_SkillValueType_Lumbering, d );
	sleep(5)
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------修煉公用函式礦
function LuaFunc_HouseTrainMining(average)		--/*average為平均數即為期望值
	local rand = rand( 4 )+1
	local a = average*1/3
	local b = average*2/3
	local c = average*3/3
	local d = average*4/3
	if rand == 1 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_1") , 0 )	--/*你在閱讀的時候睡著了，白白浪費了時間
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_1") , 0 )	--/*你在閱讀的時候睡著了，白白浪費了時間
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..a..GetString("SC_Mining"), 0 )	--/*你獲得？點
	AddSkillValue( OwnerID() , EM_SkillValueType_Mining, a );
	sleep(5)
	elseif rand == 2 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_2") , 0 )	--/*你匆匆的讀了一遍，仍有許多地方看不懂
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_2") , 0)	--/*你匆匆的讀了一遍，仍有許多地方看不懂
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..b..GetString("SC_Mining"), 0 )	--/*你獲得？點
	AddSkillValue( OwnerID() , EM_SkillValueType_Mining, b );
	sleep(5)
	elseif rand == 3 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_3") , 0 )	--/*你的努力讓你的人物穩定成長
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_3") , 0 )	--/*你的努力讓你的人物穩定成長
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..c..GetString("SC_Mining"), 0 )	--/*你獲得？點
	AddSkillValue( OwnerID() , EM_SkillValueType_Mining, c );
	sleep(5)
	elseif rand == 4 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_4") , 0 )	--/*你有如醍醐灌頂，讀起書來事半功倍
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_4") , 0 )	--/*你有如醍醐灌頂，讀起書來事半功倍
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..d..GetString("SC_Mining"), 0 )	--/*你獲得？點
	AddSkillValue( OwnerID() , EM_SkillValueType_Mining, d );
	sleep(5)
	end
end