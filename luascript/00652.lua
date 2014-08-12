function SongSong_Bag_LV0( WeaponGroup , ArmorGroup , AccessGroup , HPPotionGroup , MPPotionGroup , HuFuGroup , SpecBagGroup )

	local PlayerID = OwnerID()

	local job = ReadRoleValue( PlayerID , EM_RoleValue_VOC )
	if ( job == 0 ) then	-- �޲z��
		ScriptMessage( PlayerID , PlayerID , 2 , "Please don't use GM to test this !!" , C_SYSTEM )	-- �e�������T��
		return WeaponGroup[1] , ArmorGroup[1] , AccessGroup[1] , HPPotionGroup[1] , MPPotionGroup[1] , HuFuGroup[1] , SpecBagGroup[1]
	else
		return WeaponGroup[job] , ArmorGroup[job] , AccessGroup[job] , HPPotionGroup[job] , MPPotionGroup[job] , HuFuGroup[job] , SpecBagGroup[job]	-- �Ԥh�B�C�L�B�v��B�k�v�B���q�B�M�h
	end

end

function Check_Bag_Space( PlayerID , NeedSpace )

	local QueueOfBag = QueuePacketCount( PlayerID )	--�p��Queue���X��
	local SpaceOfBag = EmptyPacketCount( PlayerID )	--�p��I�]���X�ӪŦ�

	if ( QueueOfBag == 0 ) then
		if ( SpaceOfBag >= NeedSpace ) then
			return true
		else
			ScriptMessage( OwnerID() , OwnerID() , 1 , GetString("MSG_SONGSONGBAGWARN") , C_DEFAULT )	-- �I�]�Ů���줣���A�L�k��U§�]�������~�I
			return false
		end
	else
		return false
	end
end
