function LuaS_GETROGUE_0()

	LoadQuestOption( OwnerID() )

	if ( CheckFlag( OwnerID() , 540804 ) == false ) then
		local job = ReadRoleValue( OwnerID() , EM_RoleValue_VOC )	-- 如果不報到，一開始就來解的話
		if ( job == 3 ) then
			SetFlag( OwnerID() , 540813 , 1 )	-- 新手職業選盜賊
		end
		SetFlag( OwnerID() , 540804 , 1 )	-- 新手職業已選
	end

	if ( CheckFlag( OwnerID() , 540820 ) == false ) then
		NoGiveCrystal()	-- 解決拿不到符文水晶證明
	end

	if ReadRoleValue( OwnerID() , EM_RoleValue_VOCLV_Rogue ) == 0 then -- 檢查任務
		if ReadRoleValue( OwnerID() , EM_RoleValue_LV) >= 10 or CheckFlag(OwnerID() , 540820 ) == true then
			AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETROGUE_1"), "LuaS_GetRogue_1",0 )	--/*請教導我盜賊的技巧
		else
			AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_LVLIMIT") , "LuaS_GetJob_EXIT", 0 );	
		end
	end

	local NPC = ReadRoleValue( TargetID() , EM_RoleValue_OrgID)
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_SPEAK") , "LuaS_"..NPC.."_0", 0 );

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetRogue_1()

	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then	-- 符文水晶收取證明
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEM") )	-- 你要使用符文水晶收取證明來取得這個職業嗎？
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetRogue_3", 0 )		--/*確定 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GETROGUE_0", 0 )	--/*我再考慮看看
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETVOCMASSAGE") )	--/*當然可以，不過協會提供的訓練不是免費的，需要付出 30 塊符文晶砂，你確定要接受訓練嗎？
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetRogue_2", 0 )		--/*確定 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GETROGUE_0", 0 )	--/*我再考慮看看
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetRogue_2()

	local Job_Num = JobCount()
	if  Job_Num then
		SetSpeakDetail( OwnerID(), GetString("ST_GETROGUE_1") )
		--/*嘿！不錯嘛！學的挺快的！接下來你應該能夠自己鍛鍊自己了吧？嗯？這張傳送卷軸送你，你可以使用它回到開墾聚落，從那裡重新磨鍊自己。
		DelBodyItem( OwnerID() , 201211 , 10 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 3 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)--給重要物品540820「取得職業」，開啟往職業管理員的任務
	else
		SetSpeakDetail( OwnerID(), GetString("SC_GETJOBERROR") )	--對不起，目前你已達可取得職業數的上限，所以無法取得新的職業！！
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetRogue_3()

	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then
		SetSpeakDetail( OwnerID(), GetString("ST_GETROGUE_1") )
		--/*嘿！不錯嘛！學的挺快的！接下來你應該能夠自己鍛鍊自己了吧？嗯？這張傳送卷軸送你，你可以使用它回到開墾聚落，從那裡重新磨鍊自己。
		DelBodyItem( OwnerID() , 201467 , 1 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 3 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)--給重要物品540820「取得職業」，開啟往職業管理員的任務
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEMERROR") )	-- 很遺憾，你身上似乎沒有符文水晶的收取證明，這樣我無法讓你取得這個職業。
	end

end
--------------------------------------------------------------------------------------------------------------------------

function LuaS_GetMage_0()

	LoadQuestOption( OwnerID() )

	if ( CheckFlag( OwnerID() , 540804 ) == false ) then
		local job = ReadRoleValue( OwnerID() , EM_RoleValue_VOC )	-- 如果不報到，一開始就來解的話
		if ( job == 4 ) then
			SetFlag( OwnerID() , 540814 , 1 )	-- 新手職業選法師
		end
		SetFlag( OwnerID() , 540804 , 1 )	-- 新手職業已選
	end

	if ( CheckFlag( OwnerID() , 540820 ) == false ) then
		NoGiveCrystal()	-- 解決拿不到符文水晶證明
	end

	if ReadRoleValue( OwnerID() , EM_RoleValue_VOCLV_Wizard ) == 0 then -- 檢查任務
		if ReadRoleValue( OwnerID() , EM_RoleValue_LV) >= 10 or CheckFlag(OwnerID() , 540820 ) == true then
			AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETMAGE_1"), "LuaS_GetMage_1", 0 )	--/*請教導我法師的技巧
		else
			AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_LVLIMIT") , "LuaS_GetJob_EXIT", 0 );		
		end
	end

	local NPC = ReadRoleValue( TargetID() , EM_RoleValue_OrgID)
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_SPEAK") , "LuaS_"..NPC.."_0", 0 );

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetMage_1()

	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then	-- 符文水晶收取證明
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEM") )	-- 你要使用符文水晶收取證明來取得這個職業嗎？
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetMage_3", 0 )		--/*確定 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GetMage_0", 0 )	--/*我再考慮看看
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETVOCMASSAGE") )	--/*當然可以，不過協會提供的訓練不是免費的，需要付出 10 塊符文晶砂，你確定要接受訓練嗎？
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetMage_2", 0 )		--/*確定 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GetMage_0", 0 )	--/*我再考慮看看
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetMage_2()

	local Job_Num = JobCount()
	if  Job_Num then
		SetSpeakDetail( OwnerID(), GetString("ST_GETMAGE_1") )
		--/*現在你應該已經稍微領悟到掌控元素的技巧了，但要更精通這門學問，除了學習，還要更多的練習才行。這張傳送卷軸送你，你可以使用它回到開墾聚落，從那裡重新磨鍊自己。
		DelBodyItem( OwnerID() , 201211 , 10 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 4 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)--給重要物品540820「取得職業」，開啟往職業管理員的任務
	else
		SetSpeakDetail( OwnerID(), GetString("SC_GETJOBERROR") )	--對不起，目前你已達可取得職業數的上限，所以無法取得新的職業！！
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetMage_3()

	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then
		SetSpeakDetail( OwnerID(), GetString("ST_GETMAGE_1") )
		--/*現在你應該已經稍微領悟到掌控元素的技巧了，但要更精通這門學問，除了學習，還要更多的練習才行。這張傳送卷軸送你，你可以使用它回到開墾聚落，從那裡重新磨鍊自己。
		DelBodyItem( OwnerID() , 201467 , 1 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 4 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)--給重要物品540820「取得職業」，開啟往職業管理員的任務
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEMERROR") )	-- 很遺憾，你身上似乎沒有符文水晶的收取證明，這樣我無法讓你取得這個職業。
	end

end


