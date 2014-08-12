function LuaFunction_CheckLimitJob(limitLV)
--此函式需要輸入一個值 limitLV，此 limitLV 只能為 40 , 60 , 80 ，在此不主動判定，而由其他函式決定

	local limit_num = 0; --要傳回的數量值
	local n = 1; -- 計數器的值
	local all_job = {}; --放置所有技能上限的集合

	--此段是把玩家的技能上限放入集合之中

	all_job[1] = ReadRoleValue ( OwnerID(), EM_RoleValue_SkillMax_BlackSmith )
	all_job[2] = ReadRoleValue ( OwnerID(), EM_RoleValue_SkillMax_Carpenter )
	all_job[3] = ReadRoleValue ( OwnerID(), EM_RoleValue_SkillMax_MakeArmor ) 
	all_job[4] = ReadRoleValue ( OwnerID(), EM_RoleValue_SkillMax_Tailor )
	all_job[5] = ReadRoleValue ( OwnerID(), EM_RoleValue_SkillMax_Cook )
	all_job[6] = ReadRoleValue ( OwnerID(), EM_RoleValue_SkillMax_Alchemy )
	all_job[7] = ReadRoleValue ( OwnerID(), EM_RoleValue_SkillMax_Mining )
	all_job[8] = ReadRoleValue ( OwnerID(), EM_RoleValue_SkillMax_Lumbering )
	all_job[9] = ReadRoleValue ( OwnerID(), EM_RoleValue_SkillMax_Herblism )

	--END

	for n = 1, 9 do  -- 限制只跑 9 次

			if all_job[n] >= limitLV then

				 limit_num = limit_num + 1 --每獲得一個符合的等級，傳回值便增加 1
			end;

	end;
	return limit_num; -- 傳回所得到的值
end;

function LuaFunction_CheckWorkQuest( Rank )
--檢查已接或已完成的工作技能任務數量
-- Rank = 1 工匠任務檢查
-- Rank = 2 專精任務檢查
-- Rank = 3 大師任務檢查
	local Count = 0
	local Quest = {}
	if Rank == 1 then
		Quest[0] = 6 
		Quest[1] = 420385 
		Quest[2] = 420386
		Quest[3] = 420387
		Quest[4] = 420388
		Quest[5] = 420389
		Quest[6] = 420390
		Quest[7] = 420391
		Quest[8] = 420392
		Quest[9] = 420392
	elseif Rank == 2 then
		Quest[0] = 3
		Quest[1] = 420394 
		Quest[2] = 420395
		Quest[3] = 420396
		Quest[4] = 420397
		Quest[5] = 420398
		Quest[6] = 420399
		Quest[7] = 420400
		Quest[8] = 420401
		Quest[9] = 420402
	elseif Rank == 3 then
		Quest[0] = 1
		Quest[1] = 420403 
		Quest[2] = 420404
		Quest[3] = 420405
		Quest[4] = 420406
		Quest[5] = 420407
		Quest[6] = 420408
		Quest[7] = 420409
		Quest[8] = 420410
		Quest[9] = 420412
	else
		return false 
	end
	for i = 1 , 9 do
--		if CheckAcceptQuest( OwnerID() , Quest[i] ) == true or CheckCompleteQuest( OwnerID() , Quest[i] ) == true then
		if CheckAcceptQuest( OwnerID() , Quest[i] ) == true then

			Count = Count + 1
		end
	end
	if Count <= Quest[0] then
		return true
	else
		return false
	end

end