function Lua_GoHouse_Item_Check()
	local Obj = Role:new( OwnerID() );
	local homenumber = Read_Role_HomeNumber( OwnerID() )

	if ( homenumber == -1 ) then
		ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_NONEHOME") , 0 )	--你不能在此使用。
		return false
	end

	if Obj:ZoneID() > 0 then
		Return true
	else
		ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_CANTHOME") , 0 )	--你不能在此使用。
		return false;
	end

end

function Lua_GoHouse_Item()

	local Obj = Role:new( OwnerID() );
	local ZoneID = Obj:ZoneID() -1000*math.floor(Obj:ZoneID() / 1000 )
	if ZoneID> 0 and  ZoneID< 100 and Obj:RoomID() == 0 then
		local Ret = SaveReturnPos( OwnerID() , Obj:ZoneID() , Obj:X() , Obj:Y() , Obj:Z() , Obj:Dir() );
		if( Ret == false ) then
			ScriptMessage( OwnerID(), OwnerID(), 0, "Save Location Error" , 0 )	
			return;
		end
	elseif ZoneID> 100 or Obj:RoomID() ~= 0 then
		local Ret = SaveReturnPos_ZoneDef( OwnerID() )
		if( Ret == false ) then
			ScriptMessage( OwnerID(), OwnerID(), 0, "Save Location Error" , 0 )	
			return;
		end
	else
			ScriptMessage( OwnerID(), OwnerID(), 0, "System Error" , 0 )	
			return;
	end
	
	OpenVisitHouse( true ); --回自己房屋
end
