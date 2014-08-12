function LuaI_Rog_Windmill_0()
	SetPlot( OwnerID() , "Range" , "LuaI_Rog_Windmill_in" , 20 )
end
function LuaI_Rog_Windmill_MSG()
	while 1 do

		if GetSystime(1) == 11 and  GetSystime(2) == 30 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_1") ) 
		end 
		if GetSystime(1) == 11 and  GetSystime(2) == 50 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_2") ) 
		end 
		if GetSystime(1) == 11 and  GetSystime(2) == 55 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_3") ) 
		end 
		if GetSystime(1) == 12 and  GetSystime(2) == 0 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_4") ) 
		end 

		if GetSystime(1) == 17 and  GetSystime(2) == 30 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_1") ) 
		end 
		if GetSystime(1) == 17 and  GetSystime(2) == 50 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_2") ) 
		end 
		if GetSystime(1) == 17 and  GetSystime(2) == 55 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_3") ) 
		end 
		if GetSystime(1) == 18 and  GetSystime(2) == 0 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_4") ) 
		end 
		
		sleep( 300 )

	end
end

function LuaI_Rog_Windmill_in()
	local TimeCheck = "CLOSE"

	if GetSystime(1) >= 12 and GetSystime(1) <= 13 then
		 TimeCheck = "OPEN"
	elseif GetSystime(1) >= 18 and GetSystime(1) <= 19 then
		 TimeCheck = "OPEN"
	end

	if CountBodyItem( OwnerID() , 530060 ) > 0 then
		if TimeCheck == "OPEN" then 
			local Dir = ReadRoleValue( OwnerID() , EM_RoleValue_Dir )
			local Key

			ScriptMessage(OwnerID(), OwnerID() , 1 , GetString("SAY_MYSTERYLAND_2") , C_SYSTEM )	-- 你被神秘的光芒吸了進去。

			Key = CountBodyItem( OwnerID() , 201929 )
			DelBodyItem( OwnerID() , 201929 , Key )

			if Rand(2) == 0 then 
				ChangeZone( OwnerID(), 105 , 0, 2425, 16, 256, Dir)
			else
				ChangeZone( OwnerID(), 105 , 0, 2627, 16, 268, Dir)
			end
		else
			ScriptMessage(OwnerID(), OwnerID() , 1 , GetString("SAY_WINDMILL_0") , C_SYSTEM ) 
		end
	else
			ScriptMessage(OwnerID(), OwnerID() , 1 , GetString("SAY_MYSTERYLAND_3") , 0)	-- 你被神秘的光芒吸了進去。
	end
end

function LuaI_Rog_Windmill_1()
	SetPlot( OwnerID() , "Range" , "LuaI_Rog_Windmill_out" , 20 )
	while 1 do

		if GetSystime(1) == 13 and  GetSystime(2) == 30 then
			RunningMsg( OwnerID() , 1 ,  GetString("SAY_WINDMILL_5") ) 
		end 
		if GetSystime(1) == 13 and  GetSystime(2) == 50 then
			RunningMsg( OwnerID() , 1 ,  GetString("SAY_WINDMILL_6") ) 
		end 
		if GetSystime(1) == 13 and  GetSystime(2) == 55 then
			RunningMsg( OwnerID() , 1 ,  GetString("SAY_WINDMILL_7") ) 
		end 
		if GetSystime(1) == 14 and  GetSystime(2) == 0 then
			RunningMsg( OwnerID() , 1 ,  GetString("SAY_WINDMILL_8") ) 
		end 

		if GetSystime(1) == 19 and  GetSystime(2) == 30 then
			RunningMsg( OwnerID() , 1 ,  GetString("SAY_WINDMILL_5") ) 
		end 
		if GetSystime(1) == 19 and  GetSystime(2) == 50 then
			RunningMsg( OwnerID() , 1 ,  GetString("SAY_WINDMILL_6") ) 
		end 
		if GetSystime(1) == 19 and  GetSystime(2) == 55 then
			RunningMsg( OwnerID() , 1 ,  GetString("SAY_WINDMILL_7") ) 
		end 
		if GetSystime(1) == 20 and  GetSystime(2) == 0 then
			RunningMsg( OwnerID() , 1 ,  GetString("SAY_WINDMILL_8") ) 
		end 
		
		sleep( 300 )

	end
end

function LuaI_Rog_Windmill_out()
	local Dir = ReadRoleValue( OwnerID() , EM_RoleValue_Dir )
	local Key

	Key = CountBodyItem( OwnerID() , 201929 )
	DelBodyItem( OwnerID() , 201929 , Key )

	ChangeZone( OwnerID(), 1 , 0, -1284, 61, -5613, Dir)
end

function LuaI_Rog_Windmill_kickout()
	while 1 do

		if GetSystime(1) == 14 or GetSystime(1) == 20 then
			local Obj;
			local Count = SetSearchAllPlayer(0)
			if count ~= 0 then
				for i = 1 , Count , 1 do
					local ID = GetSearchResult()
					Obj = Role:New( ID )
					if Obj:IsPlayer() == True then
						BeginPlot(  ID , "LuaI_Rog_Windmill_out" , 0 )
					end
				end	
			end
		end 
		
		sleep( 300 )
	end
end