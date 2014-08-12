function LuaI_111301_0()

	SetPlot( OwnerID() , "touch" , "LuaI_111301_1" , 40 )                                      --設定觸碰劇情
                
end

function LuaI_111301_1()

	BeginPlot( TargetID() , "LuaI_111301_2" , 0 )                                                   --命令指定角色呼叫 Script
end

function LuaI_111301_2()
	local Angel = ReadRoleValue( targetID(), EM_RoleValue_Dir ) + 180                --將物件的面向設定為與玩家成180度的宣告
	   SetDir( OwnerID(), Angel)                                                                                --指定owner的面向
	   sleep(10)                                                                                                            --等待1秒
                   Say( TargetID() , GetString("SC_YUYUTEST_0") )                                         --TargetID的敘述文
                   PlayMotion( TargetID() , ruFUSION_ACTORSTATE_EMOTE_SPEAK )        --表演動作(演說)
                   sleep( 50 )

	   Say( OwnerID() , GetString("SC_YUYUTEST_1") ) 
                   PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_SPEAK )
  	   sleep( 30 )

                   Say( OwnerID() , GetString("SC_YUYUTEST_2") ) 
                   PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_LAUGH  )     --表演動作(大笑)

                   sleep( 30 )

                 Hide( OwnerID() )                                                                                                --隱藏物件
	
                 local ID = CreateObj(100878 , 61.1 , 58.1 , -7063.1 , 32 , 1)	              --創造角色物件，宣告代號為"ID（任意名稱）"
	 if Lua~=nil then                                                                                                    --找不到SCRIPT就跑這個值
		BeginPlot( ID , lua, 0 )
	end
	AddToPartition( ID ,    0 )	                                                                              --使消失的物件出現
	local Angel = ReadRoleValue( targetID(), EM_RoleValue_Dir ) + 180                --將物件的面向設定為與玩家成180度的宣告
	   SetDir( ID , Angel)                                                                                --指定owner的面向
	SetAttack( ID , TargetID() )	                                                                              --下令攻擊
	BeginPlot( ID , "LuaS_Discowood_CheckPeace", 0 )	                              --運行此劇情：如果脫離戰鬥……
	BeginPlot( ID , "LuaS_Discowood_Check_HP", 0 )	                              --運行此劇情：怪物血少於50％……

	while true do
		sleep(20)
		if CheckID(ID)==false then                                                                   --如果怪物不在了，死亡了
			Show(OwnerID() , 0)                                                            --使消失的物件出現
			break
		end
	end
	BeginPlot( OwnerID() , "LuaI_111301_3", 0 )	                                             --劇情：求饒……                         

	return ID
end

function LuaS_Discowood_CheckPeace()                                                                             --劇情：如果脫離戰鬥……

	while true do
		sleep(35)
		AttackTarget = ReadRoleValue(OwnerID() , EM_RoleValue_AttackTargetID )    --定義攻擊目標
		if AttackTarget == 0 then                                                                                       --如果目標消失(死亡或離開戰鬥)
			DelObj(OwnerID())                                                                               --怪物消失
			break
		end
	end	
end

function LuaS_Discowood_Check_HP()                                                                               --劇情：怪物血少於50％……

	local HP = 0                                                                                                          --宣告 HP 這個數值
	local MaxHP = ReadRoleValue( OwnerID() , EM_RoleValue_MaxHP )              --宣告怪物的最大HP
	local helfHP = MaxHP * 0.5                                                                                 --宣告 helfHP 等於最大HP的一半

	while true do
		sleep(35)
		HP = ReadRoleValue( OwnerID() , EM_RoleValue_HP )                    -- 檢查角色目前HP的殘量
			                                                                                            -- 測試用，要怪物自己說他現在所剩的血量    SAY( OwnerID() , HP )
		if HP < helfHP then                                                                              -- 若HP低於多少血量
			DelObj(OwnerID())                                                              -- 則將該物件刪除
			break
		end	
	end


end

function LuaI_111301_3()                                                                                                 --劇情：求饒……


                   sleep( 20 )
                   PlayMotion( TargetID() , ruFUSION_ACTORSTATE_EMOTE_SURRENDER )        --表演動作(求饒)
                   sleep( 20 )
                   Say( TargetID() , GetString("SC_YUYUTEST_3") )                                         --TargetID的敘述文
                   sleep( 50 )
end
