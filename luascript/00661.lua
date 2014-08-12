function SongSong_Bag_LV1( Option )

	local PlayerID = OwnerID()
	local PackageID = 201843		-- �]��§�]
	local NeedSpace = 2 + 1
	local NeedSpaceStatus  = Check_Bag_Space( PlayerID , NeedSpace  )

	-- �Z��
	local WeaponGroup = { }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ����
	local ArmorGroup = { }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ���~
	local AccessGroup = { 221668 , 221668 , 221668 , 221668 , 221668 , 221668}		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- �Ĥ�
	local HPPotionGroup = { 5 , 5 , 5 , 5 , 5 , 5 }					-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	local MPPotionGroup = { 0 , 0 , 0 , 0 , 0 , 0 }					-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	local HPPotionID = 200663							-- ²������Ĥ�
	local MPPotionID = 201042							-- ²���]�O�Ĥ�
	-- �@��
	local HuFuGroup = {  }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- �S�O�]
	local SpecBagGroup = {  }	-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ��
	local Money = 50

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
		GiveBodyItem( PlayerID , 201844 , 1 )	-- ���U�@�ӥ]
	end

end

function SongSong_Bag_LV2( Option )

	local PlayerID = OwnerID()
	local PackageID = 201844		-- �_�I��§�]
	local NeedSpace = 2 + 1
	local NeedSpaceStatus  = Check_Bag_Space( PlayerID , NeedSpace  )

	-- �Z��
	local WeaponGroup = { }							-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ����
	local ArmorGroup = { 221671 , 221670 , 221670 , 221669 , 221669 , 221671 }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ���~
	local AccessGroup = { }							-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- �Ĥ�
	local HPPotionGroup = { 10 , 10 , 10 , 5 , 5 , 5 }					-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	local MPPotionGroup = { 0 , 0 , 0 , 5 , 5 , 5 }					-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	local HPPotionID = 200663							-- ²������Ĥ�
	local MPPotionID = 201042							-- ²���]�O�Ĥ�
	-- �@��
	local HuFuGroup = {  }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- �S�O�]
	local SpecBagGroup = {  }	-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ��
	local Money = 50

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
		GiveBodyItem( PlayerID , 201845 , 1 )	-- ���U�@�ӥ]
	end

end

function SongSong_Bag_LV3( Option )

	local PlayerID = OwnerID()
	local PackageID = 201845		-- �}��§�]
	local NeedSpace = 3 + 1
	local NeedSpaceStatus  = Check_Bag_Space( PlayerID , NeedSpace  )

	-- �Z��
	local WeaponGroup = {  }							-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ����
	local ArmorGroup = {  }							-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ���~
	local AccessGroup = { 221672 , 221672 , 221672 , 221672 , 221672 , 221672 }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- �Ĥ�
	local HPPotionGroup = { 10 , 10 , 10 , 5 , 5 , 5 }					-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	local MPPotionGroup = { 0 , 0 , 0 , 5 , 5 , 5 }					-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	local HPPotionID = 200663							-- ²������Ĥ�
	local MPPotionID = 201042							-- ²���]�O�Ĥ�
	-- �@��
	local HuFuGroup = { }		-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- �S�O�]
	local SpecBagGroup = { 201868 , 201868 , 201868 , 201868 , 201868 , 201868 }	-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	-- ��
	local Money = 50

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
		GiveBodyItem( PlayerID , 201846 , 1 )	-- ���U�@�ӥ]
	end

end
