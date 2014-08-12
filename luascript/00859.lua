--------------------------------Zone1 Boss
function zone1_boss()
	for i = 0 , 120 , 1 do
		local AttackTarget = ReadRoleValue( OwnerID() , EM_RoleValue_AttackTargetID )
		sleep(10)
		if  ( AttackTarget ~= 0 ) and ( CheckID( OwnerID() ) ) == true then
			local counter1 = 0
			local counter2 = 0
			local counter3 = 0
			local counter4 = 0
			repeat
				local MaxHP = ReadRoleValue( OwnerID() , EM_RoleValue_MaxHP )
				local NowHP = ReadRoleValue( OwnerID() , EM_RoleValue_HP )
				local HPPercent =( NowHP / MaxHP)*100
				sleep(10)
				counter1 = counter1 + 1
				counter2 = counter2 + 1
				if counter1 == 50 then
					CastSpell( TargetID() , OwnerID() , 491093)            
					--CastSpell( TargetID() , OwnerID() , 491105) 
					counter1 = 0
					sleep(10)
				end
				if counter2 == 20 then 
					--CastSpell( TargetID() , OwnerID() , 491093) 
					CastSpell( TargetID() , OwnerID() , 491024) 
					counter2 = 0
					sleep(10)
				end				
				--Say( OwnerID(),  HPPercent ) 
				if HPPercent <= 60 and ( CheckBuff( OwnerID() , 501470 ) == false )  then                   ----¬I©ñ¨g¼É
					--ScriptMessage( OwnerID() , OwnerID() , 1 , "Berserk Mode!", 0 )
					--Say( OwnerID(),  "Berserk Mode!" )
					CastSpell(OwnerID() , OwnerID() , 491094) 
				end
			until AttackTarget == 0  
		elseif ( AttackTarget == 0 ) and ( CheckID( OwnerID() ) ) == true then
			CancelBuff( OwnerID(), 501470 )
		end
	end
end


--------------------------------------------------test
function spelltest()
	CastSpell( TargetID() , OwnerID() , 491318) 
end
