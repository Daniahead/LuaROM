-------------------------------------------------------------------------------------/*材才ゅ猭皚
function LuaQ_421106_0()
	SetPlot( OwnerID() , "range" , "LuaQ_421106_1" , 50 )
end

function LuaQ_421106_1()
	if CheckAcceptQuest( OwnerID() , 421106 ) == true then
		ScriptMessage( OwnerID() , OwnerID() , 1 , GetString("SC_421106") , 0 )
		SetFlag( OwnerID() , 541282 , 1)
	end
end
-------------------------------------------------------------------------------------/*材才ゅ猭皚
function LuaQ_421106_2()
	SetPlot( OwnerID() , "range" , "LuaQ_421106_3" , 50 )
end

function LuaQ_421106_3()
	if CheckAcceptQuest( OwnerID() , 421106 ) == true then
		ScriptMessage( OwnerID() , OwnerID() , 1 , GetString("SC_421106") , 0 )
		SetFlag( OwnerID() , 541283 , 1)
	end
end
-------------------------------------------------------------------------------------/*材才ゅ猭皚
function LuaQ_421106_4()
	SetPlot( OwnerID() , "range" , "LuaQ_421106_5" , 50 )
end

function LuaQ_421106_5()
	if CheckAcceptQuest( OwnerID() , 421106 ) == true then
		ScriptMessage( OwnerID() , OwnerID() , 1 , GetString("SC_421106") , 0 )
		SetFlag( OwnerID() , 541284 , 1)
	end
end
-------------------------------------------------------------------------------------/*才ゅ畒
function LuaQ_421107_0()
	SetPlot( OwnerID() , "range" , "LuaQ_421107_1" , 50 )
end

function LuaQ_421107_1()
	if CheckAcceptQuest( OwnerID() , 421107 ) == true then
		ScriptMessage( OwnerID() , OwnerID() , 1 , GetString("SC_421107") , 0 )
		SetFlag( OwnerID() , 541285 , 1)
	end
end

function LuaQ_421107_2()
	CastSpell( OwnerID() , OwnerID() , 490312)
	sleep(5)
end
