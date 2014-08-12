function LuaFunc_InitZone_6( RoomID )

	--Z6礦7旗標編號580150 X61
	--Z6木7旗標編號580151 X61
	--Z6草7旗標編號580152 X61

	--Z6礦8_1旗標編號580153 X91
	--Z6木8_1旗標編號580154 X91
	--Z6草8_1旗標編號580155 X91

	--Z6礦8_2旗標編號580156 X51
	--Z6木8_2旗標編號580157 X51
	--Z6草8_2旗標編號580158 X51


	-- GenerateMine( RoomID, FlagID, MineID, Count );

	GenerateMine( RoomID, 580150, 560007, 31 );
	GenerateMine( RoomID, 580153, 560008, 46 );
	GenerateMine( RoomID, 580156, 560008, 26 );
	GenerateMine( RoomID, 580150, 560058, 2 );
	GenerateMine( RoomID, 580150, 560059, 1 );
	GenerateMine( RoomID, 580153, 560059, 5 );
	GenerateMine( RoomID, 580156, 560059, 3 );

	GenerateMine( RoomID, 580151, 560024, 31 );
	GenerateMine( RoomID, 580154, 560025, 46 );
	GenerateMine( RoomID, 580157, 560025, 26 );
	GenerateMine( RoomID, 580151, 560065, 2 );
	GenerateMine( RoomID, 580151, 560066, 1 );
	GenerateMine( RoomID, 580154, 560066, 5 );
	GenerateMine( RoomID, 580157, 560066, 3 );

	GenerateMine( RoomID, 580152, 560041, 31 );
	GenerateMine( RoomID, 580155, 560042, 46 );
	GenerateMine( RoomID, 580158, 560042, 26 );
	GenerateMine( RoomID, 580152, 560072, 2 );
	GenerateMine( RoomID, 580152, 560073, 1 );
	GenerateMine( RoomID, 580155, 560073, 5 );
	GenerateMine( RoomID, 580158, 560073, 3 );
end

