function LuaS_202824( Option )

	local PlayerID = OwnerID()
	local PackageID = 202824		-- 光明誓詞

	if ( Option == "CHECK" ) then
		if ( CountBodyItem( PlayerID , PackageID ) >= 1 ) then
			return true
		else
			return false
		end
	elseif ( Option == "USE" ) then
		if ChangeZone( OwnerID() , 107 , 0 , 2732 ,  61 ,  1430 , 270 ) then	-- 區域未定，現在亂填
			-- nothing
		end
	end

end

function LuaS_202825( Option )

	local PlayerID = OwnerID()
	local PackageID = 202825		-- 中立申明

	if ( Option == "CHECK" ) then
		if ( CountBodyItem( PlayerID , PackageID ) >= 1 ) then
			return true
		else
			return false
		end
	elseif ( Option == "USE" ) then
		local GoodEvil = ReadRoleValue( PlayerID , EM_RoleValue_GoodEvil )
		if GoodEvil < 120 and GoodEvil > -120 then
			WriteRoleValue( PlayerID , EM_RoleValue_GoodEvil , 0 )
		elseif  GoodEvil > 120 then
			AddRoleValue( PlayerID , EM_RoleValue_GoodEvil , -120 )
		elseif GoodEvil < -120 then
			AddRoleValue( PlayerID , EM_RoleValue_GoodEvil , 120 )
		else
			Say( OwnerID() , "Something ERROR !!" )
		end

	end

end

	