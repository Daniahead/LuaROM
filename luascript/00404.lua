function LuaInit_110346()
	SetCursorType( OwnerID(), 1 );
	SetPlot( OwnerID() , "touch" , "LuaCollision_110346" , 150 );

end


function LuaCollision_110346()

	Say( OwnerID(), "FUCK YOU" );
	--ChangeZone( OwnerID(), 6, 0, 1278.6, 318.9, 2907.4, 181 );

	BeginCastBar( OwnerID(), "TEST", 50, ruFUSION_ACTORSTATE_CRAFTING_BEGIN, ruFUSION_ACTORSTATE_CRAFTING_END, 0 );

	while 1 do 

		Sleep( 5 );

		local CheckStatus = CheckCastBar( OwnerID() );

		if( CheckStatus ~= 0 ) then

			if( CheckStatus > 0 ) then
				-- жие\
				EndCastBar( OwnerID(), CheckStatus );
				Say( OwnerID(), "GOOD" );
				break;
			else
				-- ев▒╤
				EndCastBar( OwnerID(), CheckStatus );
				Say( OwnerID(), "FAILD" );
				break;
			end
		end			

		

	end
end