function LuaS_111256_10()
	CloseSpeak( OwnerID() )
	BeginPlot( OwnerID() , "LuaS_111256_10A" , 0 )
end
function LuaS_111256_10A()
	local Area = LuaS_111256_ZoneID(ReadRoleValue( OwnerID() , EM_RoleValue_ZoneID ))
	local Areaname = GetString("ZONE_AYEN CARAVAN")
	local CastMoney = {[6] = 10 , [11] = 50 }
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
					ChangeZone( OwnerID() , 10 , 0 ,-38730, -2, 1543, 14)
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

function LuaS_111256_11()
	CloseSpeak( OwnerID() )
	BeginPlot( OwnerID() , "LuaS_111256_11A" , 0 )
end
function LuaS_111256_11A()
	local Area = LuaS_111256_ZoneID(ReadRoleValue( OwnerID() , EM_RoleValue_ZoneID ))
	local Areaname = "Lake_Shire"
	local CastMoney = {[5] = 100 , [10] = 50 }
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
--					ChangeZone( OwnerID() , 11 , 0 , 4745, 115, -1968, 51)
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