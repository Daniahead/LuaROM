function LuaI_coboN_00()

	while true do

	                local AttackTarget = ReadRoleValue(OwnerID() , EM_RoleValue_AttackTargetID )                                  --定義攻擊目標
	 	if CheckID(AttackTarget) == false  then                                                                                                       --如果目標消失(死亡或離開戰鬥)
			if CheckBuff( OwnerID() , 501055 ) == false then                                                                       --檢查目前是否潛行
	                             		   CastSpell( OwnerID(), OwnerID(), 490592)                                                              --施放法術(施法者,對象id,法術id)   潛行''
                                                                   SetFightMode ( OwnerID(), 0, 0, 0,0 )
			end
--			break
			sleep(60)
		else
			sleep(5)
		end
	end	
end