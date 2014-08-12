function LuaS_421101_0()
	local Target = ReadRoleValue( TargetID() , EM_RoleValue_OrgID )
	local Target_HP = ReadRoleValue( TargetID() , EM_RoleValue_HP )
	
	if CheckFlag( OwnerID() , 541130 ) then
		ScriptMessage( OwnerID(), OwnerID(), 1 ,GetString("SC_421101_2"),1)--�A�H�ϤF�M�j�Լ䪺���w���F�޲ܡI
		return false
	end

	if Target == 100751 or Target == 100749 then
		if CheckAcceptQuest( OwnerID(), 421101 ) then
			if Target_HP < 100 then
				return true
			else
				ScriptMessage( OwnerID(), OwnerID(), 1 ,GetString("SC_421101_1"),1)--�޲ܤ��O�����ðʡA�o�ˬO�줣�����I
				return false
			end
		else
			ScriptMessage( OwnerID(), OwnerID(), 1 ,GetString("SC_421101_4"),1)--�A�S������
		end
	else
		ScriptMessage( OwnerID(), OwnerID(), 1 ,GetString("SC_421101_0"),1)--�ؼп��~
		return false
	end
end


function LuaS_421101_1()
	DelBodyItem(OwnerID() , 202258 ,1)
	LuaFunc_ResetObj( TargetID() )
	ScriptMessage( OwnerID(), OwnerID(), 1 ,GetString("SC_421101_3"),1)--�A�O��F�޲ܪ��ʩR�I
	GiveBodyItem(OwnerID() , 202257 ,1)
	GiveBodyItem(OwnerID() , 202259 ,1)
end

function LuaS_421101_2()
	--���b�Ҧ����޲ܨ��W
	SetDead(TargetID() , "dead" , "LuaS_421101_3" , 30)
end


function LuaS_421101_3()
	if CheckAcceptQuest( TargetID(), 421101 ) then
		SetFlag(TargetID() , 541129 , 0)
		SetFlag(TargetID() , 541130 , 1)
		ScriptMessage( TargetID(), TargetID(), 1 ,GetString("SC_421101_2"),1)--�A�H�ϤF�M�j�Լ䪺���w���F�޲ܡI
	end
end
