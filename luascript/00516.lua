function LuaFunc_InitZone_1( RoomID )

	--Z1礦1旗標編號580120 X81
	--Z1木1旗標編號580121 X81
	--Z1草1旗標編號580122 X81

	--Z1礦2旗標編號580123 X41
	--Z1木2旗標編號580124 X41
	--Z1草2旗標編號580125 X41

	-- GenerateMine( RoomID, FlagID, MineID, Count );

	GenerateMine( RoomID, 580120, 560001, 41 );
	GenerateMine( RoomID, 580123, 560002, 21 );
	GenerateMine( RoomID, 580120, 560055, 4 );
	GenerateMine( RoomID, 580123, 560055, 1 );
	GenerateMine( RoomID, 580123, 560056, 1 );


	GenerateMine( RoomID, 580121, 560018, 41 );
	GenerateMine( RoomID, 580124, 560019, 21 );
	GenerateMine( RoomID, 580121, 560062, 4 );
	GenerateMine( RoomID, 580124, 560062, 1 );
	GenerateMine( RoomID, 580124, 560063, 1 );

	GenerateMine( RoomID, 580122, 560035, 41 );
	GenerateMine( RoomID, 580125, 560036, 21 );
	GenerateMine( RoomID, 580122, 560069, 4 );
	GenerateMine( RoomID, 580125, 560069, 1 );
	GenerateMine( RoomID, 580125, 560070, 1 );

end

