function LuaS_111367_ADDSTR()

	CloseSpeak( OwnerID() )

	local NeedPoint =
		{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
		  11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
		  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
		  31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
		  41, 42, 43, 44, 45, 46, 47, 48, 49, 50
		}

	local STR = ReadRoleValue( OwnerID() , EM_RoleValue_STR )

	if ReadRoleValue( OwnerID() , EM_RoleValue_MedalCount ) >= NeedPoint[STR+1] then
		if AddRoleValue( OwnerID() , EM_RoleValue_MedalCount , -(NeedPoint[STR+1] ) ) then
			AddRoleValue( OwnerID() , EM_RoleValue_STR , 1 )
			local MessageString = ReplaceString( GetString("SC_OLDBRINGNEW_05") , "NeedPoint" , "STR" )		-- �A�� NeedPoint �W�[�F Point �I�I�I 
			local StringSTR = ReplaceString( MessageString  , "Point" , "1" )
			ScriptMessage( OwnerID(), OwnerID(), 1, StringSTR , C_SYSTEM )
		else
			Say( OwnerID() , "Something Error !!")
		end
	else
		Say( TargetID() , GetString("SC_OLDBRINGNEW_04") )		-- ��p�A�A�S���������a�A�n���i�H�I���I�I
	end

end

function LuaS_111367_ADDSTA()

	CloseSpeak( OwnerID() )

	local NeedPoint =
		{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
		  11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
		  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
		  31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
		  41, 42, 43, 44, 45, 46, 47, 48, 49, 50
		}

	local STA = ReadRoleValue( OwnerID() , EM_RoleValue_STA )

	if STA <= 50 then
		if ReadRoleValue( OwnerID() , EM_RoleValue_MedalCount ) >= NeedPoint[STA+1] then
			if AddRoleValue( OwnerID() , EM_RoleValue_MedalCount , -(NeedPoint[STA+1] ) ) then
				AddRoleValue( OwnerID() , EM_RoleValue_STA , 1 )
				local MessageString = ReplaceString( GetString("SC_OLDBRINGNEW_05") , "NeedPoint" , "STA" )		-- �A�� NeedPoint �W�[�F Point �I�I�I 
				local StringSTA = ReplaceString( MessageString  , "Point" , "1" )
				ScriptMessage( OwnerID(), OwnerID(), 1, StringSTA , C_SYSTEM )
			else
				Say( OwnerID() , "Something Error !!")
			end
		else
			Say( TargetID() , GetString("SC_OLDBRINGNEW_04") )		-- ��p�A�A�S���������a�A�n���i�H�I���I�I
		end
	else
		Say( TargetID() , GetString("SC_OLDBRINGNEW_06") )		-- ��F�j�ƪ��̤j���סA�L�k�A�I���I�I
	end

end

function LuaS_111367_ADDINT()

	CloseSpeak( OwnerID() )

	local NeedPoint =
		{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
		  11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
		  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
		  31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
		  41, 42, 43, 44, 45, 46, 47, 48, 49, 50
		}

	local INT = ReadRoleValue( OwnerID() , EM_RoleValue_INT )

	if INT <= 50 then
		if ReadRoleValue( OwnerID() , EM_RoleValue_MedalCount ) >= NeedPoint[INT+1] then
			if AddRoleValue( OwnerID() , EM_RoleValue_MedalCount , -(NeedPoint[INT+1] ) ) then
				AddRoleValue( OwnerID() , EM_RoleValue_INT , 1 )
				local MessageString = ReplaceString( GetString("SC_OLDBRINGNEW_05") , "NeedPoint" , "INT" )		-- �A�� NeedPoint �W�[�F Point �I�I�I 
				local StringINT = ReplaceString( MessageString  , "Point" , "1" )
				ScriptMessage( OwnerID(), OwnerID(), 1, StringINT , C_SYSTEM )
			else
				Say( OwnerID() , "Something Error !!")
			end
		else
			Say( TargetID() , GetString("SC_OLDBRINGNEW_04") )		-- ��p�A�A�S���������a�A�n���i�H�I���I�I
		end
	else
		Say( TargetID() , GetString("SC_OLDBRINGNEW_06") )		-- ��F�j�ƪ��̤j���סA�L�k�A�I���I�I
	end

end

function LuaS_111367_ADDMND()

	CloseSpeak( OwnerID() )

	local NeedPoint =
		{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
		  11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
		  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
		  31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
		  41, 42, 43, 44, 45, 46, 47, 48, 49, 50
		}

	local MND = ReadRoleValue( OwnerID() , EM_RoleValue_MND )

	if MND <= 50 then
		if ReadRoleValue( OwnerID() , EM_RoleValue_MedalCount ) >= NeedPoint[MND+1] then
			if AddRoleValue( OwnerID() , EM_RoleValue_MedalCount , -(NeedPoint[MND+1] ) ) then
				AddRoleValue( OwnerID() , EM_RoleValue_MND , 1 )
				local MessageString = ReplaceString( GetString("SC_OLDBRINGNEW_05") , "NeedPoint" , "MND" )		-- �A�� NeedPoint �W�[�F Point �I�I�I 
				local StringMND = ReplaceString( MessageString  , "Point" , "1" )
				ScriptMessage( OwnerID(), OwnerID(), 1, StringMND , C_SYSTEM )
			else
				Say( OwnerID() , "Something Error !!")
			end
		else
			Say( TargetID() , GetString("SC_OLDBRINGNEW_04") )		-- ��p�A�A�S���������a�A�n���i�H�I���I�I
		end
	else
		Say( TargetID() , GetString("SC_OLDBRINGNEW_06") )		-- ��F�j�ƪ��̤j���סA�L�k�A�I���I�I
	end

end

function LuaS_111367_ADDAGI()

	CloseSpeak( OwnerID() )

	local NeedPoint =
		{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
		  11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
		  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
		  31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
		  41, 42, 43, 44, 45, 46, 47, 48, 49, 50
		}

	local AGI = ReadRoleValue( OwnerID() , EM_RoleValue_AGI )

	if AGI <= 50 then
		if ReadRoleValue( OwnerID() , EM_RoleValue_MedalCount ) >= NeedPoint[AGI+1] then
			if AddRoleValue( OwnerID() , EM_RoleValue_MedalCount , -(NeedPoint[AGI+1] ) ) then
				AddRoleValue( OwnerID() , EM_RoleValue_AGI , 1 )
				local MessageString = ReplaceString( GetString("SC_OLDBRINGNEW_05") , "NeedPoint" , "AGI" )		-- �A�� NeedPoint �W�[�F Point �I�I�I 
				local StringAGI = ReplaceString( MessageString  , "Point" , "1" )
				ScriptMessage( OwnerID(), OwnerID(), 1, StringAGI , C_SYSTEM )
			else
				Say( OwnerID() , "Something Error !!")
			end
		else
			Say( TargetID() , GetString("SC_OLDBRINGNEW_04") )		-- ��p�A�A�S���������a�A�n���i�H�I���I�I
		end
	else
		Say( TargetID() , GetString("SC_OLDBRINGNEW_06") )		-- ��F�j�ƪ��̤j���סA�L�k�A�I���I�I
	end

end

function LuaS_111367_ADDTP()

	CloseSpeak( OwnerID() )

	local NeedPoint =
		{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
		  11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
		  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
		  31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
		  41, 42, 43, 44, 45, 46, 47, 48, 49, 50
		}

	local TP = ReadRoleValue( OwnerID() , EM_RoleValue_TP )

	if ReadRoleValue( OwnerID() , EM_RoleValue_MedalCount ) >= NeedPoint[TP+1] then
		if AddRoleValue( OwnerID() , EM_RoleValue_MedalCount , -(NeedPoint[TP+1] ) ) then
			AddRoleValue( OwnerID() , EM_RoleValue_TP , 1 )
			local MessageString = ReplaceString( GetString("SC_OLDBRINGNEW_05") , "NeedPoint" , "TP" )		-- �A�� NeedPoint �W�[�F Point �I�I�I 
			local StringTP = ReplaceString( MessageString  , "Point" , "1" )
			ScriptMessage( OwnerID(), OwnerID(), 1, StringTP , C_SYSTEM )
		else
			Say( OwnerID() , "Something Error !!")
		end
	else
		Say( TargetID() , GetString("SC_OLDBRINGNEW_04") )		-- ��p�A�A�S���������a�A�n���i�H�I���I�I
	end

end
