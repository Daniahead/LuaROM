function tell_attack()
	tell(OwnerID(),OwnerID(), ReadRoleValue(OwnerID() , EM_RoleValue_IsAttackMode) )
end

function tell_dir()
	tell(OwnerID(),OwnerID(), ReadRoleValue(OwnerID() , EM_RoleValue_Dir) )
end


function tell_dis()
	tell(OwnerID(),OwnerID(), GetDistance( OwnerID(), TargetID() ))
end

function discowood_mpfull()
	WriteRoleValue(OwnerID() , EM_RoleValue_MP , ReadRoleValue(OwnerID() , EM_RoleValue_MaxMP))
end

function try_ti()
	LuaFunc_Discowood_CheckTime(29,14,11,9)
end
function LuaFunc_Discowood_CheckTime( min , hour , day , month )--分，時，幾號，幾月
	local System_Hour = GetSystime(1)
	local System_Min = GetSystime(2)
	local System_Month = GetSystime(3)+1
	local System_Day = GetSystime(4)


	if month ~= nil then
		if System_Month > month then
			Say(OwnerID(),"month_1")
		else
			if System_Month < month then
				Say(OwnerID(),"month_-1")
			else
				if 	day < 0 	and
					hour<0		and
					min<0		then

					Say(OwnerID(),"month_0")
				end
			end
		end
	end

	if day ~= nil then
		if 	System_Day > day 	and
			day > 0 		then

			Say(OwnerID(),"day_1")
		else
			if System_Day < day then
				Say(OwnerID(),"day_-1")
			else
				if 	hour < 0 	and
					min<0		then
					Say(OwnerID(),"day_0")
				end
			end
		end
	end


	if hour ~= nil then
		if 	System_Hour > hour 	and
			hour>0			then

			Say(OwnerID(),"hour_1")
		else
			if System_Hour < hour then
				Say(OwnerID(),"hour_-1")
			else
				if min < 0 then
					Say(OwnerID(),"hour_0")
				end
			end
		end
	end

	if min ~= nil then
		if 	System_Min > min 	and
			min>0			then

			Say(OwnerID(),"min_1")
		else
			if System_Min < min then
				Say(OwnerID(),"min_-1")
			else
				if System_Min == min then
					Say(OwnerID(),"min_0")
				end
			end
		end
	end

end


