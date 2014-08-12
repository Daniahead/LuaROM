function LuaS_420864_0()
	local result = ""
	BeginCastBar( OwnerID(), GetString("SC_420864_0") , 30 , ruFUSION_ACTORSTATE_CRAFTING_BEGIN , ruFUSION_ACTORSTATE_CRAFTING_END , 0 )-- 傳送到玫瑰商隊
	while 1 do
		sleep( 2 );
		local CastBarStatus = CheckCastBar( OwnerID() );

		if ( CastBarStatus ~= 0 ) then 
			if ( CastBarStatus > 0) then -- 成功
				result = "OKOK"
				EndCastBar( OwnerID() , CastBarStatus )
				break;
			elseif ( CastBarStatus < 0 ) then -- 失敗
				result = "DAME"
				EndCastBar( OwnerID() , CastBarStatus )
				break;
			end
		end
	end

	if ( result == "OKOK" ) then
		DelBodyItem(OwnerID() , 201888 , 1)
		ChangeZone( OwnerID() , 10 , 0 , -31969 , -363 , 6067 , 210 )
	end
end