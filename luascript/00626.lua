--�]�ƶ��j�F�԰�AI
function LuaB_OGD_AI_SYSYTEM()
	Local SP
	Local MaxHP = ReadRoleValue( OwnerID() , EM_RoleValue_MaxHP )
	Local HP
	Local CheckTime = 60 --�C60���ˬd�@��
	Local CastingTime = 50 --�I�k�ɪ����ݮɶ��A�����p���ˬd�ɶ�
	local CheckA = "NO" --�ˬd�O�_�w�g�g��
	local Skill
	CastSpell( OwnerID() , OwnerID() , 491200) --���ۤv�W�]�ҳN
--	Say( OwnerID() ,"Begin" )
	while 1 do
		local AttackTarget = ReadRoleValue( OwnerID() , EM_RoleValue_AttackTargetID )
		if (  AttackTarget ~= 0 ) and ( CheckID( OwnerID() ) == true ) then  -- �ˬd�O�_���}�԰�
			HP = ReadRoleValue( OwnerID() , EM_RoleValue_HP )
--			Say( OwnerID() ,"HP = "..HP )
			SP = ReadRoleValue( OwnerID() , EM_RoleValue_SP_Sub)
--			Say( OwnerID() ,"SP ="..SP )
			if HP <= MaxHp/4 then --�� HP �p��̤jHP��1/4�ɨg�ɡA�P�ɸѰ��]�ҳN
				if CheckA == "NO" then
					Say( OwnerID() , GetString("SAY_100274_3") )
					CastSpell( OwnerID() , OwnerID() , 491094 ) --�g��
					CancelBuff(OwnerID(),501597) --�Ѱ��]�ҳN
					CheckA = "YES"
				end
				--�P�_�ù��q�̧C�����a�i�����
				local Player = LuaFunc_PartyData(AttackTarget )  
				for i = 1 , Player[0] , 1 do
					if ReadRoleValue( Player[i] ,EM_RoleValue_HP) < ReadRoleValue( AttackTarget ,EM_RoleValue_HP) and 50 > GetDistance( OwnerID(), Player[i]) then
						AttackTarget = Player[i]
						WriteRoleValue( OwnerID() , EM_RoleValue_AttackTargetID,AttackTarget  )
					end
				end
				CastSpell( OwnerID() , AttackTarget ,491020)			
			elseif SP >= 50 then --�ԷN�F��50Ĳ�o�S��
				local Player = LuaFunc_PartyData(AttackTarget )  
				for i = 1 , Player[0] , 1 do --��d��120���̻����ؼжi��ľW
					if 120 > GetDistance( OwnerID(), Player[i]) and GetDistance( OwnerID(), Player[i]) > GetDistance( OwnerID(), AttackTarget) then
						AttackTarget = Player[i]
						WriteRoleValue( OwnerID() , EM_RoleValue_AttackTargetID,AttackTarget  )
					end
				end
				Say( OwnerID() ," Target = "..AttackTarget )
				--�H���ϥί}�}�����z���ۭ�
				Skill = Rand(2) + 1
				if Skill == 1 then 
					Say( OwnerID() , GetString("SAY_100274_1") )
					CastSpell( OwnerID(),AttackTarget , 491091 ) --�ľW
					sleep(15)
					CastSpellLV( OwnerID() , OwnerID() , 491092 ,10) --�}�}��
				elseif Skill == 2 then
					Say( OwnerID() , GetString("SAY_100274_2") )
					CastSpell( OwnerID(),AttackTarget , 491091 ) --�ľW
					sleep(15)
					CastSpellLV( OwnerID() , OwnerID() , 491093 ,10) --�z���ۭ�
				end
--				AddRoleValue( OwnerID() , EM_RoleValue_HP , -(MaxHP/20) ) --Ĳ�o��ۤv� 1/20 ����

			else
				sleep(CastingTime)
			end
			if ReadRoleValue( OwnerID() , EM_RoleValue_SP_Sub ) <= 50 then 
				AddRoleValue( OwnerID() , EM_RoleValue_SP_Sub, 5) --�i�J�԰���A�ԷN����W�[
			end
			sleep(CheckTime-CastingTime)
		else
			if CheckBuff( OwnerID() , 501597 ) ~= true then
				CastSpell( OwnerID() , OwnerID() , 491200)		--���W�]�ҳN		
			end
			if CheckBuff( OwnerID() , 500960 ) == true then
				CancelBuff( OwnerID() , 501470 )		--�M���g��	
				CheckA = "NO"
			end
			WriteRoleValue( OwnerID() , EM_RoleValue_SP_Sub, 0) 
			sleep(CheckTime)
		end
	end
end