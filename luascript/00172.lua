function SetEq_Knight_Lv5()

	local Obj = Role:new( OwnerID() )
	Obj:SetJob( 6 );	-- �]�w���M�h
	Obj:SetLevel( 5 );
	Obj:SetExp( 0 );

	--�]�w�t�I�I��
	Obj:SetStr( 0 )
	Obj:SetSta( 0 )
	Obj:SetAgi( 0 )
	Obj:SetInt( 0 )
	Obj:SetMnd( 0 )

	--�]�w���a�˳�
	Obj:SetEq( EM_EQWearPos_Head , 0 );
	Obj:SetEq( EM_EQWearPos_Gloves , 0  );
	Obj:SetEq( EM_EQWearPos_Shoes , 220310 );
	Obj:SetEq( EM_EQWearPos_Clothes , 220228  );
	Obj:SetEq( EM_EQWearPos_Pants , 220270 );
	Obj:SetEq( EM_EQWearPos_Back , 0 );
	Obj:SetEq( EM_EQWearPos_Belt , 220253 );
	Obj:SetEq( EM_EQWearPos_Shoulder, 0 );
	Obj:SetEq( EM_EQWearPos_Necklace, 0 );
	Obj:SetEq( EM_EQWearPos_Ring1, 0 );
	Obj:SetEq( EM_EQWearPos_Ring2, 0 );
	Obj:SetEq( EM_EQWearPos_Earring1, 0  );
	Obj:SetEq( EM_EQWearPos_Earring2 , 0 );
	Obj:SetEq( EM_EQWearPos_MainHand, 210202 );
	Obj:SetEq( EM_EQWearPos_SecondHand, 0  );
	Obj:SetEq( EM_EQWearPos_Ammo, 0  );
	Obj:SetEq( EM_EQWearPos_Bow , 0  );

end