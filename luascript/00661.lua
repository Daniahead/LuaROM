function SongSong_Bag_LV1( Option )

	local PlayerID = OwnerID()
	local PackageID = 201843		-- 魔幻禮包
	local NeedSpace = 2 + 1
	local NeedSpaceStatus  = Check_Bag_Space( PlayerID , NeedSpace  )

	-- 武器
	local WeaponGroup = { }		-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 防具
	local ArmorGroup = { }		-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 飾品
	local AccessGroup = { 221668 , 221668 , 221668 , 221668 , 221668 , 221668}		-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 藥水
	local HPPotionGroup = { 5 , 5 , 5 , 5 , 5 , 5 }					-- 戰士、遊俠、影行、法師、祭司、騎士
	local MPPotionGroup = { 0 , 0 , 0 , 0 , 0 , 0 }					-- 戰士、遊俠、影行、法師、祭司、騎士
	local HPPotionID = 200663							-- 簡易急救藥水
	local MPPotionID = 201042							-- 簡易魔力藥水
	-- 護符
	local HuFuGroup = {  }		-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 特別包
	local SpecBagGroup = {  }	-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 錢
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
		GiveBodyItem( PlayerID , 201844 , 1 )	-- 給下一個包
	end

end

function SongSong_Bag_LV2( Option )

	local PlayerID = OwnerID()
	local PackageID = 201844		-- 冒險者禮包
	local NeedSpace = 2 + 1
	local NeedSpaceStatus  = Check_Bag_Space( PlayerID , NeedSpace  )

	-- 武器
	local WeaponGroup = { }							-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 防具
	local ArmorGroup = { 221671 , 221670 , 221670 , 221669 , 221669 , 221671 }		-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 飾品
	local AccessGroup = { }							-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 藥水
	local HPPotionGroup = { 10 , 10 , 10 , 5 , 5 , 5 }					-- 戰士、遊俠、影行、法師、祭司、騎士
	local MPPotionGroup = { 0 , 0 , 0 , 5 , 5 , 5 }					-- 戰士、遊俠、影行、法師、祭司、騎士
	local HPPotionID = 200663							-- 簡易急救藥水
	local MPPotionID = 201042							-- 簡易魔力藥水
	-- 護符
	local HuFuGroup = {  }		-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 特別包
	local SpecBagGroup = {  }	-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 錢
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
		GiveBodyItem( PlayerID , 201845 , 1 )	-- 給下一個包
	end

end

function SongSong_Bag_LV3( Option )

	local PlayerID = OwnerID()
	local PackageID = 201845		-- 開墾禮包
	local NeedSpace = 3 + 1
	local NeedSpaceStatus  = Check_Bag_Space( PlayerID , NeedSpace  )

	-- 武器
	local WeaponGroup = {  }							-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 防具
	local ArmorGroup = {  }							-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 飾品
	local AccessGroup = { 221672 , 221672 , 221672 , 221672 , 221672 , 221672 }		-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 藥水
	local HPPotionGroup = { 10 , 10 , 10 , 5 , 5 , 5 }					-- 戰士、遊俠、影行、法師、祭司、騎士
	local MPPotionGroup = { 0 , 0 , 0 , 5 , 5 , 5 }					-- 戰士、遊俠、影行、法師、祭司、騎士
	local HPPotionID = 200663							-- 簡易急救藥水
	local MPPotionID = 201042							-- 簡易魔力藥水
	-- 護符
	local HuFuGroup = { }		-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 特別包
	local SpecBagGroup = { 201868 , 201868 , 201868 , 201868 , 201868 , 201868 }	-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 錢
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
		GiveBodyItem( PlayerID , 201846 , 1 )	-- 給下一個包
	end

end
