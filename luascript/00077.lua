function LuaS_TEST_SUEZ_0()
	LoadQuestOption( OwnerID() );  
	AddSpeakOption( OwnerID(), TargetID(), "GOGOGO", "LuaS_TEST_SUEZ_1",0 )
	
end

function LuaS_TEST_SUEZ_1()
	CloseSpeak( OwnerID() );
	BeginPlot( TargetID() , "LuaS_TEST_SUEZ_SACT" , 0 )
end

function LuaI_Suez_Test()
	setplot( OwnerID() , "touch" , "LuaS_TEST_SUEZ_2" ,100 )
end

function LuaS_TEST_SUEZ_2()
	local Tar = Role:new(OwnerID() )
	Move( TargetID() , Tar:X() ,  Tar:Y() , Tar:Z() )
end
function LuaS_TEST_SUEZ_3()
	local Tar = Role:new(TargetID() )
	Move( OwnerID() , Tar:X() ,  Tar:Y() , Tar:Z() )

end
function LuaFunc_SUEZ_SayDir()

	Say( OwnerID() , ReadRoleValue( OwnerID() , EM_RoleValue_Dir ) )
end

function LuaSuez_Reset_Area103()
	local RoomID = ReadRoleValue( OwnerID() , EM_RoleValue_RoomID )
	local Trap = {}
	Trap[1] = Ver_Zone103_Trap[RoomID]["Fire1"] 
	Trap[2]  = Ver_Zone103_Trap[RoomID]["Fire2"] 
	Trap[3]  = Ver_Zone103_Trap[RoomID]["BOX1"] 
	Trap[4] = Ver_Zone103_Trap[RoomID]["BOX2"] 
	Trap[5] = Ver_Zone103_Trap[RoomID]["Door1"] 
	Trap[6] = Ver_Zone103_Trap[RoomID]["Door2"] 
	Trap[7] = Ver_Zone103_Trap[RoomID]["OGD"] 
	Trap[8] = Ver_Zone103_Trap[RoomID]["Soldiers"] 
	Trap[9] = Ver_Zone103_Trap[RoomID]["STATE"] 
	Trap[10] = Ver_Zone103_Trap[RoomID]["FIRECONTROL"]
	
end