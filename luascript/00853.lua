function LuaI_coNa_00()                                                                                                 --�w�f���~�v�@��

                SetPlot( OwnerID(),"range","LuaI_coNa_01",100 )                                         --�d��Ĳ�o

end

function LuaI_coNa_01()

	BeginPlot( TargetID() , "LuaI_coNa_02" , 0 )                                                   --�R�O���w����I�s Script
end


function LuaI_coNa_02()

	local CoNaID = LuaFunc_SearchNPCbyOrgID(OwnerID(), 100916, 200 , 1)       --�P�_�P�򪺬Y���Ǫ����x�}��m �t����    
      
	local MaxPrist = 0
	local Prist

	SetPos( CoNaID[0] , 124.7, 22.3, -5227.5 , 225 )                                                                                                    --�R�O����ǰe�ܬY��mSetPos( RoleID, X, Y , Z , Dir )
	SetPos( CoNaID[1] , 183.4, 24.8, -5182.4 , 231 )                                                                       


	SetFightMode ( CoNaID[0] , 0, 0, 0, 0 )
	SetFightMode ( CoNaID[1] , 0, 0, 0, 0 )

	if CheckBuff( CoNaID[0] , 501055 ) == false then                                                                       --�ˬd�ثe�O�_���
		CastSpell( CoNaID[0], CoNaID[0], 490592)                                                              --�I��k�N(�I�k��,��Hid,�k�Nid)   ���''
		SetFightMode ( CoNaID[0], 0, 0, 0,0 )
	end

	if CheckBuff( CoNaID[1] , 501055 ) == false then                                                                       
		CastSpell( CoNaID[1], CoNaID[1], 490592)                                                              
		SetFightMode ( CoNaID[1], 0, 0, 0,0 )
	end


	local PlayerTeam = LuaFunc_PartyData( TargetID() )                                                --�P�_TargetID() ���Ҧ��ն����������(�ư����b�P�a�Ϫ̦����ư����`��)�A PlayerTeam[0] �Ĥ@����Ƭ������H�ơB�ĤG���H�ᬰ������ơC	

	local A = 0
	for i = 1 , PlayerTeam[0] , 1 do

	sleep(15)

		if ReadRoleValue( PlayerTeam[i] , EM_RoleValue_VOC ) == 5 and ReadRoleValue( PlayerTeam[i] , EM_RoleValue_LV ) > MaxPrist  and ReadRoleValue( PlayerTeam[i] , EM_RoleValue_IsDead ) ~= 1  then       --�P�_�����D¾�O���q�B���ų̰��B�Ӫ��a����

		MaxPrist = ReadRoleValue( PlayerTeam[i] , EM_RoleValue_LV ) 
		Prist = PlayerTeam[i] 
		A = 1

		sleep(5)
		Say( CoNaID[0] ,  GetString("SC_YUYU_TEST_4") )    
		sleep(5)

		elseif ReadRoleValue( PlayerTeam[i] , EM_RoleValue_VOC_SUB ) == 5 and ReadRoleValue( PlayerTeam[i] , EM_RoleValue_VOC_SUB ) > MaxPrist   and ReadRoleValue( PlayerTeam[i] , EM_RoleValue_IsDead ) ~= 1   then    --�P�W�@�˦��P�_��¾

		MaxPrist = ReadRoleValue( PlayerTeam[i] , EM_RoleValue_VOC_SUB ) 
		Prist = PlayerTeam[i] 
		A = 1

		sleep(5)
		Say( CoNaID[0] ,  GetString("SC_YUYU_TEST_4") )    
		sleep(5)

		end	

	end 

	if A == 0 then
		for i = 1 , PlayerTeam[0] , 1 do
			if ReadRoleValue( PlayerTeam[i] , EM_RoleValue_VOC ) == 4 and ReadRoleValue( PlayerTeam[i] , EM_RoleValue_LV ) > MaxPrist  and ReadRoleValue( PlayerTeam[i] , EM_RoleValue_IsDead ) ~= 1  then       --�P�_�����D¾�O�k�v�B���ų̰��B�Ӫ��a����
			MaxPrist = ReadRoleValue( PlayerTeam[i] , EM_RoleValue_LV ) 
			Prist = PlayerTeam[i]    
			sleep(5)
			Say( CoNaID[0] ,  GetString("SC_YUYU_TEST_5") )                           
			sleep(5)
			end
		end
	end

	if CheckID( Prist ) == true and ReadRoleValue( Prist , EM_RoleValue_IsPlayer ) == 1 and  ReadRoleValue( Prist , EM_RoleValue_RoomID ) == ReadRoleValue( OwnerID() , EM_RoleValue_RoomID ) then          --�T�w�Ӫ��a�Mowner�P�@�h�B�s�b

		SetFightMode ( CoNaID[0] , 1, 1, 0,1 )
		SetFightMode ( CoNaID[1] , 1, 1, 0,1 )

		SetAttack( CoNaID[0] , Prist  )
		SetAttack( CoNaID[1] , Prist  )

		sleep(10)

		CastSpell( Prist  , CoNaID[0] , 491301)                                                              
		CastSpell( Prist  , CoNaID[1] , 491301)     
                                                         
		if CheckDistance( CoNaID[0] , Prist , 80 ) or CheckDistance( CoNaID[1] , Prist , 80 )  then		

				sleep(20)
				CastSpelllv( CoNaID[0] , Prist , 491299, 1)                                                              --�I��k�N&LV(�I�k��,��Hid,�k�Nid,LV)  
				CastSpelllv( CoNaID[1] , Prist , 490483, 1)         
				sleep(30)
				CastSpelllv( CoNaID[0] , Prist , 490618, 1)        
				CastSpelllv( CoNaID[1] , Prist , 490618, 1)                                                         
				sleep(30)
				CastSpelllv( CoNaID[0] , Prist , 490582, 20)    
				CastSpelllv( CoNaID[1] , Prist , 491299, 20)                                                           
		end      

		while true do
	                
				local X1 = ReadRoleValue(CoNaID[0] , EM_RoleValue_AttackTargetID ) 
				local X2 = ReadRoleValue(CoNaID[1] , EM_RoleValue_AttackTargetID )                            
                                            
				if ReadRoleValue( Prist  , EM_RoleValue_IsDead ) == 1 or  X1 == 0 or  X2 == 0 then                               --�p�G�ؼЮ���(���`�����}�԰�)
		
					SetPos( CoNaID[0] , 124.7, 22.3, -5227.5 , 225 )                                                                                                    --�R�O����ǰe�ܬY��m
					SetPos( CoNaID[1] , 183.4, 24.8, -5182.4 , 231 )                                                                                                    --�R�O����ǰe�ܬY��m

					Say( CoNaID[1] ,  GetString("SC_YUYU_TEST_1") )  

					sleep(20)
					SetFightMode ( CoNaID[0] , 1, 1, 0,1 )
					SetFightMode ( CoNaID[1] , 1, 1, 0,1 )

--					if CheckBuff( CoNaID[0] , 501055 ) == false then                                                                       --�ˬd�ثe�O�_���
--						CastSpell( CoNaID[0], CoNaID[0], 490592)                                                              --�I��k�N(�I�k��,��Hid,�k�Nid)   ���''
--						SetFightMode ( CoNaID[0], 0, 0, 0,0 )
--					end
	
--					if CheckBuff( CoNaID[1] , 501055 ) == false then                                                                       --�ˬd�ثe�O�_���
--						CastSpell( CoNaID[1], CoNaID[1], 490592)                                                              --�I��k�N(�I�k��,��Hid,�k�Nid)   ���''
--						SetFightMode ( CoNaID[1], 0, 0, 0,0 )
--					end
			
	
					break
				end
				sleep(10)
		end	
	else
		Say( CoNaID[1] ,  GetString("SC_YUYU_TEST_2") )  
		SetFightMode ( CoNaID[0] , 1, 1, 0,1 )
		SetFightMode ( CoNaID[1] , 1, 1, 0,1 )

	end
end