function Check_Ring( Player , Target )
	local Couple1 = GetPartyID( Player , 1 )
	local Couple2 = GetPartyID( Player , 2 )
	local Boy, Girl

	-- ���ʧ٫�
	    if CountBodyItem( Couple1 , 202543 ) == 0 and CountBodyItem( Couple1 , 202544 ) == 0 and CountBodyItem( Couple2 , 202543 ) == 0 and CountBodyItem( Couple2 , 202544 ) == 0 then
		Say( Target , GetString("SC_MARRY_9") )			-- �s���P�s�Q�����������B�٫��~����o�������֡C
	elseif CountBodyItem( Couple1 , 202543 ) >= 1 and CountBodyItem( Couple1 , 202544 ) == 0 and CountBodyItem( Couple2 , 202543 ) == 0 and CountBodyItem( Couple2 , 202544 ) == 0 then
		Say( Target , GetString("SC_MARRY_12") )			-- �i��B�åӽЫe�Х��ǳƤk�赲�B�٫��C
	elseif CountBodyItem( Couple1 , 202543 ) == 0 and CountBodyItem( Couple1 , 202544 ) >= 1 and CountBodyItem( Couple2 , 202543 ) == 0 and CountBodyItem( Couple2 , 202544 ) == 0 then
		Say( Target , GetString("SC_MARRY_13") )			-- �i��B�åӽЫe�Х��ǳƨk�赲�B�٫��C
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
	-- ���`���A
	elseif CountBodyItem( Couple1 , 202543 ) >= 1 and CountBodyItem( Couple1 , 202544 ) == 0 and CountBodyItem( Couple2 , 202543 ) == 0 and CountBodyItem( Couple2 , 202544 ) >= 1 then
		Boy  = Couple1
		Girl = Couple2
	elseif CountBodyItem( Couple1 , 202543 ) == 0 and CountBodyItem( Couple1 , 202544 ) >= 1 and CountBodyItem( Couple2 , 202543 ) >= 1 and CountBodyItem( Couple2 , 202544 ) == 0 then
		Girl = Couple1
		Boy  = Couple2
	-- ���H����
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

