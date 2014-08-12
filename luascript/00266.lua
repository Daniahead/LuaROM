function LuaQ_420554_AfterClickObj()
	ScriptMessage( OwnerID(), TargetID(), 0, GetString("EM_420255"), 0 )	--/*你在破碎的石碑中看到一個刻了符文的綠色石盤。
	BeginPlot( TargetID() , "LuaQ_420554_Play" , 0 )
	return 1
end
----------------------------------------------------
function LuaQ_420554_Play()

	local String  
	local Makhaz1
	local Makhaz2
	local Disciple
	DisableQuest( OwnerID() , true )
	Disciple = CreateObjByFlag( 100220 , 580028 , 0 , 1 )
	SetRoleCamp( Disciple , "NPC" ) 
	AddToPartition( Disciple , 0)
	sleep( 10 )
	Say( Disciple , GetString("SAY_420255_1") )
	sleep( 10 )
	Say( Disciple , GetString("SAY_420255_2") )
	SetRoleCamp( Disciple , "Monster" ) 
	Hide( Disciple )
	Show(Disciple,0)
	Makhaz1 = CreateObjByFlag( 100221 , 580028 , 1 , 1 )
	AddToPartition( Makhaz1 , 0)
	Makhaz2 = CreateObjByFlag( 100221 , 580028 , 2 , 1 )
	AddToPartition( Makhaz2 , 0)
	BeginPlot( Disciple ,"LuaQ_420554_Sui",0)
	SetPlot( Disciple,"Dead","LuaI_100220_Dead",40 )
	BeginPlot( Makhaz1 ,"LuaQ_420554_Sui",0)
	SetPlot( Makhaz1,"Dead","LuaQ_420554_Dead",40 )
	BeginPlot( Makhaz2 ,"LuaQ_420554_Sui",0)
	SetPlot( Makhaz2,"Dead","LuaQ_420554_Dead",40 )
	SetAttack( Disciple , TargetID() )
	SetAttack( Makhaz1 , TargetID() )
	SetAttack( Makhaz2 , TargetID() )

	while 1 do
		sleep( 30 )
		if CheckID( Disciple ) == false and CheckID( Makhaz1 ) == false and CheckID( Makhaz2 ) == false then
			DisableQuest( OwnerID() , false )
			break
		end
		sleep( 30 )
	end
end
---------------------------------------------------------------------------------
function LuaQ_420554_Sui()
	LuaFunc_Obj_Suicide(300)
end
---------------------------------------------------------------------------------
function LuaI_100220_Dead()

	BeginPlot( OwnerID() , "LuaFunc_DeadPlay" , 0 )
	return false
end
---------------------------------------------------------------------------------
function LuaQ_420554_Dead()
	BeginPlot( OwnerID() , "LuaFunc_DeadPlay" , 0 )
	return false	
end
