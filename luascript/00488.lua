function LuaFunc_InitZone_5( RoomID )

	--Z5礦5旗標編號580141 X41
	--Z5木5旗標編號580142 X41
	--Z5草5旗標編號580143 X41

	--Z5礦6旗標編號580144 X101
	--Z5木6旗標編號580145 X101
	--Z5草6旗標編號580146 X101

	--Z5礦7旗標編號580147 X61
	--Z5木7旗標編號580148 X61
	--Z5草7旗標編號580149 X61

	-- GenerateMine( RoomID, FlagID, MineID, Count );

	GenerateMine( RoomID, 580141, 560005, 21 );
	GenerateMine( RoomID, 580144, 560006, 51 );
	GenerateMine( RoomID, 580147, 560007, 31 );
	GenerateMine( RoomID, 580141, 560057, 1 );
	GenerateMine( RoomID, 580141, 560058, 1 );
	GenerateMine( RoomID, 580144, 560058, 5 );
	GenerateMine( RoomID, 580147, 560058, 1 );
	GenerateMine( RoomID, 580147, 560059, 2 );

	GenerateMine( RoomID, 580142, 560022, 21 );
	GenerateMine( RoomID, 580145, 560023, 51 );
	GenerateMine( RoomID, 580148, 560024, 21 );
	GenerateMine( RoomID, 580142, 560064, 1 );
	GenerateMine( RoomID, 580142, 560065, 1 );
	GenerateMine( RoomID, 580145, 560065, 5 );
	GenerateMine( RoomID, 580148, 560065, 1 );
	GenerateMine( RoomID, 580148, 560066, 2 );

	GenerateMine( RoomID, 580143, 560039, 21 );
	GenerateMine( RoomID, 580146, 560040, 51 );
	GenerateMine( RoomID, 580149, 560041, 21 );
	GenerateMine( RoomID, 580143, 560071, 1 );
	GenerateMine( RoomID, 580143, 560072, 1 );
	GenerateMine( RoomID, 580146, 560072, 5 );
	GenerateMine( RoomID, 580149, 560072, 1 );
	GenerateMine( RoomID, 580149, 560073, 2 );

end

