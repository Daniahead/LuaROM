function LuaS_GetWarrior_0()

	LoadQuestOption( OwnerID() )

	if ( CheckFlag( OwnerID() , 540804 ) == false ) then
		local job = ReadRoleValue( OwnerID() , EM_RoleValue_VOC )	-- 如果不報到，一開始就來解的話
		if ( job == 1 ) then
			SetFlag( OwnerID() , 540811 , 1 )	-- 新手職業選戰士
		end
		SetFlag( OwnerID() , 540804 , 1 )	-- 新手職業已選

	end

	if ( CheckFlag( OwnerID() , 540820 ) == false ) then
		NoGiveCrystal()	-- 解決拿不到符文水晶證明
	end

	if ReadRoleValue( OwnerID() , EM_RoleValue_VOCLV_Warrior ) == 0 then -- 檢查任務
		if ReadRoleValue( OwnerID() , EM_RoleValue_LV) >= 10 or CheckFlag(OwnerID() , 540820 ) == true then
			AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETWARRIOR_1"), "LuaS_GetWarrior_1", 0 )	--/*請教導我戰士的技巧
		else
			AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_LVLIMIT") , "LuaS_GetJob_EXIT", 0 );	
		end
	end

	local NPC = ReadRoleValue( TargetID() , EM_RoleValue_OrgID)
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_SPEAK") , "LuaS_"..NPC.."_0", 0 );

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetWarrior_1()

	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then	-- 符文水晶收取證明
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEM") )	-- 你要使用符文水晶收取證明來取得這個職業嗎？
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetWarrior_3", 0 )	--/*確定 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GetWarrior_0", 0 )	--/*我再考慮看看
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETVOCMASSAGE") )	--/*協會提供的訓練不是免費的，需要付出 10 塊符文晶砂，你確定要接受訓練嗎？
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetWarrior_2", 0 )	--/*確定 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GetWarrior_0", 0 )	--/*我再考慮看看
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetWarrior_2()

	local Job_Num = JobCount()
	if  Job_Num then
		SetSpeakDetail( OwnerID(), GetString("ST_GETWARRIOR_1") )
		--/*很好，現在你已經掌握戰士的基本技巧了！接下來就看你自己在實戰中的成長了。這張傳送卷軸送你，你可以使用它回到開墾聚落，從那裡重新磨鍊自己。
		DelBodyItem( OwnerID() , 201211 , 10 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 1 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)	--給重要物品540820「取得職業」，開啟往職業管理員的任務
	else
		SetSpeakDetail( OwnerID(), GetString("SC_GETJOBERROR") )	--對不起，目前你已達可取得職業數的上限，所以無法取得新的職業！！
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetWarrior_3()
	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then
		SetSpeakDetail( OwnerID(), GetString("ST_GETWARRIOR_1") )
		--/*很好，現在你已經掌握戰士的基本技巧了！接下來就看你自己在實戰中的成長了。這張傳送卷軸送你，你可以使用它回到開墾聚落，從那裡重新磨鍊自己。
		DelBodyItem( OwnerID() , 201467 , 1 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 1 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)	--給重要物品540820「取得職業」，開啟往職業管理員的任務
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEMERROR") )	-- 很遺憾，你身上似乎沒有符文水晶的收取證明，這樣我無法讓你取得這個職業。
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetRanger_0()

	LoadQuestOption( OwnerID() )

	if ( CheckFlag( OwnerID() , 540804 ) == false ) then
		local job = ReadRoleValue( OwnerID() , EM_RoleValue_VOC )	-- 如果不報到，一開始就來解的話
		if ( job == 2 ) then
			SetFlag( OwnerID() , 540812 , 1 )	-- 新手職業選遊俠
		end
		SetFlag( OwnerID() , 540804 , 1 )	-- 新手職業已選
	end

	if ( CheckFlag( OwnerID() , 540820 ) == false ) then
		NoGiveCrystal()	-- 解決拿不到符文水晶證明
	end

	if ReadRoleValue( OwnerID() , EM_RoleValue_VOCLV_Ranger) == 0 then -- 檢查任務
		if ReadRoleValue( OwnerID() , EM_RoleValue_LV) >= 10 or CheckFlag(OwnerID() , 540820 ) == true then
			AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETRANGER_1"), "LuaS_GetRanger_1", 0 )	--/*請教導我遊俠的技巧
		else
			AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_LVLIMIT") , "LuaS_GetJob_EXIT", 0 );	
		end
	end

	local NPC = ReadRoleValue( TargetID() , EM_RoleValue_OrgID)
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_SPEAK") , "LuaS_"..NPC.."_0", 0 );	

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetRanger_1()

	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then	-- 符文水晶收取證明
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEM") )	-- 你要使用符文水晶收取證明來取得這個職業嗎？
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetRanger_3", 0 )	--/*確定 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GetRanger_0", 0 )	--/*我再考慮看看
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETVOCMASSAGE") )	--/*當然可以，不過協會提供的訓練不是免費的，需要付出 10 塊符文晶砂，你確定要接受訓練嗎？
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetRanger_2", 0 )	--/*確定 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GetRanger_0", 0 )	--/*我再考慮看看
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetRanger_2()

	local Job_Num = JobCount()
	if  Job_Num then
		SetSpeakDetail( OwnerID(), GetString("ST_GETRANGER_1") )
		--/*雖然你現在學會了遊俠的技巧，但還有更多需要你親身去體驗才能領悟的經驗，加油吧！這張傳送卷軸送你，你可以使用它回到開墾聚落，從那裡重新磨鍊自己。
		DelBodyItem( OwnerID() , 201211 , 10 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 2 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)--給重要物品540820「取得職業」，開啟往職業管理員的任務
	else
		SetSpeakDetail( OwnerID(), GetString("SC_GETJOBERROR") )	--對不起，目前你已達可取得職業數的上限，所以無法取得新的職業！！
	end


end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetRanger_3()

	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then
		SetSpeakDetail( OwnerID(), GetString("ST_GETRANGER_1") )
		--/*雖然你現在學會了遊俠的技巧，但還有更多需要你親身去體驗才能領悟的經驗，加油吧！這張傳送卷軸送你，你可以使用它回到開墾聚落，從那裡重新磨鍊自己。
		DelBodyItem( OwnerID() , 201467 , 1 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 2 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)--給重要物品540820「取得職業」，開啟往職業管理員的任務
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEMERROR") )	-- 很遺憾，你身上似乎沒有符文水晶的收取證明，這樣我無法讓你取得這個職業。
	end

end
