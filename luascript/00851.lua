function LuaI_coboPIG_00()                                                                                                 --�w�f���~�v�@��

                SetPlot( OwnerID(),"range","LuaI_coboPIG_01",200 )                                         --�d��Ĳ�o

end

function LuaI_coboPIG_01()

	SetPlot( TargetID(),"range","",200 )                                                                     --���@�Ӫŭ�function�A�����A��Ĳ�o�d��@�����i��C                                                                 
	BeginPlot( TargetID() , "LuaI_coboPIG_02" , 0 )                                                   --�R�O���w����I�s Script
end





function LuaI_coboPIG_02()

	local CoolboID = LuaFunc_SearchNPCbyOrgID(OwnerID(), 100691 , 200 , 1)       --�P�_�P�򪺬Y���Ǫ����x�}��m  �B��

	local CID = LuaFunc_SearchNPCbyOrgID(OwnerID(), 100908 , 200 , 1)       --�P�_�P�򪺬Y���Ǫ����x�}��m  �w�f�y��

	local CBID = LuaFunc_SearchNPCbyOrgID(OwnerID(), 100915 , 200 , 1)       --�P�_�P�򪺬Y���Ǫ����x�}��m  �w�f���~�v


                Say( CoolboID[0],  GetString("SC_YUYU_COOLBO_2") )    


                SetAttack( CID[0], TargetID() )
                SetAttack( CID[1], TargetID() )
                SetAttack( CID[2], TargetID() )
                SetAttack( CID[3], TargetID() )
                SetAttack( CID[4], TargetID() )
                SetAttack( CID[5], TargetID() )


--	for i = 0 , table.getn(CoolboID) do                                                                             -- �x�}����
--	             SAY(  OwnerID() , CoolboID[i]  )		                                  -- ���եΡA�n�Ǫ��ۤv���L�{�b�ҳѪ���q    
--	end
 
--               sleep( 20 )

--	for i = 0 , table.getn(CID) do                                                                             -- �x�}����
--	             SAY(  OwnerID() , CID[i] )		                                        -- ���եΡA�n�Ǫ��ۤv���L�{�b�ҳѪ���q    
--	end


	local HP = 0                                                                                                       --�ŧi HP �o�Ӽƭ�

	while true do
                  sleep( 5 )
		HP = ReadRoleValue( CoolboID[0], EM_RoleValue_HP )                    -- �ˬd����ثeHP���ݶq

--	                SAY( CoolboID[0], HP )		                                        -- ���եΡA�n�Ǫ��ۤv���L�{�b�ҳѪ���q    
                  sleep( 5 )
		if HP < 1 or ReadRoleValue( CoolboID[0], EM_RoleValue_IsDead) == 1 then                                                                              -- �YHP�C��h�֦�q

 

                                Say( CoolboID[0],  GetString("SC_YUYU_COOLBO_0") )    


                  sleep( 5 )
                                Say( CID[0] , GetString("SC_YUYU_COOLBO_1") )    
                                Say( CID[1] , GetString("SC_YUYU_COOLBO_1") )     
                                Say( CID[2] , GetString("SC_YUYU_COOLBO_1") )    
                                Say( CID[3] , GetString("SC_YUYU_COOLBO_1") )     
                                Say( CID[4] , GetString("SC_YUYU_COOLBO_1") )    
                                Say( CID[5] , GetString("SC_YUYU_COOLBO_1") )     

                  sleep( 5 )
                                CancelBuff( CID[0] , 501686 )                                                                        --���������g��ı�����A
                                CancelBuff( CID[1] , 501686 )                                                                        --���������g��ı�����A
                                CancelBuff( CID[2] , 501686 )                                                                        --���������g��ı�����A
                                CancelBuff( CID[3] , 501686 )                                                                        --���������g��ı�����A
                                CancelBuff( CID[4] , 501686 )                                                                        --���������g��ı�����A
                                CancelBuff( CID[5] , 501686 )                                                                        --���������g��ı�����A

                                CancelBuff( CBID[0] , 501686 )                                                                        --���������g��ı�����A
                                CancelBuff( CBID[1] , 501686 )                                                                        --���������g��ı�����A
                                CancelBuff( CBID[2] , 501686 )                                                                        --���������g��ı�����A
 

                  sleep( 5 )
       
                                CastSpell( CID[0] , CID[0] , 491289 )                                                              --�I��k�N(�I�k��,��Hid,�k�Nid) 
                                CastSpell( CID[1] , CID[1] , 491289 )                                                              --�I��k�N(�I�k��,��Hid,�k�Nid) 
                                CastSpell( CID[2] , CID[2] , 491289 )                                                              --�I��k�N(�I�k��,��Hid,�k�Nid) 
                                CastSpell( CID[3] , CID[3] , 491289 )                                                              --�I��k�N(�I�k��,��Hid,�k�Nid) 
                                CastSpell( CID[4] , CID[4] , 491289 )                                                              --�I��k�N(�I�k��,��Hid,�k�Nid) 
                                CastSpell( CID[5] , CID[5] , 491289 )                                                              --�I��k�N(�I�k��,��Hid,�k�Nid) 

                                CastSpell( CBID[0] , CBID[0] , 491289 )                                                              --�I��k�N(�I�k��,��Hid,�k�Nid) 
                                CastSpell( CBID[1] , CBID[1] , 491289 )                                                              --�I��k�N(�I�k��,��Hid,�k�Nid) 
                                CastSpell( CBID[2] , CBID[2] , 491289 )                                                              --�I��k�N(�I�k��,��Hid,�k�Nid) 
 
			break

		end	
	end

end
