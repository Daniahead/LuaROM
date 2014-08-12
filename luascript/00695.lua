function Marry_Check()
	CloseSpeak( OwnerID() )			-- ������ܵ���
	local PartyNum = GetPartyID( OwnerID() , -1 )

	if ( PartyNum == 0 ) then
		Say( TargetID() , GetString("SC_MARRY_3") )		-- �Х���A�߻�����H�զ���H�p���A�A�ӧ�ڥӽСC
		SetFlag( Girl , 541320 , 0 )
	elseif ( PartyNum == 2 ) then
		if CheckFlag( OwnerID() , 541320 ) == true then
			Say( TargetID() , GetString("SC_MARRY_11") )			-- �A�w�g�ӽЧ����A�Ч��ұB���v�}�l�A�̪��B§�C
		else
			local Boy, Girl = Check_Ring( OwnerID() , TargetID() )
			if Boy ~= nil and Girl ~= nil then
				if GetDistance( Boy , TargetID() ) <= 300 and GetDistance( Girl , TargetID() ) <= 300 and GetDistance( Boy , TargetID() ) ~= -1 and GetDistance( Girl , TargetID() ) ~= -1 then
					Say( TargetID() , GetString("SC_MARRY_5") )			-- �n���A�ڱ����A�̪��ӽСC
					SetFlag( Boy , 541320 , 1 )
					SetFlag( Girl , 541320 , 1 )
				else
					Say( TargetID() , GetString("SC_MARRY_6") )			-- �ЧA�P�߻�����H�@�P�L�ӧ�ڧa�C
				end
			end
		end
	elseif ( PartyNum >= 3 ) then
		Say( TargetID() , GetString("SC_MARRY_4") )			-- �A������H�ƤӦh�A�Хu��A�߻�����H�զ���H�p���A�A�ӧ�ڥӽСC
	end
end

function Marry_Start_Begin()

	local PartyNum = GetPartyID( TargetID() , -1 )

	if ( PartyNum == 0 ) then
		Say( OwnerID() , GetString("SC_MARRY_7") )		-- �s���P�s�Q����������H�p���A�~�i�H�}�l�B§�C
	elseif ( PartyNum == 2 ) then
		if CheckFlag( TargetID() , 541320 ) == false then
			Say( OwnerID() , GetString("SC_MARRY_10") )		-- �Х���B�ú޲z���i��B�åӽСC
		else
			local Boy, Girl = Check_Ring( TargetID() )
			if Boy ~= nil and Girl ~= nil then
				if GetDistance( Boy , OwnerID() ) <= 300 and GetDistance( Girl , OwnerID() ) <= 300 and GetDistance( Boy , OwnerID() ) ~= -1 and GetDistance( Girl , OwnerID() ) ~= -1 then
					Marry_Start_Begin_Combo( Boy , Girl )
				else
					Say( OwnerID() , GetString("SC_MARRY_8") )			-- �s���P�s�Q�����b�ڪ�����A�ڤ~�ର�A���ұB�C
				end
			end
		end
	elseif ( PartyNum >= 3 ) then
		Say( OwnerID() , GetString("SC_MARRY_7") )			-- �s���P�s�Q����������H�p���A�~�i�H�}�l�B§�C
	end
end







