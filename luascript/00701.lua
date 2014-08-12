
function LuaS_421094_0()
	Hide(OwnerID())
	local Player = TargetID()
	local Boss = LuaS_Discowood_CreateMonster( 100805 , Player , -32963.2 , -283 , 6699 , 73,"LuaS_Discowood_CheckPeace" )
	local No1 = LuaS_Discowood_CreateMonster( 100806 , Player , -32978.9,-296,6579.5,268,"LuaS_Discowood_CheckPeace")
	local No2 = LuaS_Discowood_CreateMonster( 100806 , Player , -32933.4,-303,6530.5,266,"LuaS_Discowood_CheckPeace")
	local No3 = LuaS_Discowood_CreateMonster( 100806 , Player , -32930.7,-294,6489.1,266,"LuaS_Discowood_CheckPeace")
	local No4 = LuaS_Discowood_CreateMonster( 100806 , Player , -32979.2,-284,6497.1,267,"LuaS_Discowood_CheckPeace")

	while true do
		sleep(20)
		if CheckID(Boss)==false and CheckID(No1)==false and CheckID(No2)==false and CheckID(No3)==false and CheckID(No4)==false then
			Show(OwnerID() , 0 )
			break
		end
	end
end