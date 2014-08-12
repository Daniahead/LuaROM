function SetEq_Warrior_Lv20()

	local Obj = Role:new( OwnerID() )
	Obj:SetJob( 1 );	-- 設定為戰士	
	Obj:SetLevel( 20 );
	Obj:SetExp( 0 );

	--設定配點點數
	Obj:SetStr( 0 )
	Obj:SetSta( 0 )
	Obj:SetAgi( 0 )
	Obj:SetInt( 0 )
	Obj:SetMnd( 0 )

	--設定玩家裝備
	Obj:SetEq( EM_EQWearPos_Head , 0 );
	Obj:SetEq( EM_EQWearPos_Gloves , 220296  );
	Obj:SetEq( EM_EQWearPos_Shoes , 220313 );
	Obj:SetEq( EM_EQWearPos_Clothes , 220232  );
	Obj:SetEq( EM_EQWearPos_Pants , 220274 );
	Obj:SetEq( EM_EQWearPos_Back , 0 );
	Obj:SetEq( EM_EQWearPos_Belt , 220256 );
	Obj:SetEq( EM_EQWearPos_Shoulder, 0 );
	Obj:SetEq( EM_EQWearPos_Necklace, 0 );
	Obj:SetEq( EM_EQWearPos_Ring1, 0 );
	Obj:SetEq( EM_EQWearPos_Ring2, 0 );
	Obj:SetEq( EM_EQWearPos_Earring1, 0  );
	Obj:SetEq( EM_EQWearPos_Earring2 , 0 );
	Obj:SetEq( EM_EQWearPos_MainHand, 210089 );
	Obj:SetEq( EM_EQWearPos_SecondHand, 0  );
	Obj:SetEq( EM_EQWearPos_Ammo, 0  );
	Obj:SetEq( EM_EQWearPos_Bow , 0  );


end