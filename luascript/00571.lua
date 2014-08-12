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

	local Zombie = CreateObjByFlag( 100653, FlagID , 0 , 1 ) --�l��@���ͧ��X��
	local Spider = CreateObjByFlag( 100393, FlagID , 0 , 1 ) --�l��@���j��X��
	local RoomID = ReadRoleValue( OwnerID() , EM_RoleValue_RoomID )

	AddToPartition( Zombie , RoomID )
	AddToPartition( Spider , RoomID )

	WriteRoleValue( Zombie , EM_RoleValue_PID , FlagID )
	WriteRoleValue( Spider , EM_RoleValue_PID , FlagID )

	BeginPlot( Zombie ,"LuaI_OneFollow_A_1" , 0 ) --�s�L�Ͱ��W���沾�ʼ@��
	BeginPlot( Spider ,"LuaI_OneFollow_A_1" , 0 ) --�s�j�� 2 �����沾�ʼ@��

	local FlagCount = GetMoveFlagCount (FlagID) -1
	local Flag = 0
	local n = 1

	MoveToFlagEnabled( OwnerID(), false );
	WriteRoleValue( OwnerID() ,EM_RoleValue_IsWalk , 1  ) --�]�w������

	while 1 do

		if Flag == FlagCount then --����Ӧ^��
			n = -1
		elseif Flag == 0 then
			n = 1	
		end

		Flag = Flag + n

		LuaFunc_MoveToFlag( OwnerID(),FlagID, Flag ,0 ) 
		if ReadRoleValue( Zombie , EM_RoleValue_IsNPC) == 1 and ReadRoleValue( Zombie , EM_RoleValue_RoomID) == RoomID then
			WriteRoleValue( Zombie , EM_RoleValue_Money , Flag )
		end
		sleep( 10 ) --�C 1 ���ˬd�@��
		if ReadRoleValue( Spider , EM_RoleValue_IsNPC) == 1 and ReadRoleValue( Spider , EM_RoleValue_RoomID) == RoomID then
			WriteRoleValue( Spider , EM_RoleValue_Money , Flag )
		end

	end
end

function LuaI_OneFollow_A_1()

	local Distance = GetDistance( OwnerID(), TargetID() );
	local FlagID = ReadRoleValue( OwnerID() , EM_RoleValue_PID )
	MoveToFlagEnabled( OwnerID(), false );
	WriteRoleValue( OwnerID() ,EM_RoleValue_IsWalk , 1  ) --�]�w������

	local n = 0
	while 1 do

		if ReadRoleValue( OwnerID(),EM_RoleValue_IsDead ) == 1 then --������ۤv���`�N����j��
			break
		end

		if ReadRoleValue( OwnerID() , EM_RoleValue_AttackTargetID) ~= 0 then 	--�p�G�b�԰�������	

			if ReadRoleValue( OWnerID() , EM_RoleValue_IsWalk ) == 1 then
				WriteRoleValue( OwnerID() ,EM_RoleValue_IsWalk , 0  ) --�]�w���]�B
			end
			sleep( 60 )

		else--���b�԰��N��W

			local Leader = Role:new( TargetID() )
			local Flag = ReadRoleValue( OwnerID() , EM_RoleValue_Money )
			if GetDistance( OwnerID(), TargetID() ) > 150 or n > 60 then --�W�X 150 �� 30 ��S��W�N�ǰe
			--	SetPos( OwnerID() , Leader:X() , Leader:Y() , Leader:Z() , Leader:Dir() )
				SetPosByFlag( OwnerID(),FlagID, Flag )

			else
				if GetDistance( OwnerID(), TargetID() ) > 100 and  GetDistance( OwnerID(), TargetID() ) > Distance then
					if ReadRoleValue( OWnerID() , EM_RoleValue_IsWalk ) == 1 then --�W�X�Z���N�]�B��W
						WriteRoleValue( OwnerID() ,EM_RoleValue_IsWalk , 0  ) --�]�w���]�B
					end
				--	LuaFunc_WaitMoveTo( OwnerID(), Leader:X() , Leader:Y() , Leader:Z() , Leader:Dir() )
				elseif GetDistance( OwnerID(), TargetID() ) < Distance then
					sleep( 1 )
				else
					if ReadRoleValue( OWnerID() , EM_RoleValue_IsWalk ) == 0 then
						WriteRoleValue( OwnerID() ,EM_RoleValue_IsWalk , 1  ) --�]�w������
					end
				end
				--	SetFollow( OwnerID(), TargetID() )
				LuaFunc_MoveToFlag( OwnerID(), FlagID, Flag ,0 ) 
				n = 0
			end			
		end
		n = n + 1
		sleep( 5 ) -- �C 0.5 ���ˬd�@��
	end
end