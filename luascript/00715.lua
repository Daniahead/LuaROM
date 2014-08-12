---/*============================================================================
function LuaI_421234_0()
	SetPlot( OwnerID() , "range" , "LuaI_421234_1" ,150 )
end

function LuaI_421234_1()
	if CheckAcceptQuest( OwnerID() , 421234 ) == true and Checkflag( OwnerID(), 541300) == false and Checkflag( OwnerID(), 541292) == false then
		ScriptMessage( OwnerID() , OwnerID() , 1 , GetString("SC_421234_0_0") , 0 )	--這裡應該就是左帳
		SetFlag( OwnerID() , 541298 , 1)
	end
end

function LuaI_421234_2()
	if CheckAcceptQuest( OwnerID() , 421234 ) ==  true and Checkflag( OwnerID(), 541300) == true then
		BeginCastBar( OwnerID(), GetString("SC_421234") , 30 , ruFUSION_ACTORSTATE_CRAFTING_BEGIN , ruFUSION_ACTORSTATE_CRAFTING_END , 0 );
		while 1 do
			sleep( 2 );
			local CastBarStatus = CheckCastBar( OwnerID() );
		if ( CastBarStatus ~= 0 ) then 
			if ( CastBarStatus > 0) then -- 成功
				resultZ = "OKOK"
				EndCastBar( OwnerID() , CastBarStatus )
				break;
			elseif ( CastBarStatus < 0 ) then -- 失敗
				resultZ = "DAME"
				EndCastBar( OwnerID() , CastBarStatus )
				break;
			end
		end
		if ( resultZ == "OKOK" ) then
			ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_421234_1_0") , 0 )	--你在左帳放置了毒煙產生器！！！
			DelBodyItem ( OwnerID() , 202398 , 1 )	 --刪除毒煙產生器
			SetFlag( OwnerID()  , 541300 , 0 );--刪除旗標
			SetFlag( OwnerID() , 541292 , 1)
		end
		end
	end
	if CheckAcceptQuest( OwnerID() , 421234 ) ==  true and Checkflag( OwnerID(), 541301) == true then
		BeginCastBar( OwnerID(), GetString("SC_421234") , 30 , ruFUSION_ACTORSTATE_CRAFTING_BEGIN , ruFUSION_ACTORSTATE_CRAFTING_END , 0 );
		while 1 do
			sleep( 2 );
			local CastBarStatus = CheckCastBar( OwnerID() );
		if ( CastBarStatus ~= 0 ) then 
			if ( CastBarStatus > 0) then -- 成功
				resultZ = "OKOK"
				EndCastBar( OwnerID() , CastBarStatus )
				break;
			elseif ( CastBarStatus < 0 ) then -- 失敗
				resultZ = "DAME"
				EndCastBar( OwnerID() , CastBarStatus )
				break;
			end
		end
		if ( resultZ == "OKOK" ) then
			ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_421234_1_1") , 0 )	--你在右帳放置了毒煙產生器！！！
			DelBodyItem ( OwnerID() , 202398 , 1 )	 --刪除毒煙產生器
			SetFlag( OwnerID()  , 541301 , 0 );--刪除旗標
			SetFlag( OwnerID() , 541293 , 1)
		end
		end
	end
	if CheckAcceptQuest( OwnerID() , 421234 ) ==  true and Checkflag( OwnerID(), 541302) == true then
		BeginCastBar( OwnerID(), GetString("SC_421234") , 30 , ruFUSION_ACTORSTATE_CRAFTING_BEGIN , ruFUSION_ACTORSTATE_CRAFTING_END , 0 );
		while 1 do
			sleep( 2 );
			local CastBarStatus = CheckCastBar( OwnerID() );
		if ( CastBarStatus ~= 0 ) then 
			if ( CastBarStatus > 0) then -- 成功
				resultZ = "OKOK"
				EndCastBar( OwnerID() , CastBarStatus )
				break;
			elseif ( CastBarStatus < 0 ) then -- 失敗
				resultZ = "DAME"
				EndCastBar( OwnerID() , CastBarStatus )
				break;
			end
		end
		if ( resultZ == "OKOK" ) then
			ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_421234_1_2") , 0 )	--你在中帳放置了毒煙產生器！！！
			DelBodyItem ( OwnerID() , 202398 , 1 )	 --刪除毒煙產生器	
			SetFlag( OwnerID()  , 541302 , 0 );--刪除旗標
			SetFlag( OwnerID() , 541294 , 1)
		end
		end
	end
end

---/*============================================================================
function LuaI_421234_0_0()
	SetPlot( OwnerID() , "range" , "LuaI_421234_1_0" ,150 )
end

function LuaI_421234_1_0()
	if CheckAcceptQuest( OwnerID() , 421234 ) == true and Checkflag( OwnerID(), 541301) == false and Checkflag( OwnerID(), 541293) == false then
		ScriptMessage( OwnerID() , OwnerID() , 1 , GetString("SC_421234_0_1") , 0 )	--這裡應該就是右帳
		SetFlag( OwnerID() , 541301 , 1)
	end
end
---/*============================================================================
function LuaI_421234_0_1()
	SetPlot( OwnerID() , "range" , "LuaI_421234_1_1" ,150 )
end

function LuaI_421234_1_1()
	if CheckAcceptQuest( OwnerID() , 421234 ) == true and Checkflag( OwnerID(), 541302) == false and Checkflag( OwnerID(), 541294) == false then
		ScriptMessage( OwnerID() , OwnerID() , 1 , GetString("SC_421234_0_2") , 0 )	--這裡應該就是中帳
		SetFlag( OwnerID() , 541302 , 1)
	end
end