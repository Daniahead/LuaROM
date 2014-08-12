----------------------------------------------------------------證明-------------------------------------------------------------------
function LuaI_200680_Check() --貝絲的護身符
	local Point = LuaFunc_SearchNPCbyOrgID( OwnerID() , 110676 , 500 )

	if CheckID(Point) == true then
		if ReadRoleValue( Point , EM_RoleValue_PID) ~= 0 then
			ScriptMessage( OwnerID(), OwnerID(), 0, GetString("EM_200680_0"), 0 ); --/*魔怪母體已經出現了！
			return false
		end
		return true
	else
		ScriptMessage( OwnerID(), OwnerID(), 0, GetString("EM_200680_2"), 0 ); --/*沒有反應，看來這裡不是魔怪幻影的母體出沒之處。	
		return false
	end
end 

function LuaI_200680_Use() --貝絲的護身符
	local Point = LuaFunc_SearchNPCbyOrgID( OwnerID() , 110676 , 500 )
--		SAY( OwnerID() , Point )
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("EM_200680_1"), 0 ); --/*你四周的空氣似乎產生了詭異的波動......
	BeginPlot(Point,"LuaQ_200680_Sui",0)
end 

function LuaQ_200680_Sui() 
	local NightMare
	NightMare = LuaFunc_CreateObjByObj ( 100632 , TargetID() )
	SetAttack( Nightmare , TargetID() )
	WriteRoleValue( OwnerID() , EM_RoleValue_PID , 2000 )
	Sleep(120)
	while 1 do
		sleep(1)
		if ReadRoleValue( Nightmare, EM_RoleValue_AttackTargetID ) ~= 0 then 
			sleep(60)	-- 六秒檢查一次	
		else
			WriteRoleValue( OwnerID() , EM_RoleValue_PID , 0 )
			DelObj( Nightmare )
			break		
		end
	sleep(1)
	end
end
--------------------------------------------------------------------------------------------------------------------------------------- 
function LuaP_420576_0()
	local Check = Rand(5)
	local DCheck = LuaFunc_SearchNPCbyOrgID( OwnerID() , 100631, 500 ) 
	if Check == 3 then
		if CheckID( DCheck ) == false then
			MoveToFlagEnabled( OwnerID() , False )
			local Monster = CreateObjByFlag (  100631, 580046, 0 ,1 )
			AddToPartition(Monster , 0)
			SetPlot( Monster ,"dead","LuaQ_420576_Dead",40 )
			BeginPlot( Monster , "LuaQ_420576_Attack" , 0 )
		end
	end
end

function LuaQ_420576_Attack()
	local Ret = {}
	local Obj;
	local Count = SetSearchRangeInfo( OwnerID(),300 )

	for i = 1 , Count , 1 do
		local ID = GetSearchResult()
		Obj = Role:New( ID )
		if Obj:IsNPC() == True then
			if Obj:OrgID() == 110677 or Obj:OrgID() == 110678 or Obj:OrgID() == 110666 or Obj:OrgID() == 110667 or Obj:OrgID() == 110033 then 
				Say( ID , GetString("SAY_420576_0") ) --/*魔怪出現了！大家注意！
				BeginPlot( ID , "LuaQ_420576_Guard" , 0 )
			end

		end
	end
	LuaFunc_MoveToFlag( OwnerID(), 580046 , 1,0 )
--	SetAttack( OwnerID() , TargetID() )
	LuaFunc_Obj_Suicide(150)
end

function LuaQ_420576_Guard() --關閉本來的動作，並讓NPC攻擊目標
	MoveToFlagEnabled( OwnerID() , false )
	DisableQuest( OwnerID() , true )
	SetRoleCamp( OwnerID() , "SNPC" )
	SetFightMode ( OwnerID(),1, 1, 1,1 )
	local Nightmare = TargetID()
	local DPID = ReadRoleValue( Nightmare , EM_RoleValue_DPID )
	if SetAttack( OwnerID() , TargetID() ) then
--		Say( OwnerID() , "On Attack "..ReadRoleValue( OwnerID(), EM_RoleValue_AttackTargetID ))
		
	end
	while 1 do
		sleep(1)
		if ReadRoleValue( OwnerID(), EM_RoleValue_AttackTargetID ) == Nightmare and ReadRoleValue( TargetID() , EM_RoleValue_DPID ) ==DPID then 
			sleep(60)	-- 六秒檢查一次	
		else
--			Say( OwnerID() , "Safe")
			break		
		end
		sleep(1)
	end
	SetFightMode ( OwnerID(),0, 1, 0,0 )
	DisableQuest( OwnerID() , false )
	MoveToFlagEnabled( OwnerID() , true )
end

function LuaQ_420576_Dead()
	if ReadRoleValue( TargetID() , EM_RoleValue_IsPlayer ) == 1 then
		if CheckCompleteQuest( TargetID() , 420576 ) == false  and CountBodyItem( TargetID() , 200751 ) == 0 then
			GiveBodyItem( TargetID() , 200751 , 1 )
		end
	end
	return true
end

function LuaI_420576_Guard()
	SetPlot( OwnerID() , "dead" ,"LuaQ_420576_Dead2" , 40 )
end

function LuaQ_420576_Dead2()
--	Say( OwnerID() , ReadRoleValue( OwnerID(), EM_RoleValue_AttackTargetID ) )
	SetAttack( OwnerID() , TargetID() )
	return false
end