function SongSong_Bag_LV0( WeaponGroup , ArmorGroup , AccessGroup , HPPotionGroup , MPPotionGroup , HuFuGroup , SpecBagGroup )

	local PlayerID = OwnerID()

	local job = ReadRoleValue( PlayerID , EM_RoleValue_VOC )
	if ( job == 0 ) then	-- 管理者
		ScriptMessage( PlayerID , PlayerID , 2 , "Please don't use GM to test this !!" , C_SYSTEM )	-- 畫面中間訊息
		return WeaponGroup[1] , ArmorGroup[1] , AccessGroup[1] , HPPotionGroup[1] , MPPotionGroup[1] , HuFuGroup[1] , SpecBagGroup[1]
	else
		return WeaponGroup[job] , ArmorGroup[job] , AccessGroup[job] , HPPotionGroup[job] , MPPotionGroup[job] , HuFuGroup[job] , SpecBagGroup[job]	-- 戰士、遊俠、影行、法師、祭司、騎士
	end

end

function Check_Bag_Space( PlayerID , NeedSpace )

	local QueueOfBag = QueuePacketCount( PlayerID )	--計算Queue有幾格
	local SpaceOfBag = EmptyPacketCount( PlayerID )	--計算背包有幾個空位

	if ( QueueOfBag == 0 ) then
		if ( SpaceOfBag >= NeedSpace ) then
			return true
		else
			ScriptMessage( OwnerID() , OwnerID() , 1 , GetString("MSG_SONGSONGBAGWARN") , C_DEFAULT )	-- 背包空格欄位不足，無法放下禮包中的物品！
			return false
		end
	else
		return false
	end
end
