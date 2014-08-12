function WaitMoveTo( ObjID , X , Y, Z )
	local Obj = Role:new( ObjID )

	while 1 do
		Obj:Move(  X , Y ,Z  )
		for i = 0 , 60 , 1 do
			local NowX = Obj:X()
			local NowZ = Obj:Z();
		
			if Abs( NowX - X ) < 10 and Abs( NowZ - Z ) < 10 then
				return true
			end
			Sleep( 5 )
		end 
	end
	return false

end

function LuaFunc_WaitMoveTo( ObjID , X , Y, Z )
	local Obj = Role:new( ObjID )

	while 1 do
		Obj:Move(  X , Y ,Z  )
		for i = 0 , 60 , 1 do
			local NowX = Obj:X()
			local NowZ = Obj:Z();
		
			if Abs( NowX - X ) < 10 and Abs( NowZ - Z ) < 10 then
				return true
			end
			Sleep( 5 )
		end 
	end
	return false

end
