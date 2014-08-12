function LuaI_coboPIG_00()                                                                                                 --庫柏馴獸師劇情

                SetPlot( OwnerID(),"range","LuaI_coboPIG_01",200 )                                         --範圍內觸發

end

function LuaI_coboPIG_01()

	SetPlot( TargetID(),"range","",200 )                                                                     --給一個空個function，取消再次觸發範圍劇情的可能。                                                                 
	BeginPlot( TargetID() , "LuaI_coboPIG_02" , 0 )                                                   --命令指定角色呼叫 Script
end





function LuaI_coboPIG_02()

	local CoolboID = LuaFunc_SearchNPCbyOrgID(OwnerID(), 100691 , 200 , 1)       --判斷周圍的某隻怪物的矩陣位置  咕謬

	local CID = LuaFunc_SearchNPCbyOrgID(OwnerID(), 100908 , 200 , 1)       --判斷周圍的某隻怪物的矩陣位置  庫柏獵豬

	local CBID = LuaFunc_SearchNPCbyOrgID(OwnerID(), 100915 , 200 , 1)       --判斷周圍的某隻怪物的矩陣位置  庫柏馴獸師


                Say( CoolboID[0],  GetString("SC_YUYU_COOLBO_2") )    


                SetAttack( CID[0], TargetID() )
                SetAttack( CID[1], TargetID() )
                SetAttack( CID[2], TargetID() )
                SetAttack( CID[3], TargetID() )
                SetAttack( CID[4], TargetID() )
                SetAttack( CID[5], TargetID() )


--	for i = 0 , table.getn(CoolboID) do                                                                             -- 矩陣長度
--	             SAY(  OwnerID() , CoolboID[i]  )		                                  -- 測試用，要怪物自己說他現在所剩的血量    
--	end
 
--               sleep( 20 )

--	for i = 0 , table.getn(CID) do                                                                             -- 矩陣長度
--	             SAY(  OwnerID() , CID[i] )		                                        -- 測試用，要怪物自己說他現在所剩的血量    
--	end


	local HP = 0                                                                                                       --宣告 HP 這個數值

	while true do
                  sleep( 5 )
		HP = ReadRoleValue( CoolboID[0], EM_RoleValue_HP )                    -- 檢查角色目前HP的殘量

--	                SAY( CoolboID[0], HP )		                                        -- 測試用，要怪物自己說他現在所剩的血量    
                  sleep( 5 )
		if HP < 1 or ReadRoleValue( CoolboID[0], EM_RoleValue_IsDead) == 1 then                                                                              -- 若HP低於多少血量

 

                                Say( CoolboID[0],  GetString("SC_YUYU_COOLBO_0") )    


                  sleep( 5 )
                                Say( CID[0] , GetString("SC_YUYU_COOLBO_1") )    
                                Say( CID[1] , GetString("SC_YUYU_COOLBO_1") )     
                                Say( CID[2] , GetString("SC_YUYU_COOLBO_1") )    
                                Say( CID[3] , GetString("SC_YUYU_COOLBO_1") )     
                                Say( CID[4] , GetString("SC_YUYU_COOLBO_1") )    
                                Say( CID[5] , GetString("SC_YUYU_COOLBO_1") )     

                  sleep( 5 )
                                CancelBuff( CID[0] , 501686 )                                                                        --移除取消狂暴覺醒狀態
                                CancelBuff( CID[1] , 501686 )                                                                        --移除取消狂暴覺醒狀態
                                CancelBuff( CID[2] , 501686 )                                                                        --移除取消狂暴覺醒狀態
                                CancelBuff( CID[3] , 501686 )                                                                        --移除取消狂暴覺醒狀態
                                CancelBuff( CID[4] , 501686 )                                                                        --移除取消狂暴覺醒狀態
                                CancelBuff( CID[5] , 501686 )                                                                        --移除取消狂暴覺醒狀態

                                CancelBuff( CBID[0] , 501686 )                                                                        --移除取消狂暴覺醒狀態
                                CancelBuff( CBID[1] , 501686 )                                                                        --移除取消狂暴覺醒狀態
                                CancelBuff( CBID[2] , 501686 )                                                                        --移除取消狂暴覺醒狀態
 

                  sleep( 5 )
       
                                CastSpell( CID[0] , CID[0] , 491289 )                                                              --施放法術(施法者,對象id,法術id) 
                                CastSpell( CID[1] , CID[1] , 491289 )                                                              --施放法術(施法者,對象id,法術id) 
                                CastSpell( CID[2] , CID[2] , 491289 )                                                              --施放法術(施法者,對象id,法術id) 
                                CastSpell( CID[3] , CID[3] , 491289 )                                                              --施放法術(施法者,對象id,法術id) 
                                CastSpell( CID[4] , CID[4] , 491289 )                                                              --施放法術(施法者,對象id,法術id) 
                                CastSpell( CID[5] , CID[5] , 491289 )                                                              --施放法術(施法者,對象id,法術id) 

                                CastSpell( CBID[0] , CBID[0] , 491289 )                                                              --施放法術(施法者,對象id,法術id) 
                                CastSpell( CBID[1] , CBID[1] , 491289 )                                                              --施放法術(施法者,對象id,法術id) 
                                CastSpell( CBID[2] , CBID[2] , 491289 )                                                              --施放法術(施法者,對象id,法術id) 
 
			break

		end	
	end

end
