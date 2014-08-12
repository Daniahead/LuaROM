function LuaI_100566()
	SetPlot( OwnerID() , "touch" , "LuaI_100566_Touch" , 50 )
end

function LuaI_100566_Touch()
	BeginPlot( TargetID() , "LuaI_100566_Open" , 0 )
end

function LuaI_100566_Open()

	local ObjID =  TargetID() 
	local result = false;
	if( ReadRoleValue( OwnerID() ,EM_RoleValue_IsDead) == 1 ) then
		return;
	end

	if( CountBodyItem( ObjID , 201622 ) <= 0  or  CountBodyItem( ObjID , 201621 ) <= 0 ) then
		ScriptMessage( ObjID,ObjID,0,GetString("EM_100566_0"), 0 );	
		return;	
	end

	BeginCastBar( ObjID , GetString("EM_100566_1") , 50 , ruFUSION_ACTORSTATE_CRAFTING_BEGIN , ruFUSION_ACTORSTATE_CRAFTING_END , 0 );
	while 1 do
		sleep( 2 );
		local CastBarStatus = CheckCastBar( ObjID  );
		if ( CastBarStatus ~= 0 ) then 
			if ( CastBarStatus > 0) then -- жие\
				result = true
				EndCastBar( ObjID  , CastBarStatus )
				break;
			elseif ( CastBarStatus < 0 ) then -- ев▒╤
				result = false
				EndCastBar( ObjID  , CastBarStatus )
				return;
			end
		end
	end

	if ( result == true and CountBodyItem(ObjID , 201621) > 0 and CountBodyItem(ObjID , 201622) > 0 ) then
		SetPlot( OwnerID() , "touch" , "" , 50 )
		if( KillID( ObjID  , OwnerID() ) == true and DelBodyItem( ObjID , 201621 , 1) == true and DelBodyItem( ObjID , 201622 , 1) ) == true then 
			ScriptMessage( ObjID,ObjID,0,GetString("EM_100566_3"), 0 );
			local Player = LuaFunc_PartyData(ObjID)
			for i = 1 , Player[0] , 1 do
				if CheckAcceptQuest( Player[i] , 420555 ) == true and CountBodyItem( Player[i] , 200681) == 0 then
					GiveBodyItem( Player[i] , 200681 , 1 )
				end 
			end

		end
	end

--	DelObj( OwnerID() )

end

function LuaI_dead_100261()
	GiveBodyItem( TargetID() ,201621, 1 )
	return true
end

function LuaI_dead_100262()
	GiveBodyItem(TargetID() , 201622 , 1 )
	return true
end