function CoolClothCombo()
	Beginplot( OwnerID() ,"CoolClothLove", 0 )
end

function CoolClothLove()
	local CoolClothName = { "SYS_CLASSNAME_WARRIOR", "SYS_CLASSNAME_RANGER", "SYS_CLASSNAME_THIEF", "SYS_CLASSNAME_MAGE", "SYS_CLASSNAME_AUGUR", "SYS_CLASSNAME_KNIGHT", "SO_EXIT" }
	--{ "�Ԥh", "�C�L", "�v���", "�k�v", "���q", "�M�h", "���}" }

	local n = 0
	local DialogStatus = 0

	local Player = OwnerID()

	DialogCreate( Player , EM_LuaDialogType_Select , "What Cool Cloth Do You Want to Wear ?" )
	for i = 1, table.getn( CoolClothName ) do
		DialogSelectStr( Player , GetString(CoolClothName[i]) )
	end

	if( DialogSendOpen( Player ) == false ) then 
		ScriptMessage( Player , Player , 1 , GetString("SYS_FIXEQ_DATA_ERROR") , 0 )	--��ưe�X�����D
		return 0
	end

	while true do
		Sleep( 5 )
		n = n + 1
		DialogStatus = DialogGetResult( Player )
		if n > 120 then -- ���L�a�j��A120 = �@����
			ScriptMessage( Player , Player , 0, "Wait a long time & EXIT!!", 0 )
			DialogClose( Player )
			break
		else
		end

		if ( DialogStatus == 6 ) or ( DialogStatus == -1 ) then
			DialogClose( Player )
			break
		elseif ( DialogStatus == -2 ) then
		else
			local Wear = CoolClothWear( DialogStatus )
			DialogClose( Player )
			break
		end
	end
end

function CoolClothWear( Part )
	local CoolClothWarrior = 221768
	local CoolClothRanger = 221775
	local CoolClothThief = 221782
	local CoolClothMage = 221789
	local CoolClothAugur = 221796
	local CoolClothKnight = 221761
	local CoolClothList = { CoolClothWarrior , CoolClothRanger , CoolClothThief , CoolClothMage , CoolClothAugur , CoolClothKnight }

	local Obj = Role:new( OwnerID() )
	--Obj:SetJob( 1 );	-- �]�w���Ԥh
	--Obj:SetLevel( 1 );
	--�]�w���a���Ŭ� 1
	--Obj:SetExp( 0 );
	--Obj:SetJob_Sub( 4 );	--�]�w��¾���k�v

	--�]�w�t�I�I��
	--Obj:SetStr( 0 )
	--Obj:SetSta( 0 )
	--Obj:SetAgi( 0 )
	--Obj:SetInt( 0 )
	--Obj:SetMnd( 0 )

	--�]�w���a�˳�
	Obj:SetEq( EM_EQWearPos_Head , CoolClothList[Part+1]+0 );
	Obj:SetEq( EM_EQWearPos_Clothes , CoolClothList[Part+1]+1 );
	Obj:SetEq( EM_EQWearPos_Belt , CoolClothList[Part+1]+2 );
	Obj:SetEq( EM_EQWearPos_Pants , CoolClothList[Part+1]+3 );
	Obj:SetEq( EM_EQWearPos_Shoes , CoolClothList[Part+1]+4 );
	Obj:SetEq( EM_EQWearPos_Shoulder, CoolClothList[Part+1]+5 );
	Obj:SetEq( EM_EQWearPos_Gloves , CoolClothList[Part+1]+6 );
end
