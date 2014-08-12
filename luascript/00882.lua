function LuaFunc_Dancer_Game()

	local RoomID = ReadRoleValue( OwnerID() , EM_RoleValue_RoomID )
	local Sign = {} --紀錄被點物件的TABLE
	local SignID = {[1] = 111369 , [2] = 111370 , [3] = 111371 , [4] = 111372 , [5] = 111373 } --被點的物件ID
	local FlagID = 580095 --決定產生物件位置的旗子
	local State = {[1] = 3 ,[2] = 5 , [3] = 7} --設定每個關卡的密碼長度
	local Count = 1 --記錄目前關卡的旗標
	local Password = {} --記錄此關卡點選物件順序的TABLE
	local Sub_Password = 0
	local Turn = "QUEST_TURN" --判斷該展示還是該讓玩家執行
	local CheckTime = 200



	for i = 1 , table.getn(SignID) , 1 do
		Sign[i] = CreateObjByFlag( SignID[i] , FlagID , i , 0 )
		WriteRoleValue( Sign[i] , EM_RoleValue_PID , i )
		WriteRoleValue( Sign[i] , EM_RoleValue_Money , OwnerID() )
		AddToPartition( Sign[i] , RoomID )
	end

	while 1 do

		if Count > table.getn(State) then --當所有關卡結束的時候，也結束回圈
			for i = 1 , table.getn(Sign) , 1 do
				DelObj(Sign[i])
			end
			break
		end

		if Turn == "QUEST_TURN" then
			ScriptMessage( OwnerID(), 0, 0,"Time To See", 1 ); 
			sleep(50)
			local Cache
			local RandNum
			local ObjNum = table.getn(State)
			for i = 1 , State[Count], 1 do --決定密碼
				RandNum = Rand( ObjNum ) +1
				Password[i] = RandNum
			end
			for i = 1 , State[Count] , 1 do
				Cache = Password[i]
				PlayMotionEX( Sign[Cache] , ruFUSION_ACTORSTATE_DYING,ruFUSION_ACTORSTATE_DEAD )
				sleep(30)
				PlayMotion( Sign[Cache] , ruFUSION_ACTORSTATE_NORMAL )
				sleep(30)
			end 
			Turn = "ANSWER_TURN"
		elseif Turn == "ANSWER_TURN" then

			local Cache = {}
			local input = 0
			local Result = "WAIT"
			local CountDown = 0
			WriteRoleValue( OwnerID() , EM_RoleValue_PID , 0 )
			sleep(50)
			ScriptMessage( OwnerID(), 0, 0,"Time To Do", 1 );
			for i = 1 , table.getn(Sign) , 1 do
				SetPlot( Sign[i] ,"touch" ,"LuaFunc_Dancer_Touch" , 50 )
			end
			Cache[input] = ReadRoleValue( OwnerID() , EM_RoleValue_PID )
			
			while 1 do 
				sleep(1)

				if Cache[input] < ReadRoleValue( OwnerID() , EM_RoleValue_PID ) and input<= State[Count] then
					Cache[input+1] = ReadRoleValue( OwnerID() , EM_RoleValue_PID ) - Cache[input]
					input = input + 1
					Say( OwnerID() , "Num="..input.." Answer=".. Cache[input] .." PW="..Password[input] )
					if Cache[input] ~= Password[input] then --超過時間或答錯
						Result = "WRONG"
						break
					else
						Cache[input] = ReadRoleValue( OwnerID() , EM_RoleValue_PID )
					end
				end

				if ( CheckTime - CountDown ) < 50 and ( (CheckTime -CountDown) - math.floor((CheckTime -CountDown)/10) ) == 0 then
					Say( OwnerID() , "Count Down "..math.floor((CheckTime -CountDown)/10).." sec " )
				end

				if  CountDown >= CheckTime then
					Result = "WRONG"
					break
				end

				if input >= table.getn(Password) then
					Result = "BINGO"
					break
				end
				CountDown = CountDown + 1
			end

			if Result == "WRONG" then --如果答錯的話
				for i = 1 , table.getn(Sign) , 1 do
					SetPlot( Sign[i] ,"touch" ,"" , 50 )
				end
				SAY( OwnerID() ,"Boooooo~" )
			else --如果答對的話
				for i = 1 , table.getn(Sign) , 1 do
					SetPlot( Sign[i] ,"touch" ,"" , 50 )
				end
				Count = Count + 1
				SAY( OwnerID() ,"GoodJob" )
			end
			for i = 1 , table.getn(Sign) , 1 do
				SetPlot( Sign[i] ,"touch" ,"" , 50 )
			end
			Turn = "QUEST_TURN"
		end

		Sleep(1)
	end

end

function LuaFunc_Dancer_Touch()
	SetPlot( TargetID() ,"touch" ,"" , 50 )
	BeginPlot(TargetID() , "LuaFunc_Dancer_Touch_2" , 0 )
end

function LuaFunc_Dancer_Touch_2()
	local Controler = ReadRoleValue( OwnerID() , EM_RoleValue_Money )
	local CheckID = ReadRoleValue( OwnerID() , EM_RoleValue_PID )
	local Password = ReadRoleValue( Controler , EM_RoleValue_PID )
	Password = Password + CheckID
	WriteRoleValue( Controler , EM_RoleValue_PID ,  Password )
	PlayMotionEX( OwnerID() ,  ruFUSION_ACTORSTATE_DYING,ruFUSION_ACTORSTATE_DEAD  )
	sleep(15)
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_NORMAL )
	sleep(15)
	SetPlot( OwnerID() ,"touch" ,"LuaFunc_Dancer_Touch" , 50 )
end