function LuaS_NewFamous_0()
	SetSpeakDetail ( OwnerID(), GetString ("ST_NEWFAMOUS_0")   )--說明劇情

	if CountBodyItem( OwnerID(), 201838)>0 then
		AddSpeakOption ( OwnerID(), TargetID( ), GetString("ST_NEWFAMOUS_1") , "LuaS_NewFamous_1", 0 ) --這裡是睿智勳印，我希望得到一個符合戰功的稱號。
	end	

	if CountBodyItem( OwnerID(), 201839)>0 then
		AddSpeakOption ( OwnerID(), TargetID( ), GetString("ST_NEWFAMOUS_2") , "LuaS_NewFamous_2", 0 ) --這裡是信任勳印，我希望得到一個符合戰功的稱號。
	end

	if CountBodyItem( OwnerID(), 201840)>0 then
		AddSpeakOption ( OwnerID(), TargetID( ), GetString("ST_NEWFAMOUS_3") , "LuaS_NewFamous_3", 0 ) --這裡是耐心勳印，我希望得到一個符合戰功的稱號。
	end

	if CountBodyItem( OwnerID(), 201841)>0 then
		AddSpeakOption ( OwnerID(), TargetID( ), GetString("ST_NEWFAMOUS_4") , "LuaS_NewFamous_4", 0 ) --這裡是英勇勳印，我希望得到一個符合戰功的稱號。
	end

	if CountBodyItem( OwnerID(), 201842)>0 then
		AddSpeakOption ( OwnerID(), TargetID( ), GetString("ST_NEWFAMOUS_5") , "LuaS_NewFamous_5", 0 ) --這裡是穩固勳印，我希望得到一個符合戰功的稱號。
	end
end