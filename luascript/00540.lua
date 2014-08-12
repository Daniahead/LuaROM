function sec_read()
	local sec=0
	local hp1=ReadRoleValue(OwnerID(),EM_RoleValue_MaxHP)
	local dmg1=0
	local mp1=ReadRoleValue(OwnerID(),EM_RoleValue_MaxMP)
	local Ret = {}
	Say(OwnerID(),TargetID())
	SetFollow( OwnerID(), TargetID() )

--Suez build

	
	local n=0
	while 1 do

		if n > 600 then -- 防無窮迴圈
			ScriptMessage( OwnerID() , OwnerID() , 0, "無窮迴圈", 0 )
			break
		else
			--ScriptMessage( OwnerID() , OwnerID() , 0, "合法迴圈", 0 )
		end

		if ReadRoleValue( OwnerID() , EM_RoleValue_IsAttackMode) == 1  then  --檢查是否離開戰鬥
			if ReadRoleValue(OwnerID(),EM_RoleValue_HP)~=0 then
				if sec == 0 then
					local Obj
					local Count = SetSearchRangeInfo( OwnerID() , 250 )
					local NPCCount = 0
					ScriptMessage( OwnerID(), OwnerID(), 0, "start", 0 )
					 for i = 1 , Count , 1 do
						local ID = GetSearchResult()
						Obj = Role:New( ID )
						if Obj:IsNPC() == True and Obj:AttackTargetID() == OwnerID() then
							Ret[NPCCount] = ID
							NPCCount = NPCCount + 1;
						end
					end	
					Ret[ NPCCount ] = -1;
					dmg1 = ReadRoleValue( ret[0] ,EM_RoleValue_MaxHP)
					Say(OwnerID(),dmg1);
				end
				sec = sec+1
			else
				local hp2=ReadRoleValue(OwnerID(),EM_RoleValue_HP)
				local dmg2 = ReadRoleValue( ret[0] ,EM_RoleValue_HP)
				local mp2 = ReadRoleValue(OwnerID(),EM_RoleValue_MP)

				tell(TargetID(),OwnerID(),"Time="..sec/2);
				tell(TargetID(),OwnerID(),"HP="..hp1-hp2);
				tell(TargetID(),OwnerID(),"DMG="..dmg1-dmg2);
				tell(TargetID(),OwnerID(),"MP="..mp1-mp2);
			end
		else

				if sec > 0 then
					local hp2=ReadRoleValue(OwnerID(),EM_RoleValue_HP)
					local dmg2 = ReadRoleValue( ret[0] ,EM_RoleValue_HP)
					local mp2 = ReadRoleValue(OwnerID(),EM_RoleValue_MP)

					tell(TargetID(),OwnerID(),"Time="..sec/2);
					tell(TargetID(),OwnerID(),"HP="..hp1-hp2);
					tell(TargetID(),OwnerID(),"DMG="..dmg1-dmg2);
					tell(TargetID(),OwnerID(),"MP="..mp1-mp2);
				end
 			sec = 0
		end

		sleep(5)	--  0.5秒檢查一次	
		n = n + 1
	end
end
function LuaI_sec_read_item()
	SetPlot(OwnerID(),"touch","sec_read",70)
end

function sec_read_item()
	local sec=0
	local hp1=ReadRoleValue(TargetID(),EM_RoleValue_MaxHP)
	local dmg1=0
	local mp1=ReadRoleValue(TargetID(),EM_RoleValue_MaxMP)
	local Ret = {}
	Say(OwnerID(),TargetID())
	SetFollow( OwnerID(), TargetID() )

--Suez build

	
	local n=0
	while 1 do

		if n > 600 then -- 防無窮迴圈
			ScriptMessage( OwnerID() , OwnerID() , 0, "無窮迴圈", 0 )
			break
		else
			--ScriptMessage( OwnerID() , OwnerID() , 0, "合法迴圈", 0 )
		end

		if ReadRoleValue( TargetID() , EM_RoleValue_IsAttackMode) == 1  then  --檢查是否離開戰鬥
			if ReadRoleValue(TargetID(),EM_RoleValue_HP)~=0 then
				if sec == 0 then
					local Obj
					local Count = SetSearchRangeInfo( TargetID() , 250 )
					local NPCCount = 0
					ScriptMessage( Target(), TargetID(), 0, "start", 0 )
					 for i = 1 , Count , 1 do
						local ID = GetSearchResult()
						Obj = Role:New( ID )
						if Obj:IsNPC() == True and Obj:AttackTargetID() == OwnerID() then
							Ret[NPCCount] = ID
							NPCCount = NPCCount + 1;
						end
					end	
					Ret[ NPCCount ] = -1;
					dmg1 = ReadRoleValue( ret[0] ,EM_RoleValue_MaxHP)
					Say(TargetID(),dmg1);
				end
				sec = sec+1
			else
				local hp2=ReadRoleValue(TargetID(),EM_RoleValue_HP)
				local dmg2 = ReadRoleValue( ret[0] ,EM_RoleValue_HP)
				local mp2 = ReadRoleValue(TargetID(),EM_RoleValue_MP)

				tell(OwnerID(),TargetID(),"Time="..sec/10);
				tell(OwnerID(),TargetID(),"HP="..hp1-hp2);
				tell(OwnerID(),TargetID(),"DMG="..dmg1-dmg2);
				tell(OwnerID(),TargetID(),"MP="..mp1-mp2);
			end
		else

				if sec > 0 then
					local hp2=ReadRoleValue(OwnerID(),EM_RoleValue_HP)
					local dmg2 = ReadRoleValue( ret[0] ,EM_RoleValue_HP)
					local mp2 = ReadRoleValue(OwnerID(),EM_RoleValue_MP)

					tell(OwnerID(),TargetID(),"Time="..sec/10);
					tell(OwnerID(),TargetID(),"HP="..hp1-hp2);
					tell(OwnerID(),TargetID(),"DMG="..dmg1-dmg2);
					tell(OwnerID(),TargetID(),"MP="..mp1-mp2);
				end
 			sec = 0
		end

		sleep(1)	--  0.1秒檢查一次	
		n = n + 1
	end
end




	





	




