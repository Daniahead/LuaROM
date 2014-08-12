function MagicBox_AddEnergy_01( Option )

	local Player = OwnerID()
	local PackageID = 202928

	if ( Option == "CHECK" ) then
		if ( CountBodyItem( Player , PackageID ) >= 1 ) then
			return true
		else
			return false
		end
	elseif ( Option == "USE" ) then
		AddRoleValue( Player , EM_RoleValue_BoxEnergy , 10 )
	end

end

function MagicBox_AddEnergy_02( Option )

	local Player = OwnerID()
	local PackageID = 202929

	if ( Option == "CHECK" ) then
		if ( CountBodyItem( Player , PackageID ) >= 1 ) then
			return true
		else
			return false
		end
	elseif ( Option == "USE" ) then
		AddRoleValue( Player , EM_RoleValue_BoxEnergy , 50 )
	end

end

function MagicBox_AddEnergy_03( Option )

	local Player = OwnerID()
	local PackageID = 202930

	if ( Option == "CHECK" ) then
		if ( CountBodyItem( Player , PackageID ) >= 1 ) then
			return true
		else
			return false
		end
	elseif ( Option == "USE" ) then
		AddRoleValue( Player , EM_RoleValue_BoxEnergy , 100 )
	end

end