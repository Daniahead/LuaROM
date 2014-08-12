function LuaFunc_NPCWalkByMatrix(ObjMatrix,Matrix,dis,count,checktime , Circle )  --�����󨫨�}���y���I���禡
	--���Ӽƭȶ��Ǭ� 1.�إߪ�����ҦbTABLE 2.�إߪ��}�C 3.���Z 4.�}�C���j�p 5.�P�_���ɶ� 6.�h�ֶg�����㭫�ͤ@���A�p�G�� 0 �A�h�u����Ҧ���������~�i�歫��

	local A
	local B
	local CountTime = 0
	local OID = Role:new(OwnerID())

	local X0 = Matrix[1][0]["X"]
	local Y0 = Matrix[1][0]["Y"]
	local Z0 = Matrix[1][0]["Z"]

	local ObjRecord = LuaFunc_ObjMatrix_Record(ObjMatrix) --�����Ҧ� NPC ����ơA�H�ѭ��ͨϥ�

	if Circle == 0 or Circle == nil or Type(Circle) ~= "number" then
		Circle = -1
	else
		Circle = math.ceil( Circle  ) --�L����i��j�� Circle  �����
	end

	local Num = 0
	for pry , obj in ObjMatrix do --�p��x�}���X�k��NPC�ƶq
		if obj ~= nil then
			Num = Num + 1
		end
	end

	while 1 do
		--��M�s����m
		Matrix = LuaFunc_Matrix_Maker( dis , count )
 
		--�R�O�L�̲��ʨ�s����m
		for pry , obj in ObjMatrix do
			if obj ~= nil then
				if ReadRoleValue(obj, EM_RoleValue_IsNPC) == 1 and ReadRoleValue(obj, EM_RoleValue_RoomID) == ReadRoleValue(OwnerID(), EM_RoleValue_RoomID) then --�ˬd�O���O NPC
					if ReadRoleValue( obj , EM_RoleValue_AttackTargetID) ~= 0 then 
						if ReadRoleValue( obj , EM_RoleValue_IsWalk ) == 1 then
							WriteRoleValue( obj ,EM_RoleValue_IsWalk , 0  ) --�]�w���]�B
						end
					else
						MoveToFlagEnabled( obj , false )
						A = ObjRecord["A"][pry] --���X�����󪫫~�W�� A ��
						B = ObjRecord["B"][pry] --���X�����󪫫~�W�� B ��

						Local Role = Role:new(obj)
						Local DeltaX = Matrix[A][B]["X"]-Role:X()
						Local DeltaY = Matrix[A][B]["Y"]-Role:Y()
						Local DeltaZ = Matrix[A][B]["Z"]-Role:Z()
						local Distance = ( DeltaX*DeltaX ) + ( DeltaZ*DeltaZ ) + ( DeltaZ*DeltaZ )
						local FinalDis = dis
						if 3*dis < 100 then
							FinalDis = 100
						end
						if Distance >= (10*dis)*(10*dis) then --���F�`�ٸ귽�A�����Υ���Ƨ@�P�w
							SetPos( obj, Matrix[A][B]["X"], Matrix[A][B]["Y"], Matrix[A][B]["Z"] , Matrix[A][B]["Dir"] )
						elseif Distance >= (FinalDis)*(FinalDis) then
							WriteRoleValue( Obj , EM_RoleValue_IsWalk , 0 )
						else
							WriteRoleValue( Obj , EM_RoleValue_IsWalk , 1 )
						end
						Move( obj, Matrix[A][B]["X"] , Matrix[A][B]["Y"]  , Matrix[A][B]["Z"]  )
					end
				end
			end
		end
		sleep(checktime+1)

		--�ˬd�O�_���w�g��F�s����m�F
		for i = 1 , 10 , 1 do --���Ӥ[�������U�@�Ӧ�m
			local Check = 0
			for pry , obj in ObjMatrix do
				if obj ~= nil then
					if ReadRoleValue(obj, EM_RoleValue_IsNPC) == 1 and ReadRoleValue( obj , EM_RoleValue_AttackTargetID) == 0 and ReadRoleValue(obj, EM_RoleValue_RoomID) == ReadRoleValue(OwnerID(), EM_RoleValue_RoomID) then --�O NPC �åB���b�԰����~�ˬd
						A = ObjRecord["A"][pry] --���X�����󪫫~�W�� A ��
						B = ObjRecord["B"][pry] --���X�����󪫫~�W�� B ��
						local Role = Role:new(obj)
						if Role:X() == Matrix[A][B]["X"] or Role:Y() == Matrix[A][B]["Y"] or Role:Z() == Matrix[A][B]["Z"] then
							Check = Check + 1
						end
					end
				end
			end
			if Check == Num then
				break
			end
			sleep( 3 )
		end

		--��Ѧ�NPC���^���I���ɭԡA�ˬd�O�_�n���Ͱ}�C���Ҧ�NPC
		if OID:X() ~= X0 or OID:Y() ~= Y0 or OID:X() ~= Z0 then
			CountTime = CountTime + 1
			if CountTime == Circle then
				for pry , obj in ObjMatrix do --�ˬd�p�G NPC ���b�A�N���ͤ@�� NPC
					if obj ~= nil then
						if ReadRoleValue(obj, EM_RoleValue_IsNPC) ~= 1 or ReadRoleValue(obj, EM_RoleValue_IsDead) ~= 0 or CheckID(obj) ~= true or ReadRoleValue(obj, EM_RoleValue_RoomID) ~= ReadRoleValue(OwnerID(), EM_RoleValue_RoomID) then -- NPC �O�_�s�b
							LuaFunc_CreateNPCByMatrix(ObjRecord["OrgID"][pry],Matrix,ObjRecord["A"][pry],ObjRecord["B"][pry] )
						end
					end
				end
				CountTime = 0
			elseif Circle == -1 then --���i��g������
				CountTime = 0
			end
		end

		--�ˬd�}�C��������O�_���٦s�b�A�p�G�����s�b�A�K�����^��
		local Reset = 0
		for pry , obj in ObjMatrix do 
			if obj ~= nil then
				if ReadRoleValue(obj, EM_RoleValue_IsNPC) ~= 1 or ReadRoleValue(obj, EM_RoleValue_IsDead) ~= 0 or CheckID(obj) ~= true or ReadRoleValue(obj, EM_RoleValue_RoomID) ~= ReadRoleValue(OwnerID(), EM_RoleValue_RoomID) then -- NPC �O�_�s�b
					Reset = Reset + 1
				end
			end
		end
		if Reset == Num then
			break
		end
	end

end