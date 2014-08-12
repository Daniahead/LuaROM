function LuaS_421101_0()
	local Target = ReadRoleValue( TargetID() , EM_RoleValue_OrgID )
	local Target_HP = ReadRoleValue( TargetID() , EM_RoleValue_HP )
	
	if CheckFlag( OwnerID() , 541130 ) then
		ScriptMessage( OwnerID(), OwnerID(), 1 ,GetString("SC_421101_2"),1)--你違反了和古拉潔的約定殺了蹬羚！
		return false
	end

	if Target == 100751 or Target == 100749 then
		if CheckAcceptQuest( OwnerID(), 421101 ) then
			if Target_HP < 100 then
				return true
			else
				ScriptMessage( OwnerID(), OwnerID(), 1 ,GetString("SC_421101_1"),1)--蹬羚仍是不停亂動，這樣是抓不住它的！
				return false
			end
		else
			ScriptMessage( OwnerID(), OwnerID(), 1 ,GetString("SC_421101_4"),1)--你沒有任務
		end
	else
		ScriptMessage( OwnerID(), OwnerID(), 1 ,GetString("SC_421101_0"),1)--目標錯誤
		return false
	end
end


function LuaS_421101_1()
	DelBodyItem(OwnerID() , 202258 ,1)
	LuaFunc_ResetObj( TargetID() )
	ScriptMessage( OwnerID(), OwnerID(), 1 ,GetString("SC_421101_3"),1)--你保住了蹬羚的性命！
	GiveBodyItem(OwnerID() , 202257 ,1)
	GiveBodyItem(OwnerID() , 202259 ,1)
end

function LuaS_421101_2()
	--掛在所有的蹬羚身上
	SetDead(TargetID() , "dead" , "LuaS_421101_3" , 30)
end


function LuaS_421101_3()
	if CheckAcceptQuest( TargetID(), 421101 ) then
		SetFlag(TargetID() , 541129 , 0)
		SetFlag(TargetID() , 541130 , 1)
		ScriptMessage( TargetID(), TargetID(), 1 ,GetString("SC_421101_2"),1)--你違反了和古拉潔的約定殺了蹬羚！
	end
end
