function SetEq_Suez_WorkerA()
	local Obj = Role:new( OwnerID() )
	-- 設定玩家等級為 100
	Obj:SetLevel( 100 );
	Obj:SetJob( 3 );	-- 設定為盜賊
	Obj:SetExp( 0 );
	Obj:SetJob( 0 );	-- 設定為Wiz
	Obj:SetLevel( 100 );
	Obj:SetJob_Sub( 3 );	--設定副職為盜賊

	--設定配點點數
	Obj:SetStr( 0 )
	Obj:SetSta( 0 )
	Obj:SetAgi( 0 )
	Obj:SetInt( 0 )
	Obj:SetMnd( 0 )

	--設定玩家裝備
	Obj:SetEq( EM_EQWearPos_Head , 220213 );
	Obj:SetEq( EM_EQWearPos_Gloves , 220305  );
	Obj:SetEq( EM_EQWearPos_Shoes , 220322);
	Obj:SetEq( EM_EQWearPos_Clothes , 220708  );
	Obj:SetEq( EM_EQWearPos_Pants , 220288);
	Obj:SetEq( EM_EQWearPos_Back , 0 );
	Obj:SetEq( EM_EQWearPos_Belt , 0 );
	Obj:SetEq( EM_EQWearPos_Shoulder, 220856);
	Obj:SetEq( EM_EQWearPos_Necklace, 0 );
	Obj:SetEq( EM_EQWearPos_Ring1, 0 );
	Obj:SetEq( EM_EQWearPos_Ring2, 0 );
	Obj:SetEq( EM_EQWearPos_Earring1, 0  );
	Obj:SetEq( EM_EQWearPos_Earring2 , 0 );
	Obj:SetEq( EM_EQWearPos_MainHand, 210407);	
	Obj:SetEq( EM_EQWearPos_SecondHand,220778);
end

function All_Skill_20_Suez()
	WriteRoleValue( OwnerID() ,EM_RoleValue_Skill_Tailor,20)
	WriteRoleValue( OwnerID() ,EM_RoleValue_Skill_MakeArmor,20)
	WriteRoleValue( OwnerID() ,EM_RoleValue_Skill_BlackSmith,20)
	WriteRoleValue( OwnerID() ,EM_RoleValue_Skill_Cook,20)
	WriteRoleValue( OwnerID() ,EM_RoleValue_Skill_Carpenter,20)
	WriteRoleValue( OwnerID() ,EM_RoleValue_Skill_Alchemy,20)
	WriteRoleValue( OwnerID() ,EM_RoleValue_Skill_Herblism,20)
	WriteRoleValue( OwnerID() ,EM_RoleValue_Skill_Lumbering,20)
	WriteRoleValue( OwnerID() ,EM_RoleValue_Skill_Mining,20)
end

function All_Skill_40_Suez()
	WriteRoleValue( OwnerID() ,EM_RoleValue_Skill_Tailor,40)
	WriteRoleValue( OwnerID() ,EM_RoleValue_Skill_MakeArmor,40)
	WriteRoleValue( OwnerID() ,EM_RoleValue_Skill_BlackSmith,40)
	WriteRoleValue( OwnerID() ,EM_RoleValue_Skill_Cook,40)
	WriteRoleValue( OwnerID() ,EM_RoleValue_Skill_Carpenter,40)
	WriteRoleValue( OwnerID() ,EM_RoleValue_Skill_Alchemy,40)
	WriteRoleValue( OwnerID() ,EM_RoleValue_Skill_Herblism,40)
	WriteRoleValue( OwnerID() ,EM_RoleValue_Skill_Lumbering,40)
	WriteRoleValue( OwnerID() ,EM_RoleValue_Skill_Mining,40)
end