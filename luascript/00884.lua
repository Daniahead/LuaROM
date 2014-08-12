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
		ScriptMessage( TargetID(), 0, 0,GetString("SC_111368_0"), 1 ) --�ݨӦ��G�ݭn�����Y�ӱ���~��}�ҳo�����C
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

--�s�X�`�إD���H
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
	while 1 do --�ˬd�d�򤺨S���۪����a�N�}��
		local Player = SearchRangePlayer ( OwnerID() , 500 )
		Game = "OVER"
		for i = 1 , table.getn(Player) , 1 do --�����a�b�d�򤺬��۴NOK
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
--�`�إD���H����ܤ��e
function LuaS_TheThiefKing_0()
	local State = Ver_Zone108_Trap[RoomID][State] 
	if CheckFlag( OwnerID() , 540505) == true then
		if State  >= 9 then 
			SetSpeakDetail( OwnerID(), GetString>("SC_111368_1") ); --�p�G�Q�n��h���_�áA�N�h�@�ɤW�M��a�I
		else
			if State == 3 then 
				SetSpeakDetail( OwnerID(), GetString("SC_111368_2") ); --�w��Ө�ڪ��_�îw�A�s��̡F�ڬO�A�̪����Ĵ��_�S�A�A�J�M����o��ڪ��_�͡A�ڴN���\�A��o�ڪ��_�áA���A�����q�L�ڪ��շҡC
			elseif State == 5  then 
				SetSpeakDetail( OwnerID(), GetString>("SC_111368_3") );--�A�ǳƦn�~�򱵨��D�ԤF�ܡH
			elseif State  == 7  then 
				SetSpeakDetail( OwnerID(), GetString>("SC_111368_4") );--�o�O�̫᪺�D�ԤF�A�ڥi�O�ܴ��ݪ��C
			end
			AddSpeakOption( OwnerID(), TargetID( ), GetString("SC_111368_5") , "LuaS_TheThiefKing_1", 0 ); --�}�l�a�I
		end
	else
		SetSpeakDetail( OwnerID(), GetString("SC_111368_6")); --�w��Ө�ڪ��_�îw�A�s��̡F�������֦��ڪ������_�͡A�~�����o�_�ê����C
	end
end

function LuaS_TheThiefKing_1()
	CloseSpeak( OwnerID() )
	DisableQuest( TargetID() , true )
	BeginPlot( TargetID() , "LuaS_TheThiefKing_Play" , 0 )
end