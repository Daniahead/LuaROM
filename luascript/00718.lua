function LuaQ_421249_Check()
	local Target = ReadRoleValue( TargetID() , EM_RoleValue_OrgID)
	local AttackStatue = ReadRoleValue( TargetID() , EM_RoleValue_IsAttackMode )
	if CheckID( TargetID() ) == false or TargetID() == OwnerID() then
		ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_421249_1"), 0 ); --/*你沒有目標。
		return false
	elseif Target == 100643 or Target == 100644 or Target == 100645 then 
		if AttackStatue == 0 then
			if Target ==100643 and Checkflag( OwnerID(), 541304) == false then
				SetFlag( OwnerID() , 541304 , 1)
			elseif Target == 100644 and Checkflag( OwnerID(), 541305) == false then
				SetFlag( OwnerID() , 541305 , 1)
			elseif Target == 100645 and Checkflag( OwnerID(), 541306) == false then
				SetFlag( OwnerID() , 541306 , 1)
			else
			ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_421249_2"), 0 ); --/*你已經丟過這隻豺狼人了
				return false
			end
			return true
		else
			ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_421249_3"), 0 ); --/*使用的對象必須在非戰鬥狀態。
			return false
		end
	else
		ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_421249_4"), 0 ); --/*目標錯誤。
		return false
	end
end

function LuaQ_421249_Effect()
		CastSpell( TargetID() , TargetID() , 491248 )
		BeginPlot(TargetID() , "LuaQ_421249_Reset" , 0 )
		local Obj = Role:new( TargetID() ) 
		local BaseX = Obj :X()
		local BaseY = Obj :Y();
		local BaseZ = Obj :Z();
		local BaseDir = Obj:Dir();
		local kk = CreateObj(100377, BaseX, BaseY, BaseZ, BaseDir, 1 )	
		AddtoPartition( kk , 0 )
		ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_421249_5"), 0 ); --/*豺狼人燃燒了起來！
		SetAttack( kk , OwnerID())
		sleep(6)
		BeginPlot(kk , "LuaQ_421249_Add" , 0 )
end

function LuaQ_421249_Reset()
	LuaFunc_ResetObj( OwnerID() )	
end

function LuaQ_421249_Add()
	while true do
		CastSpell( OwnerID() , OwnerID() , 491248 )
			if ReadRoleValue( OwnerID() , EM_RoleValue_AttackTargetID ) == 0 then
				DelObj ( OwnerID() )
			else
				sleep(25)
			end
	end
end