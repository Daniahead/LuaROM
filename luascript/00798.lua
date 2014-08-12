function LuaS_420083_0()

	local heroID = GetName( TargetID() )
	local String_1 = GetString("SC_420083_0")..heroID..GetString("SC_420083_1")
	Say(OwnerID(),GetString("SC_420083_0")..heroID..GetString("SC_420083_1"))

end



