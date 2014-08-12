function LuaI_ReflectionEnter()
	SetPlot( OwnerID() , "Collision" , "Enter_Reflection" , 0 );
end

function Enter_Reflection()
	--if CheckFlag( OwnerID()  , 540781 ) == true then
		ScriptMessage( OwnerID(), OwnerID(), 0, "你穿過魔法障壁，進入了鏡之墓城！" , 0 );
		ChangeZone( OwnerID() , 10 , -1, 1334, 320, 2911, 163);
	--else
		--ScriptMessage( OwnerID(), OwnerID(), 0, "你被一層魔法障壁擋住，無法再前進！" , 0 );
	--end

end

function LuaI_ReflectionOut()
	SetPlot( OwnerID() , "Collision" , "Out_Reflection" , 0 );
end

function Out_Reflection()

	--ScriptMessage( OwnerID(), OwnerID(), 0, "你穿過魔法障壁，進入了鏡之墓城！" , 0 );
	ChangeZone( OwnerID() , 4 , 0, -3838, 371, -830, 163);

end
