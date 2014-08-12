function LuaS_421159_0()

	if CheckAcceptQuest( OwnerID() , 421159 ) == true and CheckFlag( OwnerID() , 541299 ) == true then
		SetSpeakDetail( OwnerID(), GetString("SC_421159_1")   ); --/*我知道了，別打我...別打我...我說就是了。
		AddSpeakOption(  OwnerID(), TargetID( ), GetString("SC_421159_2"),  "LuaS_421159_2",  0 ); --/*詢問奧圖
	else		
		LoadQuestOption( OwnerID() );
		if CheckAcceptQuest( OwnerID() , 421159 ) == true and CheckFlag( OwnerID() , 541299 ) == false then
			AddSpeakOption(  OwnerID(), TargetID( ), GetString("SC_421159_0"),  "LuaS_421159_1",  0 ); --/*將茜妮的話告訴奧圖
		end
	end
end

function LuaS_421159_1()
	SetSpeakDetail( OwnerID(), GetString("SC_421159_3")   );
	--/*什麼不尋常的東西？我才沒有碰什麼東西！混帳！
	--/*你們這些黑曜騎士團的走狗！黑曜騎士團算什麼？
	--*抓一堆人去死還不是打不贏獨眼巨人，只會在鎮裡頤指氣使，現在還可以隨便就懷疑人啊！
	if CheckAcceptQuest( OwnerID() , 421159 ) == true and CheckFlag( OwnerID() , 541296 ) == false then
		AddSpeakOption(  OwnerID(), TargetID( ), GetString("SC_421159_4"),  "LuaS_421159_3",  0 ); --/*用武力讓奧圖冷靜
	end
end

function LuaS_421159_2()
	SetSpeakDetail( OwnerID(), GetString("SC_421159_5")   );
	--/*我真的沒有發現什麼奇怪的東西。
	--/*不過...龍牙冰湖湖底的泥沙混著一些熔渣，我最近常常偷偷撈那些熔渣起來...
	--/*那些熔渣的味道讓我很難受，但是裡面有一些金屬可以提煉出來，我就把黑曜
	--/*騎士團配給的金屬偷偷藏起來，用這些金屬偷幫他們修補盔甲...
	--/*這就是全部了！要怎麼處罰我都接受！但別再找人來打我了...
	SetFlag( OwnerID() , 541296 , 1 )
end

function LuaS_421159_3()
	CloseSpeak(OwnerID())
	DisableQuest( TargetID() , true )

	BeginPlot( TargetID() , "LuaS_421159_4" , 0 )
end

function LuaS_421159_4()
	Hide( OwnerID() )
	WriteRoleValue( OwnerID() , EM_RoleValue_Pid , 10 )
	local DBID = ReadRoleValue( TargetID(), EM_RoleValue_DBID ) 
	local Otto = LuaFunc_CreateObjByObj ( 100736, OwnerID() )
	SetAttack( Otto, TargetID() )
	SetPlot( Otto , "dead" , "LuaS_421159_dead" , 40 )
	BeginPlot( Otto , "LuaS_421159_Reset" , 0 ) 
	Say( Otto , GetString("SC_421159_7") ) --/*講打啊？來啊！
	while 1 do
		if CheckID( Otto ) ~= true or ReadRoleValue( Otto , EM_RoleValue_IsNPC ) ~= 1 then
			say( Otto , "Check OK " )
			sleep(10)
			Show( OwnerID() , 0 )
			sleep(10)
			if Luafunc_Player_Alive( TargetID(),DBID,250 ) == true and ReadRoleValue( TargetID(), EM_RoleValue_IsDead) ~= 1 and CheckFlag( TargetID() , 541299 ) == true then
				Say( OwnerID() , GetString("SC_421159_6") ) --/*別打了！別打了！我說就是了。
				PlayMotion( OwnerID() ,ruFUSION_ACTORSTATE_EMOTE_SURRENDER )
			end
			sleep( 50 )
			WriteRoleValue( OwnerID() , EM_RoleValue_PID , 0 )
			DisableQuest( OwnerID() , false )
			break
		end
		Sleep( 20 )
	end
end

function LuaS_421159_dead()

	if  ReadRoleValue( TargetID(), EM_RoleValue_IsDead) ~= 1 and CheckAcceptQuest( TargetID() , 421159 ) == true then 
		SetFlag( TargetID() , 541299, 1 )
	end	
	Delobj( OwnerID() )
	return false
end

function LuaS_421159_Reset()
	LuaFunc_Obj_Suicide(10)
end