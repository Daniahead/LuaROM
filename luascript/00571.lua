function LuaP_CastBersark()
	MoveToFlagEnabled( OwnerID(), false );
	sleep( 30 )
	CastSpell( OwnerID() , OwnerID() , 491028 )
	sleep( 10 )
	MoveToFlagEnabled( OwnerID(), true );
end

function LuaI_580014_Follow()
	LuaI_OneFollow_A_0(580014)
end

function LuaI_580068_Follow()
	LuaI_OneFollow_A_0(580068)
end

function LuaI_580069_Follow()
	LuaI_OneFollow_A_0(580069)
end

function LuaI_OneFollow_A_0(FlagID)

	local Zombie = CreateObjByFlag( 100653, FlagID , 0 , 1 ) --召喚一隻屍妖出來
	local Spider = CreateObjByFlag( 100393, FlagID , 0 , 1 ) --召喚一隻蜘蛛出來
	local RoomID = ReadRoleValue( OwnerID() , EM_RoleValue_RoomID )

	AddToPartition( Zombie , RoomID )
	AddToPartition( Spider , RoomID )

	WriteRoleValue( Zombie , EM_RoleValue_PID , FlagID )
	WriteRoleValue( Spider , EM_RoleValue_PID , FlagID )

	BeginPlot( Zombie ,"LuaI_OneFollow_A_1" , 0 ) --叫殭屍馬上執行移動劇情
	BeginPlot( Spider ,"LuaI_OneFollow_A_1" , 0 ) --叫蜘蛛 2 秒後執行移動劇情

	local FlagCount = GetMoveFlagCount (FlagID) -1
	local Flag = 0
	local n = 1

	MoveToFlagEnabled( OwnerID(), false );
	WriteRoleValue( OwnerID() ,EM_RoleValue_IsWalk , 1  ) --設定為走路

	while 1 do

		if Flag == FlagCount then --控制來回走
			n = -1
		elseif Flag == 0 then
			n = 1	
		end

		Flag = Flag + n

		LuaFunc_MoveToFlag( OwnerID(),FlagID, Flag ,0 ) 
		if ReadRoleValue( Zombie , EM_RoleValue_IsNPC) == 1 and ReadRoleValue( Zombie , EM_RoleValue_RoomID) == RoomID then
			WriteRoleValue( Zombie , EM_RoleValue_Money , Flag )
		end
		sleep( 10 ) --每 1 秒檢查一次
		if ReadRoleValue( Spider , EM_RoleValue_IsNPC) == 1 and ReadRoleValue( Spider , EM_RoleValue_RoomID) == RoomID then
			WriteRoleValue( Spider , EM_RoleValue_Money , Flag )
		end

	end
end

function LuaI_OneFollow_A_1()

	local Distance = GetDistance( OwnerID(), TargetID() );
	local FlagID = ReadRoleValue( OwnerID() , EM_RoleValue_PID )
	MoveToFlagEnabled( OwnerID(), false );
	WriteRoleValue( OwnerID() ,EM_RoleValue_IsWalk , 1  ) --設定為走路

	local n = 0
	while 1 do

		if ReadRoleValue( OwnerID(),EM_RoleValue_IsDead ) == 1 then --偵測到自己死亡就停止迴圈
			break
		end

		if ReadRoleValue( OwnerID() , EM_RoleValue_AttackTargetID) ~= 0 then 	--如果在戰鬥中的話	

			if ReadRoleValue( OWnerID() , EM_RoleValue_IsWalk ) == 1 then
				WriteRoleValue( OwnerID() ,EM_RoleValue_IsWalk , 0  ) --設定為跑步
			end
			sleep( 60 )

		else--不在戰鬥就跟上

			local Leader = Role:new( TargetID() )
			local Flag = ReadRoleValue( OwnerID() , EM_RoleValue_Money )
			if GetDistance( OwnerID(), TargetID() ) > 150 or n > 60 then --超出 150 或 30 秒沒跟上就傳送
			--	SetPos( OwnerID() , Leader:X() , Leader:Y() , Leader:Z() , Leader:Dir() )
				SetPosByFlag( OwnerID(),FlagID, Flag )

			else
				if GetDistance( OwnerID(), TargetID() ) > 100 and  GetDistance( OwnerID(), TargetID() ) > Distance then
					if ReadRoleValue( OWnerID() , EM_RoleValue_IsWalk ) == 1 then --超出距離就跑步跟上
						WriteRoleValue( OwnerID() ,EM_RoleValue_IsWalk , 0  ) --設定為跑步
					end
				--	LuaFunc_WaitMoveTo( OwnerID(), Leader:X() , Leader:Y() , Leader:Z() , Leader:Dir() )
				elseif GetDistance( OwnerID(), TargetID() ) < Distance then
					sleep( 1 )
				else
					if ReadRoleValue( OWnerID() , EM_RoleValue_IsWalk ) == 0 then
						WriteRoleValue( OwnerID() ,EM_RoleValue_IsWalk , 1  ) --設定為走路
					end
				end
				--	SetFollow( OwnerID(), TargetID() )
				LuaFunc_MoveToFlag( OwnerID(), FlagID, Flag ,0 ) 
				n = 0
			end			
		end
		n = n + 1
		sleep( 5 ) -- 每 0.5 秒檢查一次
	end
end