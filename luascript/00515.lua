function LuaFunc_InitZone_2( RoomID )

	--Z2礦2旗標編號580126 X91
	--Z2木2旗標編號580127 X91
	--Z2草2旗標編號580128 X91

	--Z2礦3旗標編號580129 X101
	--Z2木3旗標編號580130 X101
	--Z2草3旗標編號580131 X101

	-- GenerateMine( RoomID, FlagID, MineID, Count );

	GenerateMine( RoomID, 580126, 560002, 46 );
	GenerateMine( RoomID, 580129, 560003, 51 );
	GenerateMine( RoomID, 580126, 560055, 2 );
	GenerateMine( RoomID, 580126, 560056, 3 );
	GenerateMine( RoomID, 580129, 560056, 5 );

	GenerateMine( RoomID, 580127, 560019, 46 );
	GenerateMine( RoomID, 580130, 560020, 51 );
	GenerateMine( RoomID, 580127, 560062, 2 );
	GenerateMine( RoomID, 580127, 560063, 3 );
	GenerateMine( RoomID, 580130, 560063, 5 );

	GenerateMine( RoomID, 580128, 560036, 46 );
	GenerateMine( RoomID, 580131, 560037, 51 );
	GenerateMine( RoomID, 580128, 560069, 2 );
	GenerateMine( RoomID, 580128, 560070, 3 );
	GenerateMine( RoomID, 580131, 560070, 5 );

end

