function SongSong_Bag_LV19( Option )

	local PlayerID = OwnerID()
	local PackageID = 201861		-- ��N�y§�]
	local NeedSpace = 2 + 1
	local NeedSpaceStatus  = Check_Bag_Space( PlayerID , NeedSpace  )

	-- �Z��
	local WeaponGroup = {  }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ����
	local ArmorGroup = {  }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ���~
	local AccessGroup = {  }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- �Ĥ�
	local HPPotionGroup = { 10 , 10 , 10 , 10 , 10 , 10 }					-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	local MPPotionGroup = { 0 , 0 , 0 , 0 , 0 , 0 }					-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	local HPPotionID = 201892
	local MPPotionID = 0
	-- �@��
	local HuFuGroup = {  }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- �S�O�]
	local SpecBagGroup = { 201876 , 201876 , 201876 , 201876 , 201876 , 201876 }	-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ��
	local Money = 300

	local WeaponID , ArmorID , AccessID , HPPotionNum , MPPotionNum , HuFuID , SpecBagID = SongSong_Bag_LV0( WeaponGroup , ArmorGroup , AccessGroup , HPPotionGroup , MPPotionGroup , HuFuGroup , SpecBagGroup )

	if ( Option == "CHECK" ) then
		if ( NeedSpaceStatus  == false ) then
			return false
		elseif ( CountBodyItem( PlayerID , PackageID ) >= 1 ) then
			return true
		end
	elseif ( Option == "USE" ) then
		if ( WeaponID ~= nil  ) then		GiveBodyItem( PlayerID , WeaponID , 1 )			end
		if ( ArmorID ~= nil  ) then		GiveBodyItem( PlayerID , ArmorID , 1 )				end
		if ( AccessID ~= nil  ) then		GiveBodyItem( PlayerID , AccessID , 1 )				end
		if ( SpecBagID ~= nil  ) then		GiveBodyItem( PlayerID , SpecBagID , 1 )			end
		if ( HPPotionNum ~= 0 ) then		GiveBodyItem( PlayerID , HPPotionID , HPPotionNum )		end
		if ( MPPotionNum ~= 0 ) then		GiveBodyItem( PlayerID , MPPotionID , MPPotionNum )		end
		if ( Money ~= nil ) then		AddRoleValue( PlayerID , EM_RoleValue_Money , Money )		end
		GiveBodyItem( PlayerID , 201862 , 1 )	-- ���U�@�ӥ]
	end

end

function SongSong_Bag_LV20( Option )

	local PlayerID = OwnerID()
	local PackageID = 201862		-- �w����§�]
	local NeedSpace = 1 + 1
	local NeedSpaceStatus  = Check_Bag_Space( PlayerID , NeedSpace  )

	-- �Z��
	local WeaponGroup = {  }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ����
	local ArmorGroup = {  }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ���~
	local AccessGroup = {  }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- �Ĥ�
	local HPPotionGroup = { 10 , 10 , 10 , 10 , 10 , 10 }					-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	local MPPotionGroup = { 0 , 0 , 0 , 0 , 0 , 0 }					-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	local HPPotionID = 201892
	local MPPotionID = 0
	-- �@��
	local HuFuGroup = {  }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- �S�O�]
	local SpecBagGroup = {  }	-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ��
	local Money = 2000

	local WeaponID , ArmorID , AccessID , HPPotionNum , MPPotionNum , HuFuID , SpecBagID = SongSong_Bag_LV0( WeaponGroup , ArmorGroup , AccessGroup , HPPotionGroup , MPPotionGroup , HuFuGroup , SpecBagGroup )

	if ( Option == "CHECK" ) then
		if ( NeedSpaceStatus  == false ) then
			return false
		elseif ( CountBodyItem( PlayerID , PackageID ) >= 1 ) then
			return true
		end
	elseif ( Option == "USE" ) then
		if ( WeaponID ~= nil  ) then		GiveBodyItem( PlayerID , WeaponID , 1 )			end
		if ( ArmorID ~= nil  ) then		GiveBodyItem( PlayerID , ArmorID , 1 )				end
		if ( AccessID ~= nil  ) then		GiveBodyItem( PlayerID , AccessID , 1 )				end
		if ( SpecBagID ~= nil  ) then		GiveBodyItem( PlayerID , SpecBagID , 1 )			end
		if ( HPPotionNum ~= 0 ) then		GiveBodyItem( PlayerID , HPPotionID , HPPotionNum )		end
		if ( MPPotionNum ~= 0 ) then		GiveBodyItem( PlayerID , MPPotionID , MPPotionNum )		end
		if ( Money ~= nil ) then		AddRoleValue( PlayerID , EM_RoleValue_Money , Money )		end
		GiveBodyItem( PlayerID , 201883 , 1 )	-- ���U�@�ӥ]
	end

end

function SongSong_Bag_LV25( Option )

	local PlayerID = OwnerID()
	local PackageID = 201883		-- �����§�]
	local NeedSpace = 1 + 1
	local NeedSpaceStatus  = Check_Bag_Space( PlayerID , NeedSpace  )

	-- �Z��
	local WeaponGroup = {  }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ����
	local ArmorGroup = {  }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ���~
	local AccessGroup = {  }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- �Ĥ�
	local HPPotionGroup = { 0 , 0 , 0 , 0 , 0 , 0 }					-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	local MPPotionGroup = { 0 , 0 , 0 , 0 , 0 , 0 }					-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	local HPPotionID = 0
	local MPPotionID = 0
	-- �@��
	local HuFuGroup = {  }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- �S�O�]
	local SpecBagGroup = { 201877 , 201877 , 201877 , 201877 , 201877 , 201877 }	-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ��
	local Money = 2500

	local WeaponID , ArmorID , AccessID , HPPotionNum , MPPotionNum , HuFuID , SpecBagID = SongSong_Bag_LV0( WeaponGroup , ArmorGroup , AccessGroup , HPPotionGroup , MPPotionGroup , HuFuGroup , SpecBagGroup )

	if ( Option == "CHECK" ) then
		if ( NeedSpaceStatus  == false ) then
			return false
		elseif ( CountBodyItem( PlayerID , PackageID ) >= 1 ) then
			return true
		end
	elseif ( Option == "USE" ) then
		if ( WeaponID ~= nil  ) then		GiveBodyItem( PlayerID , WeaponID , 1 )			end
		if ( ArmorID ~= nil  ) then		GiveBodyItem( PlayerID , ArmorID , 1 )				end
		if ( AccessID ~= nil  ) then		GiveBodyItem( PlayerID , AccessID , 1 )				end
		if ( SpecBagID ~= nil  ) then		GiveBodyItem( PlayerID , SpecBagID , 1 )			end
		if ( HPPotionNum ~= 0 ) then		GiveBodyItem( PlayerID , HPPotionID , HPPotionNum )		end
		if ( MPPotionNum ~= 0 ) then		GiveBodyItem( PlayerID , MPPotionID , MPPotionNum )		end
		if ( Money ~= nil ) then		AddRoleValue( PlayerID , EM_RoleValue_Money , Money )		end
		GiveBodyItem( PlayerID , 201863 , 1 )	-- ���U�@�ӥ]
	end

end