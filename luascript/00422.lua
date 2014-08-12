function RuneMark_Cloister()

	PlayMotion ( OwnerID() , ruFUSION_ACTORSTATE_CAST_BEGIN );
	CastSpell( OwnerID() , TargetID() , 490112 );	-- 解毒劑特效
	Sleep(20)
	--ruFUSION_ACTORSTATE_CAST_LOOP
	PlayMotion ( OwnerID() , ruFUSION_ACTORSTATE_CAST_END );
	Sleep(20)
	SetFlag( TargetID()  , 540781 , 1 );			-- 打開副本鑰匙_廢棄修道院

	Say ( OwnerID(),  GetString("ST_110184_4") )	--孩子，願神祝福你一切順利！

end

function LuaI_CloisterKey()
	SetPlot( OwnerID() , "Range" , "Enter_Cloister" , 65);
end

function Enter_Cloister()
--for橘子測試，先拿掉條件
	--if CheckFlag( OwnerID()  , 540781 ) == true then
		-- Say ( TargetID(),  "你將進入副本！" );
		ScriptMessage( OwnerID(), OwnerID(), 0, GetString("ST_CLOISTER_1") , 0 )	--你穿過魔法障壁，進入了修道院！
		ChangeZone( OwnerID() , 100 , -1, 1334, 330, 2911, 163);
	--else
		-- Say ( TargetID(),  "你被一層魔法障壁擋住，無法再前進！" );
		--ScriptMessage( OwnerID(), OwnerID(), 0, "你被一層魔法障壁擋住，無法再前進！" , 0 );
	--end

end

function LuaI_TransPort_Zone2A()
	SetPlot( OwnerID() , "Collision" , "LuaFunc_TransPort_Zone2A" , 0);	
end
function LuaFunc_TransPort_Zone2A()
	ChangeZone( OwnerID() , 2 , 0 , -1722 , -475, 2111 , 256 );
--	ChangeZone( OwnerID() , 2 , 0,-1722, -479, 2100,261);
--	ChangeZone( OwnerID() , 2 ,-1, -1723, -475, 2116, 253);
end
