function SongSong_Bag_LVEX12( Option )

	local PlayerID = OwnerID()
	local PackageID = 201872		-- �Ŧ�n�B§�]
	local NeedSpace = 1
	local NeedSpaceStatus  = Check_Bag_Space( PlayerID , NeedSpace  )

	-- �Z��
	local WeaponGroup = {  }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ����
	local ArmorGroup = { 221704 , 221704 , 221704 , 221704 , 221704 , 221704 }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
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
	local SpecBagGroup = {  }	-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ��
	local Money = 0

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
	end
end

function SongSong_Bag_LVEX14( Option )

	local PlayerID = OwnerID()
	local PackageID = 201873		-- �Ŧ�n�B§�]
	local NeedSpace = 1
	local NeedSpaceStatus  = Check_Bag_Space( PlayerID , NeedSpace  )

	-- �Z��
	local WeaponGroup = {  }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ����
	local ArmorGroup = { 221705 , 221705 , 221705 , 221705 , 221705 , 221705 }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
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
	local SpecBagGroup = {  }	-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ��
	local Money = 0

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
	end
end

function SongSong_Bag_LVEX16( Option )

	local PlayerID = OwnerID()
	local PackageID = 201874		-- �Ŧ�n�B§�]
	local NeedSpace = 1
	local NeedSpaceStatus  = Check_Bag_Space( PlayerID , NeedSpace  )

	-- �Z��
	local WeaponGroup = {  }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ����
	local ArmorGroup = { 221706 , 221706 , 221706 , 221706 , 221706 , 221706 }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
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
	local SpecBagGroup = {  }	-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ��
	local Money = 0

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
	end
end