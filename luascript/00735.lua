function LuaS_111256_1()
	CloseSpeak( OwnerID() )
	BeginPlot( OwnerID() , "LuaS_111256_1A" , 0 )
end
function LuaS_111256_1A()
	local Area = LuaS_111256_ZoneID(ReadRoleValue( OwnerID() , EM_RoleValue_ZoneID ))
	local Areaname = GetString("ZONE_ROGSHIRE")
	local CastMoney = {[2] = 10 }
	local String = LuaS_111256_Dialog_MoneyChange(CastMoney , Area , Areaname)
	if String == -1 then
		ScriptMessage( OwnerID(),OwnerID(),1,GetString("SYS_FIXEQ_DATA_ERROR"),0)	
		--資料送出有問題
		return 0
	end
	DialogCreate( OwnerID() , EM_LuaDialogType_YesNo  , String);
	DialogSelectStr( OwnerID() , GetString("SO_YES") );
	DialogSelectStr( OwnerID() , GetString("SO_NO") );

	if( DialogSendOpen( OwnerID() ) == false ) then 
		ScriptMessage( OwnerID(),OwnerID(),1,GetString("SYS_FIXEQ_DATA_ERROR"),0)	
		--資料送出有問題
		return 0
	end
	
	local SelectID = Hsiang_GetDialogResoult( OwnerID() );
	if SelectID == 0  then
		if ReadRoleValue( OwnerID() , EM_RoleValue_Money ) < CastMoney[Area] then
			ScriptMessage( OwnerID(), TargetID(), 1, GetString("SAY_MOUTH_ERROR_A"), 0 ); --/*你身上的錢不夠。
		else
			if AddRoleValue( OwnerID() , EM_RoleValue_Money , -(CastMoney[Area]) ) then
					CastSpell( OwnerID() , OwnerID() , 491008 )
					sleep( 5 )
					ChangeZone( OwnerID() , 1 , 0 , -1155, 37, -5548, 100 )
			end
		end
		return 1
	elseif SelectID == 1  then
		DialogClose( OwnerID() )
		return 0
	else 
		DialogClose( OwnerID() )
		return 0
	end
end

function LuaS_111256_2()
	CloseSpeak( OwnerID() )
	BeginPlot( OwnerID() , "LuaS_111256_2A" , 0 )
end
function LuaS_111256_2A()
	local Area = LuaS_111256_ZoneID(ReadRoleValue( OwnerID() , EM_RoleValue_ZoneID ))
	local Areaname = GetString("ZONE_VARANAS")
	local CastMoney = {[1] = 10 , [4] = 50 , [6] = 10 }
	local String = LuaS_111256_Dialog_MoneyChange(CastMoney , Area , Areaname)
	if String == -1 then
		ScriptMessage( OwnerID(),OwnerID(),1,GetString("SYS_FIXEQ_DATA_ERROR"),0)	
		--資料送出有問題
		return 0
	end
	DialogCreate( OwnerID() , EM_LuaDialogType_YesNo  , String);
	DialogSelectStr( OwnerID() , GetString("SO_YES") );
	DialogSelectStr( OwnerID() , GetString("SO_NO") );

	if( DialogSendOpen( OwnerID() ) == false ) then 
		ScriptMessage( OwnerID(),OwnerID(),1,GetString("SYS_FIXEQ_DATA_ERROR"),0)	
		--資料送出有問題
		return 0
	end
	
	local SelectID = Hsiang_GetDialogResoult( OwnerID() );
	if SelectID == 0  then
		if ReadRoleValue( OwnerID() , EM_RoleValue_Money ) < CastMoney[Area] then
			ScriptMessage( OwnerID(), TargetID(), 1, GetString("SAY_MOUTH_ERROR_A"), 0 ); --/*你身上的錢不夠。
		else
			if AddRoleValue( OwnerID() , EM_RoleValue_Money , -(CastMoney[Area]) ) then
					CastSpell( OwnerID() , OwnerID() , 491008 )
					sleep( 5 )
					ChangeZone( OwnerID() , 2 , 0, 2298, 0, 1153, 39)
			end
		end
		return 1
	elseif SelectID == 1  then
		DialogClose( OwnerID() )
		return 0
	else 
		DialogClose( OwnerID() )
		return 0
	end
end

function LuaS_111256_4()
	CloseSpeak( OwnerID() )
	BeginPlot( OwnerID() , "LuaS_111256_4A" , 0 )
end
function LuaS_111256_4A()
	local Area = LuaS_111256_ZoneID(ReadRoleValue( OwnerID() , EM_RoleValue_ZoneID ))
	local Areaname = GetString("ZONE_ARGENFALL")
	local CastMoney = {[2] = 50 , [5] = 100 }
	local String = LuaS_111256_Dialog_MoneyChange(CastMoney , Area , Areaname)
	if String == -1 then
		ScriptMessage( OwnerID(),OwnerID(),1,GetString("SYS_FIXEQ_DATA_ERROR"),0)	
		--資料送出有問題
		return 0
	end
	DialogCreate( OwnerID() , EM_LuaDialogType_YesNo  , String);
	DialogSelectStr( OwnerID() , GetString("SO_YES") );
	DialogSelectStr( OwnerID() , GetString("SO_NO") );

	if( DialogSendOpen( OwnerID() ) == false ) then 
		ScriptMessage( OwnerID(),OwnerID(),1,GetString("SYS_FIXEQ_DATA_ERROR"),0)	
		--資料送出有問題
		return 0
	end
	
	local SelectID = Hsiang_GetDialogResoult( OwnerID() );
	if SelectID == 0  then
		if ReadRoleValue( OwnerID() , EM_RoleValue_Money ) < CastMoney[Area] then
			ScriptMessage( OwnerID(), TargetID(), 1, GetString("SAY_MOUTH_ERROR_A"), 0 ); --/*你身上的錢不夠。
		else
			if AddRoleValue( OwnerID() , EM_RoleValue_Money , -(CastMoney[Area]) ) then
					CastSpell( OwnerID() , OwnerID() , 491008 )
					sleep( 5 )
					ChangeZone( OwnerID() , 4 , 0 ,-5917, 593, 2886, 280 )
			end
		end
		return 1
	elseif SelectID == 1  then
		DialogClose( OwnerID() )
		return 0
	else 
		DialogClose( OwnerID() )
		return 0
	end
end

function LuaS_111256_5()
	CloseSpeak( OwnerID() )
	BeginPlot( OwnerID() , "LuaS_111256_5A" , 0 )
end
function LuaS_111256_5A()
	local Area = LuaS_111256_ZoneID(ReadRoleValue( OwnerID() , EM_RoleValue_ZoneID ))
	local Areaname = GetString("ZONE_HAROLFE TRADING POST")
	local CastMoney = {[4] = 100 , [6] = 150 , [11] = 100 }
	local String = LuaS_111256_Dialog_MoneyChange(CastMoney , Area , Areaname)
	if String == -1 then
		ScriptMessage( OwnerID(),OwnerID(),1,GetString("SYS_FIXEQ_DATA_ERROR"),0)	
		--資料送出有問題
		return 0
	end
	DialogCreate( OwnerID() , EM_LuaDialogType_YesNo  , String);
	DialogSelectStr( OwnerID() , GetString("SO_YES") );
	DialogSelectStr( OwnerID() , GetString("SO_NO") );

	if( DialogSendOpen( OwnerID() ) == false ) then 
		ScriptMessage( OwnerID(),OwnerID(),1,GetString("SYS_FIXEQ_DATA_ERROR"),0)	
		--資料送出有問題
		return 0
	end
	
	local SelectID = Hsiang_GetDialogResoult( OwnerID() );
	if SelectID == 0  then
		if ReadRoleValue( OwnerID() , EM_RoleValue_Money ) < CastMoney[Area] then
			ScriptMessage( OwnerID(), TargetID(), 1, GetString("SAY_MOUTH_ERROR_A"), 0 ); --/*你身上的錢不夠。
		else
			if AddRoleValue( OwnerID() , EM_RoleValue_Money , -(CastMoney[Area]) ) then
					CastSpell( OwnerID() , OwnerID() , 491008 )
					sleep( 5 )
					ChangeZone( OwnerID() , 5 , 0 ,  -14466, 756, -170, 2 )
			end
		end
		return 1
	elseif SelectID == 1  then
		DialogClose( OwnerID() )
		return 0
	else 
		DialogClose( OwnerID() )
		return 0
	end
end

function LuaS_111256_6()
	CloseSpeak( OwnerID() )
	BeginPlot( OwnerID() , "LuaS_111256_6A" , 0 )
end
function LuaS_111256_6A()
	local Area = LuaS_111256_ZoneID(ReadRoleValue( OwnerID() , EM_RoleValue_ZoneID ))
	local Areaname = GetString("ZONE_OBSIDIAN BASTION")
	local CastMoney = {[2] = 200 , [5] = 150 , [10] = 50 }
	local String = LuaS_111256_Dialog_MoneyChange(CastMoney , Area , Areaname)
	if String == -1 then
		ScriptMessage( OwnerID(),OwnerID(),1,GetString("SYS_FIXEQ_DATA_ERROR"),0)	
		--資料送出有問題
		return 0
	end
	DialogCreate( OwnerID() , EM_LuaDialogType_YesNo  , String);
	DialogSelectStr( OwnerID() , GetString("SO_YES") );
	DialogSelectStr( OwnerID() , GetString("SO_NO") );

	if( DialogSendOpen( OwnerID() ) == false ) then 
		ScriptMessage( OwnerID(),OwnerID(),1,GetString("SYS_FIXEQ_DATA_ERROR"),0)	
		--資料送出有問題
		return 0
	end
	
	local SelectID = Hsiang_GetDialogResoult( OwnerID() );
	if SelectID == 0  then
		if ReadRoleValue( OwnerID() , EM_RoleValue_Money ) < CastMoney[Area] then
			ScriptMessage( OwnerID(), TargetID(), 1, GetString("SAY_MOUTH_ERROR_A"), 0 ); --/*你身上的錢不夠。
		else
			if AddRoleValue( OwnerID() , EM_RoleValue_Money , -(CastMoney[Area]) ) then
					CastSpell( OwnerID() , OwnerID() , 491008 )
					sleep( 5 )
					ChangeZone( OwnerID() , 6 , 0 , -20460, -190, 6507, 132)
			end
		end
		return 1
	elseif SelectID == 1  then
		DialogClose( OwnerID() )
		return 0
	else 
		DialogClose( OwnerID() )
		return 0
	end
end