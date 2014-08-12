function Check_Relation( Player , RelationType )

	local RelationPosTotal = 20

	for i = 0 , RelationPosTotal - 1 do
		if ( GetRelation_Relation( Player , i ) == RelationType ) then 
			return true
		end
	end

	return false

end

function Get_RelationPos( Player , RelationType )

	local RelationPosTotal = 20
	
	for i = 0 , RelationPosTotal - 1 do
		if ( GetRelation_Relation( Player , i ) == RelationType ) then
			return i
		end
	end
end

function LuaQ_202817_MarryTransfer( Option )		-- 男婚戒使用
	local Player = OwnerID()

	if ( Option == "CHECK" ) then
		if Check_Relation( Player , EM_RelationType_Husband ) then
			if GetRelation_DBID( Player , Get_RelationPos( Player , EM_RelationType_Husband ) ) ~= nil then
				return true
			else
				ScriptMessage( Player , Player , 1 , GetString("SC_MARRY_33") , 0 )		-- 無法傳送，你的配偶目前不在線上或是正在副本中！！
				return false
			end
		else
			ScriptMessage( Player , Player , 1 , GetString("SC_MARRY_32") , 0 )		-- 無法傳送，你尚未建立婚姻關係！！
			return false
		end
	elseif ( Option == "USE" ) then
		if GotoPlayer_DBID( Player , GetRelation_DBID( Player , Get_RelationPos( Player , EM_RelationType_Husband ) ) ) then
			-- nothing
		end
		--Say( Player , GetRelation_Name( Player , Get_RelationPos( Player , EM_RelationType_Husband ) ) )
		--Say( Player , GetRelation_DBID( Player , Get_RelationPos( Player , EM_RelationType_Husband ) ) )
		--GotoPlayer_DBID( Player , GetRelation_DBID( Player , Get_RelationPos( Player , EM_RelationType_Husband ) ) )
	end

end

function LuaQ_202543_MarryTransfer( Option )		-- 男婚戒使用
	local Player = OwnerID()

	if ( Option == "CHECK" ) then
		if CountBodyItem( Player , 202545 ) >= 1 then
			if Check_Relation( Player , EM_RelationType_Husband ) then
				if GetRelation_DBID( Player , Get_RelationPos( Player , EM_RelationType_Husband ) ) ~= nil then
					return true
				else
					ScriptMessage( Player , Player , 1 , GetString("SC_MARRY_33") , 0 )		-- 無法傳送，你的配偶目前不在線上或是正在副本中！！
					return false
				end
			else
				ScriptMessage( Player , Player , 1 , GetString("SC_MARRY_32") , 0 )		-- 無法傳送，你尚未建立婚姻關係！！
				return false
			end
		else
			ScriptMessage( Player , Player , 1 , GetString("SC_MARRY_31") , 0 )		-- 無法傳送，你需要一個愛愛果凍！！
			return false
		end
	elseif ( Option == "USE" ) then
		if GotoPlayer_DBID( Player , GetRelation_DBID( Player , Get_RelationPos( Player , EM_RelationType_Husband ) ) ) then
			-- nothing
		end
		--Say( Player , GetRelation_Name( Player , Get_RelationPos( Player , EM_RelationType_Husband ) ) )
		--Say( Player , GetRelation_DBID( Player , Get_RelationPos( Player , EM_RelationType_Husband ) ) )
		--GotoPlayer_DBID( Player , GetRelation_DBID( Player , Get_RelationPos( Player , EM_RelationType_Husband ) ) )
	end

end

function LuaQ_202544_MarryTransfer( Option )		-- 女婚戒使用
	local Player = OwnerID()

	if ( Option == "CHECK" ) then
		if CountBodyItem( Player , 202545 ) >= 1 then
			if Check_Relation( Player , EM_RelationType_Wife ) then
				if GetRelation_DBID( Player , Get_RelationPos( Player , EM_RelationType_Wife ) ) ~= nil then
					return true
				else
					ScriptMessage( Player , Player , 1 , GetString("SC_MARRY_33") , 0 )		-- 無法傳送，你的配偶目前不在線上或是正在副本中！！
					return false
				end
			else
				ScriptMessage( Player , Player , 1 , GetString("SC_MARRY_32") , 0 )		-- 無法傳送，你尚未建立婚姻關係！！
				return false
			end
		else
			ScriptMessage( Player , Player , 1 , GetString("SC_MARRY_31") , 0 )		-- 無法傳送，你需要一個愛愛果凍！！
			return false
		end
	elseif ( Option == "USE" ) then
		if CallPlayer_DBID( Player , GetRelation_DBID( Player , Get_RelationPos( Player , EM_RelationType_Wife ) ) ) then
			-- nothing
		end
		--Say( Player , GetRelation_Name( Player , Get_RelationPos( Player , EM_RelationType_Wife ) ) )
		--Say( Player , GetRelation_DBID( Player , Get_RelationPos( Player , EM_RelationType_Wife ) ) )
		--CallPlayer_DBID( Player , GetRelation_DBID( Player , Get_RelationPos( Player , EM_RelationType_Wife ) ) )
	end

end

function LuaQ_202818_MarryTransfer( Option )		-- 女婚戒使用
	local Player = OwnerID()

	if ( Option == "CHECK" ) then
		if Check_Relation( Player , EM_RelationType_Wife ) then
			if GetRelation_DBID( Player , Get_RelationPos( Player , EM_RelationType_Wife ) ) ~= nil then
				return true
			else
				ScriptMessage( Player , Player , 1 , GetString("SC_MARRY_33") , 0 )		-- 無法傳送，你的配偶目前不在線上或是正在副本中！！
				return false
			end
		else
			ScriptMessage( Player , Player , 1 , GetString("SC_MARRY_32") , 0 )		-- 無法傳送，你尚未建立婚姻關係！！
			return false
		end
	elseif ( Option == "USE" ) then
		if CallPlayer_DBID( Player , GetRelation_DBID( Player , Get_RelationPos( Player , EM_RelationType_Wife ) ) ) then
			-- nothing
		end
		--Say( Player , GetRelation_Name( Player , Get_RelationPos( Player , EM_RelationType_Wife ) ) )
		--Say( Player , GetRelation_DBID( Player , Get_RelationPos( Player , EM_RelationType_Wife ) ) )
		--CallPlayer_DBID( Player , GetRelation_DBID( Player , Get_RelationPos( Player , EM_RelationType_Wife ) ) )
	end

end

function Get_MAXLV( Player )
	if ( Player == nil ) then
		Player = OwnerID()
	end

	local LV_Warrior = ReadRoleValue( Player , EM_RoleValue_VOCLV_Warrior )
	local LV_Ranger = ReadRoleValue( Player , EM_RoleValue_VOCLV_Ranger )
	local LV_Rogue = ReadRoleValue( Player , EM_RoleValue_VOCLV_Rogue )
	local LV_Wizard = ReadRoleValue( Player , EM_RoleValue_VOCLV_Wizard )
	local LV_Priest = ReadRoleValue( Player , EM_RoleValue_VOCLV_Priest )
	local LV_Knight = ReadRoleValue( Player , EM_RoleValue_VOCLV_Knight )

	local MAXLV = math.max( LV_Warrior , LV_Ranger , LV_Rogue , LV_Wizard , LV_Priest , LV_Knight )

	--Say( Player , MAXLV )

	return MAXLV
end
