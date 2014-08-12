function Marry_Check()
	CloseSpeak( OwnerID() )			-- 關閉對話視窗
	local PartyNum = GetPartyID( OwnerID() , -1 )

	if ( PartyNum == 0 ) then
		Say( TargetID() , GetString("SC_MARRY_3") )		-- 請先跟你心儀的對象組成兩人小隊，再來找我申請。
		SetFlag( Girl , 541320 , 0 )
	elseif ( PartyNum == 2 ) then
		if CheckFlag( OwnerID() , 541320 ) == true then
			Say( TargetID() , GetString("SC_MARRY_11") )			-- 你已經申請完成，請找證婚牧師開始你們的婚禮。
		else
			local Boy, Girl = Check_Ring( OwnerID() , TargetID() )
			if Boy ~= nil and Girl ~= nil then
				if GetDistance( Boy , TargetID() ) <= 300 and GetDistance( Girl , TargetID() ) <= 300 and GetDistance( Boy , TargetID() ) ~= -1 and GetDistance( Girl , TargetID() ) ~= -1 then
					Say( TargetID() , GetString("SC_MARRY_5") )			-- 好的，我接受你們的申請。
					SetFlag( Boy , 541320 , 1 )
					SetFlag( Girl , 541320 , 1 )
				else
					Say( TargetID() , GetString("SC_MARRY_6") )			-- 請你與心儀的對象一同過來找我吧。
				end
			end
		end
	elseif ( PartyNum >= 3 ) then
		Say( TargetID() , GetString("SC_MARRY_4") )			-- 你的隊伍人數太多，請只跟你心儀的對象組成兩人小隊，再來找我申請。
	end
end

function Marry_Start_Begin()

	local PartyNum = GetPartyID( TargetID() , -1 )

	if ( PartyNum == 0 ) then
		Say( OwnerID() , GetString("SC_MARRY_7") )		-- 新郎與新娘必須維持兩人小隊，才可以開始婚禮。
	elseif ( PartyNum == 2 ) then
		if CheckFlag( TargetID() , 541320 ) == false then
			Say( OwnerID() , GetString("SC_MARRY_10") )		-- 請先跟婚姻管理員進行婚姻申請。
		else
			local Boy, Girl = Check_Ring( TargetID() )
			if Boy ~= nil and Girl ~= nil then
				if GetDistance( Boy , OwnerID() ) <= 300 and GetDistance( Girl , OwnerID() ) <= 300 and GetDistance( Boy , OwnerID() ) ~= -1 and GetDistance( Girl , OwnerID() ) ~= -1 then
					Marry_Start_Begin_Combo( Boy , Girl )
				else
					Say( OwnerID() , GetString("SC_MARRY_8") )			-- 新郎與新娘必須在我的附近，我才能為你們證婚。
				end
			end
		end
	elseif ( PartyNum >= 3 ) then
		Say( OwnerID() , GetString("SC_MARRY_7") )			-- 新郎與新娘必須維持兩人小隊，才可以開始婚禮。
	end
end







