function LuaFunc_InitZone_4( RoomID )

	--Z4�q3�X�нs��580132 X31
	--Z4��3�X�нs��580133 X31
	--Z4��3�X�нs��580134 X31

	--Z4�q4�X�нs��580135 X101
	--Z4��4�X�нs��580136 X101
	--Z4��4�X�нs��580137 X101

	--Z4�q5�X�нs��580138 X51
	--Z4��5�X�нs��580139 X51
	--Z4��5�X�нs��580140 X51

	-- GenerateMine( RoomID, FlagID, MineID, Count );

	GenerateMine( RoomID, 580132, 560003, 16 );
	GenerateMine( RoomID, 580135, 560004, 51 );
	GenerateMine( RoomID, 580138, 560005, 26 );
	GenerateMine( RoomID, 580132, 560056, 2 );
	GenerateMine( RoomID, 580135, 560057, 5 );
	GenerateMine( RoomID, 580138, 560057, 2 );
	GenerateMine( RoomID, 580138, 560058, 1 );

	GenerateMine( RoomID, 580133, 560020, 16 );
	GenerateMine( RoomID, 580136, 560021, 51 );
	GenerateMine( RoomID, 580139, 560022, 26 );
	GenerateMine( RoomID, 580133, 560063, 2 );
	GenerateMine( RoomID, 580136, 560064, 5 );
	GenerateMine( RoomID, 580139, 560064, 2 );
	GenerateMine( RoomID, 580139, 560065, 1 );

	GenerateMine( RoomID, 580134, 560037, 16 );
	GenerateMine( RoomID, 580137, 560038, 51 );
	GenerateMine( RoomID, 580140, 560039, 26 );
	GenerateMine( RoomID, 580134, 560070, 2 );
	GenerateMine( RoomID, 580137, 560071, 5 );
	GenerateMine( RoomID, 580140, 560071, 2 );
	GenerateMine( RoomID, 580140, 560072, 1 );
end

