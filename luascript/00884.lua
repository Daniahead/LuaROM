function LuaI_TheThiefKing_Treasure_0()
	local RoomID = ReadRoleValue(OwnerID() , EM_RoleValue_RoomID )
	Ver_Zone108_Trap[RoomID] = {}
	Ver_Zone108_Trap[RoomID][Count] = 0
	SetPlot(OwnerID(),"Range" , "LuaI_TheThiefKing_Treasure_1" , 50 )
end
function LuaI_TheThiefKing_DoorEnter()
	sleep(5)
	local RoomID = ReadRoleValue(OwnerID() , EM_RoleValue_RoomID )
	Ver_Zone108_Trap[RoomID][DoorEnter] = OwnerID()
	SetPlot( OwnerID() , "touch" , "LuaI_TheThiefKing_DoorEnter_1" , 50 )
--	Hide(OwnerID())
end

function LuaI_TheThiefKing_DoorEnter_1()
	if CheckFlag( OwnerID() , 540505 ) == true then
		Hide(TargetID())
		SetPlot( TargetID(), "touch" , "" , 50 )
	else
		ScriptMessage( TargetID(), 0, 0,GetString("SC_111368_0"), 1 ) --看來似乎需要完成某個條件才能開啟這扇門。
	end
end

function LuaI_TheThiefKing_DoorRed()
	sleep(5)
	local RoomID = ReadRoleValue(OwnerID() , EM_RoleValue_RoomID )
	Ver_Zone108_Trap[RoomID][DoorRed] = OwnerID()
	WriteRoleValue( OwnerID() , EM_RoleValue_PID , 1 )
	Hide(OwnerID())
end
function LuaI_TheThiefKing_DoorYellow()
	sleep(5)
	local RoomID = ReadRoleValue(OwnerID() , EM_RoleValue_RoomID )
	Ver_Zone108_Trap[RoomID][DoorYellow] = OwnerID()
	WriteRoleValue( OwnerID() , EM_RoleValue_PID , 2 )
	Hide(OwnerID())
end
function LuaI_TheThiefKing_DoorGreen()
	sleep(5)
	local RoomID = ReadRoleValue(OwnerID() , EM_RoleValue_RoomID )
	Ver_Zone108_Trap[RoomID][DoorGreen] = OwnerID()
	WriteRoleValue( OwnerID() , EM_RoleValue_PID , 3 )
	Hide(OwnerID())
end
function LuaI_TheThiefKing_DoorBlue()
	sleep(5)
	local RoomID = ReadRoleValue(OwnerID() , EM_RoleValue_RoomID )
	Ver_Zone108_Trap[RoomID][DoorBlue] = OwnerID()
	WriteRoleValue( OwnerID() , EM_RoleValue_PID , 4 )
	Hide(OwnerID())
end
function LuaI_TheThiefKing_DoorPurple()
	sleep(5)
	local RoomID = ReadRoleValue(OwnerID() , EM_RoleValue_RoomID )
	Ver_Zone108_Trap[RoomID][DoorPurple] = OwnerID()
	WriteRoleValue( OwnerID() , EM_RoleValue_PID , 5 )
	Hide(OwnerID())
end

--叫出節目主持人
function LuaI_TheThiefKing_Treasure_1()
	SetPlot(TargetID(),"Range" , "" , 100 )
	BeginPlot(TargetID(), "LuaI_TheThiefKing_Treasure_2" , 0 )
end

function LuaI_TheThiefKing_Treasure_2()
	local ThiefKing
	local FlagID = 580095
	local RoomID = ReadRoleValue(OwnerID() , EM_RoleValue_RoomID )
	local Door = {}
	local ThiefKing = CreateObjByFlag( ThiefKing, FlagID , 0 , 1 );
	local Party = LuaFunc_PartyData(TargetID())
	local Game 
	AddToPartition( ThiefKing , RoomID )
	Ver_Zone108_Trap[RoomID][ThiefKing] = ThiefKing 
	Door[0] = Ver_Zone108_Trap[RoomID][DoorEnter]
	Door[1] = Ver_Zone108_Trap[RoomID][DoorRed]
	Door[2] = Ver_Zone108_Trap[RoomID][DoorYellow]
	Door[3] = Ver_Zone108_Trap[RoomID][DoorGreen]
	Door[4] = Ver_Zone108_Trap[RoomID][DoorBlue]
	Door[5] = Ver_Zone108_Trap[RoomID][DoorPurple]
	Ver_Zone108_Trap[RoomID][Door] = Door
	Ver_Zone108_Trap[RoomID][State] = 3
	while 1 do --檢查範圍內沒活著的玩家就開門
		local Player = SearchRangePlayer ( OwnerID() , 500 )
		Game = "OVER"
		for i = 1 , table.getn(Player) , 1 do --有玩家在範圍內活著就OK
			if ReadRoleValue( Player[i] , EM_RoleValue_RoomID ) == RoomID and ReadRoleValue( Player[i], EM_RoleValue_IsPlayer ) == 1 then
				if Check(Player[i]) == true and ReadRoleValue( Player[i], EM_RoleValue_IsDead ) == false then
					Game = "OK"
				end
			end
		end
		if Game == "OVER" then
			Hide(Door[0])
		end
		sleep(100)
	end

end
--節目主持人的對話內容
function LuaS_TheThiefKing_0()
	local State = Ver_Zone108_Trap[RoomID][State] 
	if CheckFlag( OwnerID() , 540505) == true then
		if State  >= 9 then 
			SetSpeakDetail( OwnerID(), GetString>("SC_111368_1") ); --如果想要更多的寶藏，就去世界上尋找吧！
		else
			if State == 3 then 
				SetSpeakDetail( OwnerID(), GetString("SC_111368_2") ); --歡迎來到我的寶藏庫，盜賊們；我是你們的王薩斯柯特，你既然能夠得到我的鑰匙，我就允許你獲得我的寶藏，但你必須通過我的試煉。
			elseif State == 5  then 
				SetSpeakDetail( OwnerID(), GetString>("SC_111368_3") );--你準備好繼續接受挑戰了嗎？
			elseif State  == 7  then 
				SetSpeakDetail( OwnerID(), GetString>("SC_111368_4") );--這是最後的挑戰了，我可是很期待的。
			end
			AddSpeakOption( OwnerID(), TargetID( ), GetString("SC_111368_5") , "LuaS_TheThiefKing_1", 0 ); --開始吧！
		end
	else
		SetSpeakDetail( OwnerID(), GetString("SC_111368_6")); --歡迎來到我的寶藏庫，盜賊們；但必須擁有我的黃金鑰匙，才有取得寶藏的資格。
	end
end

function LuaS_TheThiefKing_1()
	CloseSpeak( OwnerID() )
	DisableQuest( TargetID() , true )
	BeginPlot( TargetID() , "LuaS_TheThiefKing_Play" , 0 )
end