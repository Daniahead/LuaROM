function LuaQ_421289_BeforeClick()
	return true
end
function LuaQ_421289_AfterClick()
		local Goblin = LuaFunc_CreateObjByObj ( 100408, TargetID() ) --怪物編號
		SetAttack( Goblin , OwnerID() )
		BeginPlot(Goblin,"LuaQ_421177_Sui",0)
		ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_420459_1"), 0 ); --發生一陣騷動，由石碑中跑出
	sleep(60)
return true
end