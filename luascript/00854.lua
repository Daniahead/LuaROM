function LuaI_coboN_00()

	while true do

	                local AttackTarget = ReadRoleValue(OwnerID() , EM_RoleValue_AttackTargetID )                                  --�w�q�����ؼ�
	 	if CheckID(AttackTarget) == false  then                                                                                                       --�p�G�ؼЮ���(���`�����}�԰�)
			if CheckBuff( OwnerID() , 501055 ) == false then                                                                       --�ˬd�ثe�O�_���
	                             		   CastSpell( OwnerID(), OwnerID(), 490592)                                                              --�I��k�N(�I�k��,��Hid,�k�Nid)   ���''
                                                                   SetFightMode ( OwnerID(), 0, 0, 0,0 )
			end
--			break
			sleep(60)
		else
			sleep(5)
		end
	end	
end