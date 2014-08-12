function LuaFunction_CheckLimitJob(limitLV)
--���禡�ݭn��J�@�ӭ� limitLV�A�� limitLV �u�ର 40 , 60 , 80 �A�b�����D�ʧP�w�A�ӥѨ�L�禡�M�w

	local limit_num = 0; --�n�Ǧ^���ƶq��
	local n = 1; -- �p�ƾ�����
	local all_job = {}; --��m�Ҧ��ޯ�W�������X

	--���q�O�⪱�a���ޯ�W����J���X����

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

	for n = 1, 9 do  -- ����u�] 9 ��

			if all_job[n] >= limitLV then

				 limit_num = limit_num + 1 --�C��o�@�ӲŦX�����šA�Ǧ^�ȫK�W�[ 1
			end;

	end;
	return limit_num; -- �Ǧ^�ұo�쪺��
end;

function LuaFunction_CheckWorkQuest( Rank )
--�ˬd�w���Τw�������u�@�ޯ���ȼƶq
-- Rank = 1 �u�K�����ˬd
-- Rank = 2 �M������ˬd
-- Rank = 3 �j�v�����ˬd
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