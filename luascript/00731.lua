function LuaFunc_NPCWalkByMatrix(ObjMatrix,Matrix,dis,count,checktime , Circle )  --讓物件走到陣型座標點的函式
	--五個數值順序為 1.建立的物件所在TABLE 2.建立的陣列 3.間距 4.陣列的大小 5.判斷的時間 6.多少週期完整重生一次，如果填 0 ，則只有當所有物件消失才進行重生

	local A
	local B
	local CountTime = 0
	local OID = Role:new(OwnerID())

	local X0 = Matrix[1][0]["X"]
	local Y0 = Matrix[1][0]["Y"]
	local Z0 = Matrix[1][0]["Z"]

	local ObjRecord = LuaFunc_ObjMatrix_Record(ObjMatrix) --紀錄所有 NPC 的資料，以供重生使用

	if Circle == 0 or Circle == nil or Type(Circle) ~= "number" then
		Circle = -1
	else
		Circle = math.ceil( Circle  ) --無條件進位強制 Circle  為整數
	end

	local Num = 0
	for pry , obj in ObjMatrix do --計算矩陣中合法的NPC數量
		if obj ~= nil then
			Num = Num + 1
		end
	end

	while 1 do
		--找尋新的位置
		Matrix = LuaFunc_Matrix_Maker( dis , count )
 
		--命令他們移動到新的位置
		for pry , obj in ObjMatrix do
			if obj ~= nil then
				if ReadRoleValue(obj, EM_RoleValue_IsNPC) == 1 and ReadRoleValue(obj, EM_RoleValue_RoomID) == ReadRoleValue(OwnerID(), EM_RoleValue_RoomID) then --檢查是不是 NPC
					if ReadRoleValue( obj , EM_RoleValue_AttackTargetID) ~= 0 then 
						if ReadRoleValue( obj , EM_RoleValue_IsWalk ) == 1 then
							WriteRoleValue( obj ,EM_RoleValue_IsWalk , 0  ) --設定為跑步
						end
					else
						MoveToFlagEnabled( obj , false )
						A = ObjRecord["A"][pry] --取出紀錄於物品上的 A 值
						B = ObjRecord["B"][pry] --取出紀錄於物品上的 B 值

						Local Role = Role:new(obj)
						Local DeltaX = Matrix[A][B]["X"]-Role:X()
						Local DeltaY = Matrix[A][B]["Y"]-Role:Y()
						Local DeltaZ = Matrix[A][B]["Z"]-Role:Z()
						local Distance = ( DeltaX*DeltaX ) + ( DeltaZ*DeltaZ ) + ( DeltaZ*DeltaZ )
						local FinalDis = dis
						if 3*dis < 100 then
							FinalDis = 100
						end
						if Distance >= (10*dis)*(10*dis) then --為了節省資源，直接用平方數作判定
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

		--檢查是否都已經抵達新的位置了
		for i = 1 , 10 , 1 do --等太久直接跳下一個位置
			local Check = 0
			for pry , obj in ObjMatrix do
				if obj ~= nil then
					if ReadRoleValue(obj, EM_RoleValue_IsNPC) == 1 and ReadRoleValue( obj , EM_RoleValue_AttackTargetID) == 0 and ReadRoleValue(obj, EM_RoleValue_RoomID) == ReadRoleValue(OwnerID(), EM_RoleValue_RoomID) then --是 NPC 並且不在戰鬥中才檢查
						A = ObjRecord["A"][pry] --取出紀錄於物品上的 A 值
						B = ObjRecord["B"][pry] --取出紀錄於物品上的 B 值
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

		--當參考NPC走回原點的時候，檢查是否要重生陣列中所有NPC
		if OID:X() ~= X0 or OID:Y() ~= Y0 or OID:X() ~= Z0 then
			CountTime = CountTime + 1
			if CountTime == Circle then
				for pry , obj in ObjMatrix do --檢查如果 NPC 不在，就產生一隻 NPC
					if obj ~= nil then
						if ReadRoleValue(obj, EM_RoleValue_IsNPC) ~= 1 or ReadRoleValue(obj, EM_RoleValue_IsDead) ~= 0 or CheckID(obj) ~= true or ReadRoleValue(obj, EM_RoleValue_RoomID) ~= ReadRoleValue(OwnerID(), EM_RoleValue_RoomID) then -- NPC 是否存在
							LuaFunc_CreateNPCByMatrix(ObjRecord["OrgID"][pry],Matrix,ObjRecord["A"][pry],ObjRecord["B"][pry] )
						end
					end
				end
				CountTime = 0
			elseif Circle == -1 then --不進行週期重生
				CountTime = 0
			end
		end

		--檢查陣列中的物件是否都還存在，如果都不存在，便結束回圈
		local Reset = 0
		for pry , obj in ObjMatrix do 
			if obj ~= nil then
				if ReadRoleValue(obj, EM_RoleValue_IsNPC) ~= 1 or ReadRoleValue(obj, EM_RoleValue_IsDead) ~= 0 or CheckID(obj) ~= true or ReadRoleValue(obj, EM_RoleValue_RoomID) ~= ReadRoleValue(OwnerID(), EM_RoleValue_RoomID) then -- NPC 是否存在
					Reset = Reset + 1
				end
			end
		end
		if Reset == Num then
			break
		end
	end

end