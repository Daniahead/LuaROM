function LuaS_Area_List(Area,Flag)
	if Area == 1 then
		if CheckFlag( OwnerID() , Flag[2] ) == true then
			AddSpeakOption( OwnerID(), TargetID(), GetString ( "SC_111256_2") , "LuaS_111256_2", 0 ); --�ǰe��Z��R����
		end
	end
	if Area == 2 then
		if CheckFlag( OwnerID() , Flag[6] ) == true then
			AddSpeakOption( OwnerID(), TargetID(), GetString ( "SC_111256_6") , "LuaS_111256_6", 0 ); --�ǰe����`�ۭn��
		end
		if CheckFlag( OwnerID() , Flag[1] ) == true then
			AddSpeakOption( OwnerID(), TargetID(), GetString ( "SC_111256_1") , "LuaS_111256_1", 0 ); --�ǰe��ù����
		end
		if CheckFlag( OwnerID() , Flag[4] ) == true then
			AddSpeakOption( OwnerID(), TargetID(), GetString ( "SC_111256_4") , "LuaS_111256_4", 0 ); --�ǰe����r��
		end
	end
	if Area == 4 then	
		if CheckFlag( OwnerID() , Flag[2] ) == true then
			AddSpeakOption( OwnerID(), TargetID(), GetString ( "SC_111256_2") , "LuaS_111256_2", 0 ); --�ǰe��Z��R����
		end
		if CheckFlag( OwnerID() , Flag[5] ) == true then
			AddSpeakOption( OwnerID(), TargetID(), GetString ( "SC_111256_5") , "LuaS_111256_5", 0 ); --�ǰe�쫢���ҥ����
		end
	end
	if Area == 5 then
		if CheckFlag( OwnerID() , Flag[4] ) == true then
			AddSpeakOption( OwnerID(), TargetID(), GetString ( "SC_111256_4") , "LuaS_111256_4", 0 ); --�ǰe����r��
		end
		if CheckFlag( OwnerID() , Flag[6] ) == true then
			AddSpeakOption( OwnerID(), TargetID(), GetString ( "SC_111256_6") , "LuaS_111256_6", 0 ); --�ǰe����`�ۭn��
		end
		if CheckFlag( OwnerID() , Flag[11] ) == true then
			AddSpeakOption( OwnerID(), TargetID(), GetString ( "SC_111256_11") , "LuaS_111256_11", 0 ); --�ǰe��p�J��
		end
	end
	if Area == 6 then
		if CheckFlag( OwnerID() , Flag[2] ) == true then
			AddSpeakOption( OwnerID(), TargetID(), GetString ( "SC_111256_2") , "LuaS_111256_2", 0 ); --�ǰe��Z��R����
		end
		if CheckFlag( OwnerID() , Flag[5] ) == true then
			AddSpeakOption( OwnerID(), TargetID(), GetString ( "SC_111256_5") , "LuaS_111256_5", 0 ); --�ǰe�쫢���ҥ����
		end
		if CheckFlag( OwnerID() , Flag[10] ) == true then
			AddSpeakOption( OwnerID(), TargetID(), GetString ( "SC_111256_10") , "LuaS_111256_10", 0 ); --�ǰe��㺸���Ӷ�
		end
	end
	if Area == 10 then
		if CheckFlag( OwnerID() , Flag[6] ) == true then
			AddSpeakOption( OwnerID(), TargetID(), GetString ( "SC_111256_6") , "LuaS_111256_6", 0 ); --�ǰe����`�ۭn��
		end
		if CheckFlag( OwnerID() , Flag[11] ) == true then
			AddSpeakOption( OwnerID(), TargetID(), GetString ( "SC_111256_11") , "LuaS_111256_11", 0 ); --�ǰe��p�J��
		end
	end
	if Area == 11 then
		if CheckFlag( OwnerID() , Flag[5] ) == true then
			AddSpeakOption( OwnerID(), TargetID(), GetString ( "SC_111256_5") , "LuaS_111256_5", 0 ); --�ǰe�쫢���ҥ����
		end
		if CheckFlag( OwnerID() , Flag[10] ) == true then
			AddSpeakOption( OwnerID(), TargetID(), GetString ( "SC_111256_10") , "LuaS_111256_10", 0 ); --�ǰe��㺸���Ӷ�
		end
	end
end

function LuaS_111256_ZoneID(ZoneID)
	local Zone = ZoneID - 1000*math.floor( ZoneID / 1000 )
	return Zone
end



function LuaS_111256_Dialog_MoneyChange(CastMoney , Area , Areaname)
	local String = ""
	if CastMoney[Area] == nil or CastMoney[Area] == 0 then
		return -1 
	else
--		local A = math.floor( CastMoney[Area] / 100 )
--		local B = CastMoney[Area] - 100*A
--		if A == 0 then
			String = GetString("SC_111256_DIALOG_0")..Areaname..GetString("SC_111256_DIALOG_1")..B..GetString("SC_111256_DIALOG_C") --�ǰe��ù����ݭn�I�O XX ��
--		elseif B == 0 then
--			String = GetString("SC_111256_DIALOG_0")..Areaname..GetString("SC_111256_DIALOG_1")..A..GetString("SC_111256_DIALOG_S") --�ǰe��ù����ݭn�I�O XX ��
--		else
--			String = GetString("SC_111256_DIALOG_0")..Areaname..GetString("SC_111256_DIALOG_1")..A..GetString("SC_111256_DIALOG_S")..B..GetString("SC_111256_DIALOG_C") --�ǰe��ù����ݭn�I�O XX �� XX ��
--		end
	end 
	return String
end