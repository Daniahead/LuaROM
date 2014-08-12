function SongSong_Bag_LV10( Option )

	local PlayerID = OwnerID()
	local PackageID = 201852		-- 嚎叫禮包
	local NeedSpace = 4 + 2
	local NeedSpaceStatus  = Check_Bag_Space( PlayerID , NeedSpace  )

	-- 武器
	local WeaponGroup = {  }		-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 防具
	local ArmorGroup = { 221687 , 221686 , 221686 , 221685 , 221685 , 221687 }		-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 飾品
	local AccessGroup = {  }		-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 藥水
	local HPPotionGroup = { 5 , 5 , 5 , 5 , 5 , 5 }					-- 戰士、遊俠、影行、法師、祭司、騎士
	local MPPotionGroup = { 9 , 9 , 9 , 9 , 9 , 9 }					-- 戰士、遊俠、影行、法師、祭司、騎士
	local HPPotionID = 201892
	local MPPotionID = 201201							-- 基礎裝備石
	-- 護符
	local HuFuGroup = { 221650 , 221650 , 221650 , 221651 , 221651 , 221651 }		-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 特別包
	local SpecBagGroup = {  }	-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 錢
	local Money = 100

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
		if ( HuFuID ~= nil  ) then		GiveBodyItem( PlayerID , HuFuID , 1 )				end
		if ( SpecBagID ~= nil  ) then		GiveBodyItem( PlayerID , SpecBagID , 1 )			end
		if ( HPPotionNum ~= 0 ) then		GiveBodyItem( PlayerID , HPPotionID , HPPotionNum )		end
		if ( MPPotionNum ~= 0 ) then		GiveBodyItem( PlayerID , MPPotionID , MPPotionNum )		end
		if ( Money ~= nil ) then		AddRoleValue( PlayerID , EM_RoleValue_Money , Money )		end
		GiveBodyItem( PlayerID , 201853 , 1 )	-- 給下一個包
		GiveBodyItem( PlayerID , 202152 , 1 )	
	end

end

function SongSong_Bag_LV11( Option )

	local PlayerID = OwnerID()
	local PackageID = 201853		-- 毗爾禮包
	local NeedSpace = 2 + 2
	local NeedSpaceStatus  = Check_Bag_Space( PlayerID , NeedSpace  )

	-- 武器
	local WeaponGroup = {  }		-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 防具
	local ArmorGroup = {  }		-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 飾品
	local AccessGroup = {  }		-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 藥水
	local HPPotionGroup = { 5 , 5 , 5 , 5 , 5 , 5 }					-- 戰士、遊俠、影行、法師、祭司、騎士
	local MPPotionGroup = { 0 , 0 , 0 , 0 , 0 , 0 }					-- 戰士、遊俠、影行、法師、祭司、騎士
	local HPPotionID = 201892
	local MPPotionID = 0
	-- 護符
	local HuFuGroup = {  }		-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 特別包
	local SpecBagGroup = { 201872 , 201872 , 201872 , 201872 , 201872 , 201872 }	-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 錢
	local Money = 100

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
		GiveBodyItem( PlayerID , 201854 , 1 )	-- 給下一個包
		GiveBodyItem( PlayerID , 202152 , 2 )	
	end

end

function SongSong_Bag_LV12( Option )

	local PlayerID = OwnerID()
	local PackageID = 201854		-- 麥督格禮包
	local NeedSpace = 2 + 2
	local NeedSpaceStatus  = Check_Bag_Space( PlayerID , NeedSpace  )

	-- 武器
	local WeaponGroup = {  }		-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 防具
	local ArmorGroup = {  }		-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 飾品
	local AccessGroup = {  }		-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 藥水
	local HPPotionGroup = { 5 , 5 , 5 , 5 , 5 , 5 }					-- 戰士、遊俠、影行、法師、祭司、騎士
	local MPPotionGroup = { 0 , 0 , 0 , 0 , 0 , 0 }					-- 戰士、遊俠、影行、法師、祭司、騎士
	local HPPotionID = 201892
	local MPPotionID = 0
	-- 護符
	local HuFuGroup = { 221652 , 221652 , 221652 , 221653 , 221653 , 221653 }		-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 特別包
	local SpecBagGroup = {  }	-- 戰士、遊俠、影行、法師、祭司、騎士
	-- 錢
	local Money = 100

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
		if ( HuFuID ~= nil  ) then		GiveBodyItem( PlayerID , HuFuID , 1 )				end
		if ( SpecBagID ~= nil  ) then		GiveBodyItem( PlayerID , SpecBagID , 1 )			end
		if ( HPPotionNum ~= 0 ) then		GiveBodyItem( PlayerID , HPPotionID , HPPotionNum )		end
		if ( MPPotionNum ~= 0 ) then		GiveBodyItem( PlayerID , MPPotionID , MPPotionNum )		end
		if ( Money ~= nil ) then		AddRoleValue( PlayerID , EM_RoleValue_Money , Money )		end
		GiveBodyItem( PlayerID , 201855 , 1 )	-- 給下一個包
		GiveBodyItem( PlayerID , 202152 , 2 )	
	end

end