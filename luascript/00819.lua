function Check_Ring( Player , Target )
	local Couple1 = GetPartyID( Player , 1 )
	local Couple2 = GetPartyID( Player , 2 )
	local Boy, Girl

	-- 有缺戒指
	    if CountBodyItem( Couple1 , 202543 ) == 0 and CountBodyItem( Couple1 , 202544 ) == 0 and CountBodyItem( Couple2 , 202543 ) == 0 and CountBodyItem( Couple2 , 202544 ) == 0 then
		Say( Target , GetString("SC_MARRY_9") )			-- 新郎與新娘必須持有結婚戒指才能獲得神的祝福。
	elseif CountBodyItem( Couple1 , 202543 ) >= 1 and CountBodyItem( Couple1 , 202544 ) == 0 and CountBodyItem( Couple2 , 202543 ) == 0 and CountBodyItem( Couple2 , 202544 ) == 0 then
		Say( Target , GetString("SC_MARRY_12") )			-- 進行婚姻申請前請先準備女方結婚戒指。
	elseif CountBodyItem( Couple1 , 202543 ) == 0 and CountBodyItem( Couple1 , 202544 ) >= 1 and CountBodyItem( Couple2 , 202543 ) == 0 and CountBodyItem( Couple2 , 202544 ) == 0 then
		Say( Target , GetString("SC_MARRY_13") )			-- 進行婚姻申請前請先準備男方結婚戒指。
	elseif CountBodyItem( Couple1 , 202543 ) == 0 and CountBodyItem( Couple1 , 202544 ) == 0 and CountBodyItem( Couple2 , 202543 ) >= 1 and CountBodyItem( Couple2 , 202544 ) == 0 then
		Say( Target , GetString("SC_MARRY_12") )
	elseif CountBodyItem( Couple1 , 202543 ) == 0 and CountBodyItem( Couple1 , 202544 ) == 0 and CountBodyItem( Couple2 , 202543 ) == 0 and CountBodyItem( Couple2 , 202544 ) >= 1 then
		Say( Target , GetString("SC_MARRY_13") )

	elseif CountBodyItem( Couple1 , 202543 ) >= 1 and CountBodyItem( Couple1 , 202544 ) >= 1 and CountBodyItem( Couple2 , 202543 ) == 0 and CountBodyItem( Couple2 , 202544 ) == 0 then
		Say( Target , GetString("SC_MARRY_9") )
	elseif CountBodyItem( Couple1 , 202543 ) == 0 and CountBodyItem( Couple1 , 202544 ) == 0 and CountBodyItem( Couple2 , 202543 ) >= 1 and CountBodyItem( Couple2 , 202544 ) >= 1 then
		Say( Target , GetString("SC_MARRY_9") )
	elseif CountBodyItem( Couple1 , 202543 ) >= 1 and CountBodyItem( Couple1 , 202544 ) == 0 and CountBodyItem( Couple2 , 202543 ) >= 1 and CountBodyItem( Couple2 , 202544 ) == 0 then
		Say( Target , GetString("SC_MARRY_12") )
	elseif CountBodyItem( Couple1 , 202543 ) == 0 and CountBodyItem( Couple1 , 202544 ) >= 1 and CountBodyItem( Couple2 , 202543 ) == 0 and CountBodyItem( Couple2 , 202544 ) >= 1 then
		Say( Target , GetString("SC_MARRY_13") )
	-- 正常狀態
	elseif CountBodyItem( Couple1 , 202543 ) >= 1 and CountBodyItem( Couple1 , 202544 ) == 0 and CountBodyItem( Couple2 , 202543 ) == 0 and CountBodyItem( Couple2 , 202544 ) >= 1 then
		Boy  = Couple1
		Girl = Couple2
	elseif CountBodyItem( Couple1 , 202543 ) == 0 and CountBodyItem( Couple1 , 202544 ) >= 1 and CountBodyItem( Couple2 , 202543 ) >= 1 and CountBodyItem( Couple2 , 202544 ) == 0 then
		Girl = Couple1
		Boy  = Couple2
	-- 有人重複
	elseif CountBodyItem( Couple1 , 202543 ) >= 1 and CountBodyItem( Couple1 , 202544 ) >= 1 and CountBodyItem( Couple2 , 202543 ) >= 1 and CountBodyItem( Couple2 , 202544 ) == 0 then
		Girl = Couple1
		Boy  = Couple2
	elseif CountBodyItem( Couple1 , 202543 ) >= 1 and CountBodyItem( Couple1 , 202544 ) >= 1 and CountBodyItem( Couple2 , 202543 ) == 0 and CountBodyItem( Couple2 , 202544 ) >= 1 then
		Boy  = Couple1
		Girl = Couple2
	elseif CountBodyItem( Couple1 , 202543 ) >= 1 and CountBodyItem( Couple1 , 202544 ) == 0 and CountBodyItem( Couple2 , 202543 ) >= 1 and CountBodyItem( Couple2 , 202544 ) >= 1 then
		Boy  = Couple1
		Girl = Couple2
	elseif CountBodyItem( Couple1 , 202543 ) == 0 and CountBodyItem( Couple1 , 202544 ) >= 1 and CountBodyItem( Couple2 , 202543 ) >= 1 and CountBodyItem( Couple2 , 202544 ) >= 1 then
		Girl = Couple1
		Boy  = Couple2
	elseif CountBodyItem( Couple1 , 202543 ) >= 1 and CountBodyItem( Couple1 , 202544 ) >= 1 and CountBodyItem( Couple2 , 202543 ) >= 1 and CountBodyItem( Couple2 , 202544 ) >= 1 then
		Boy  = Couple1
		Girl = Couple2

	elseif CountBodyItem( Couple1 , 202543 ) == 0 and CountBodyItem( Couple1 , 202544 ) == 0 and CountBodyItem( Couple2 , 202543 ) == 0 and CountBodyItem( Couple2 , 202544 ) == 0 then
		Say( Target , GetString("SC_MARRY_9") )
	elseif CountBodyItem( Couple1 , 202543 ) >= 1 and CountBodyItem( Couple1 , 202544 ) == 0 and CountBodyItem( Couple2 , 202543 ) == 0 and CountBodyItem( Couple2 , 202544 ) == 0 then
		Say( Target , GetString("SC_MARRY_12") )
	elseif CountBodyItem( Couple1 , 202543 ) == 0 and CountBodyItem( Couple1 , 202544 ) >= 1 and CountBodyItem( Couple2 , 202543 ) == 0 and CountBodyItem( Couple2 , 202544 ) == 0 then
		Say( Target , GetString("SC_MARRY_13") )
	elseif CountBodyItem( Couple1 , 202543 ) == 0 and CountBodyItem( Couple1 , 202544 ) == 0 and CountBodyItem( Couple2 , 202543 ) >= 1 and CountBodyItem( Couple2 , 202544 ) == 0 then
		Say( Target , GetString("SC_MARRY_12") )
	elseif CountBodyItem( Couple1 , 202543 ) == 0 and CountBodyItem( Couple1 , 202544 ) == 0 and CountBodyItem( Couple2 , 202543 ) == 0 and CountBodyItem( Couple2 , 202544 ) >= 1 then
		Say( Target , GetString("SC_MARRY_13") )

	elseif CountBodyItem( Couple1 , 202543 ) >= 1 and CountBodyItem( Couple1 , 202544 ) >= 1 and CountBodyItem( Couple2 , 202543 ) == 0 and CountBodyItem( Couple2 , 202544 ) == 0 then
		Say( Target , GetString("SC_MARRY_9") )
	elseif CountBodyItem( Couple1 , 202543 ) == 0 and CountBodyItem( Couple1 , 202544 ) == 0 and CountBodyItem( Couple2 , 202543 ) >= 1 and CountBodyItem( Couple2 , 202544 ) >= 1 then
		Say( Target , GetString("SC_MARRY_9") )
	elseif CountBodyItem( Couple1 , 202543 ) >= 1 and CountBodyItem( Couple1 , 202544 ) == 0 and CountBodyItem( Couple2 , 202543 ) >= 1 and CountBodyItem( Couple2 , 202544 ) == 0 then
		Say( Target , GetString("SC_MARRY_12") )
	elseif CountBodyItem( Couple1 , 202543 ) == 0 and CountBodyItem( Couple1 , 202544 ) >= 1 and CountBodyItem( Couple2 , 202543 ) == 0 and CountBodyItem( Couple2 , 202544 ) >= 1 then
		Say( Target , GetString("SC_MARRY_13") )

	else
		Say( Target , "have Question" )
	end

	return Boy, Girl

end

