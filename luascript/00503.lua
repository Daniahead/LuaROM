function LuaS_110755_0()
	if ReadRoleValue( OwnerID() , EM_RoleValue_LV ) == 10 and CheckFlag( OwnerID() ,540820 ) ~= 1 then
		local JOB = {[1] = GetString("SYS_CLASSNAME_WARRIOR") ,[2] = GetString("SYS_CLASSNAME_RANGER"),[3] = GetString("SYS_CLASSNAME_THIEF"),
				[4] = GetString("SYS_CLASSNAME_MAGE"), [5] = GetString("SYS_CLASSNAME_AUGUR"), [6] = GetString("SYS_CLASSNAME_KNIGHT")}
		local NAME = {[1] = GetObjNameByGUID(110004),[2] = GetObjNameByGUID(110008),[3] = GetObjNameByGUID(110307),
				[4] = GetObjNameByGUID(110309),[5] = GetObjNameByGUID(110312),[6] = GetObjNameByGUID(110318)}
		local X = ReadRoleValue( OwnerID() , EM_RoleValue_VOC )
--		SetSpeakDetail( OwnerID(), GetString("ST_110755_0")..JOB[X]..GetString("ST_110755_1")..NAME[X]..GetString("ST_110755_2"))
		SetSpeakDetail( OwnerID(), GetString("ST_110755_0"))
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_13"), "LuaS_110755_11", 0 ) --我想傳送到凡瑞娜絲城職業大廳
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_12"), "LuaS_110755_12", 0 ) 
		
	else
		LoadQuestOption( OwnerID() )
	
--		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_5"), "LuaS_110755_5", 0 ) 
--		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_1"), "LuaS_110755_1", 0 ) 
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_6"), "LuaS_110755_6", 0 ) --我想傳送到凡瑞娜絲城行政區
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_7"), "LuaS_110755_7", 0 ) --我想傳送到凡瑞娜絲城中央廣場區
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_8"), "LuaS_110755_8", 0 ) --我想傳送到凡瑞娜絲城城下東區
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_9"), "LuaS_110755_9", 0 ) --我想傳送到凡瑞娜絲城城下西區
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_11"), "LuaS_110755_11", 0 ) --我想傳送到凡瑞娜絲城職業大廳
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SC_111339_12"), "LuaS_111339_12", 0 ) --我想傳送到賢者之眼大廳
	end
	if CheckFlag( OwnerID()  , 540001 ) == false then
		SetFlag( OwnerID()  , 540001 , 1 )
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110755_1()

	SetSpeakDetail( OwnerID(), GetString("ST_110561_1"));
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACKTALK") , "LuaS_110755_0", 0 ); 	--我想回到剛剛的對話

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110755_5()

	CloseSpeak( OwnerID() );	--關閉對話視窗

	local SHP = SaveHomePoint( OwnerID() );
	if (SHP == true) then
		CastSpell( OwnerID() , OwnerID() , 491008 )
		ScriptMessage( OwnerID(), OwnerID(), 2, GetString("ST_TRANSFER_9")  , C_SYSTEM )	--畫面中間訊息：您將回程地點登記在凡瑞娜絲城正門出口！
		ScriptMessage( OwnerID(), OwnerID(), 0, GetString("ST_TRANSFER_9") , 0 )	--您將回程地點登記在凡瑞娜絲城正門出口！
	else
		ScriptMessage( OwnerID(), OwnerID(), 2, GetString("ST_TRANSFER_FAIL")  , C_SYSTEM )	--畫面中間訊息：回程地點登記失敗！
		ScriptMessage( OwnerID(), OwnerID(), 0, GetString("ST_TRANSFER_FAIL") , 0 )	--回程地點登記失敗！
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110755_6()

	CloseSpeak( OwnerID() );	--關閉對話視窗

	CastSpell( OwnerID() , OwnerID() , 491008 )
--	sleep( 5 )
	ChangeZone( OwnerID() , 2 , 0, 6372, 61, -3106, 50)	--凡瑞娜絲城行政區

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110755_7()

	CloseSpeak( OwnerID() );	--關閉對話視窗

	CastSpell( OwnerID() , OwnerID() , 491008 )
--	sleep( 5 )
	ChangeZone( OwnerID() , 2 , 0,4745, 115, -1968, 51)	--凡瑞娜絲城中央廣場區

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110755_8()

	CloseSpeak( OwnerID() );	--關閉對話視窗

	CastSpell( OwnerID() , OwnerID() , 491008 )
--	sleep( 5 )
	ChangeZone( OwnerID() , 2 , 0, 4472, 52, -35, 54)	--凡瑞娜絲城城下東區

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110755_9()

	CloseSpeak( OwnerID() );	--關閉對話視窗

	CastSpell( OwnerID() , OwnerID() , 491008 )
--	sleep( 5 )
	ChangeZone( OwnerID() , 2 , 0, 2908, 56, -798, 51)	--凡瑞娜絲城城下西區

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110755_10()

	CloseSpeak( OwnerID() );	--關閉對話視窗

	CastSpell( OwnerID() , OwnerID() , 491008 )
--	sleep( 5 )
	ChangeZone( OwnerID() , 2 , 0,2758,55,956,50)	--凡瑞娜絲城正門出口

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110755_12()

	local JOB = {[1] = GetString("SYS_CLASSNAME_WARRIOR") ,[2] = GetString("SYS_CLASSNAME_RANGER"),[3] = GetString("SYS_CLASSNAME_THIEF"),
			[4] = GetString("SYS_CLASSNAME_MAGE"), [5] = GetString("SYS_CLASSNAME_AUGUR"), [6] = GetString("SYS_CLASSNAME_KNIGHT")}
	local NAME = {[1] = GetObjNameByGUID(110004),[2] = GetObjNameByGUID(110008),[3] = GetObjNameByGUID(110307),
			[4] = GetObjNameByGUID(110309),[5] = GetObjNameByGUID(110312),[6] = GetObjNameByGUID(110318)}
	local X = ReadRoleValue( OwnerID() , EM_RoleValue_VOC )
	SetSpeakDetail( OwnerID(), GetString("ST_110755_3")..JOB[X]..GetString("ST_110755_1")..NAME[X]..GetString("ST_110755_4"))
	
	AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_6"), "LuaS_110755_6", 0 ) --我想傳送到凡瑞娜絲城行政區
	AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_7"), "LuaS_110755_7", 0 ) --我想傳送到凡瑞娜絲城中央廣場區
	AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_8"), "LuaS_110755_8", 0 ) --我想傳送到凡瑞娜絲城城下東區
	AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_9"), "LuaS_110755_9", 0 ) --我想傳送到凡瑞娜絲城城下西區
	AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_11"), "LuaS_110728_11", 0 ) --我想傳送到凡瑞娜絲城職業大廳

end
--------------------------------------------------------------------------------------------------------------------------