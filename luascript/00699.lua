
function LuaS_421092_0()
	local Player = TargetID()
	DisableQuest( OwnerID() , true )--鎖福庫修任務
	local No1 = LuaS_Discowood_CreateMonster( 100806 , Player , -32978.9,-296,6579.5,268,"LuaS_Discowood_CheckPeace" )
	local No2 = LuaS_Discowood_CreateMonster( 100806 , Player , -32933.4,-303,6530.5,266,"LuaS_Discowood_CheckPeace" )

	while true do
		Sleep(20)
		if CheckID(No1)==false and CheckID(No2)==false then
			DisableQuest( OwnerID() , false )--開福庫修任務
			break
		end
	end
end
