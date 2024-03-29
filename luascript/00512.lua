function LuaS_GetPriest_0()

	LoadQuestOption( OwnerID() )

	if ( CheckFlag( OwnerID() , 540804 ) == false ) then
		local job = ReadRoleValue( OwnerID() , EM_RoleValue_VOC )	-- 如果不報到，一開始就來解的話
		if ( job == 5 ) then
			SetFlag( OwnerID() , 540815 , 1 )	-- 新手職業選祭司
		end
		SetFlag( OwnerID() , 540804 , 1 )	-- 新手職業已選
	end

	if ( CheckFlag( OwnerID() , 540820 ) == false ) then
		NoGiveCrystal()	-- 解決拿不到符文水晶證明
	end

	if ReadRoleValue( OwnerID() , EM_RoleValue_VOCLV_Priest ) == 0 then -- 檢查任務
		if ReadRoleValue( OwnerID() , EM_RoleValue_LV) >= 10 or CheckFlag(OwnerID() , 540820 ) == true then
			AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETPRIEST_1"), "LuaS_GetPriest_1", 0 )	--/*請教導我祭司的技巧
		else
			AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_LVLIMIT") , "LuaS_GetJob_EXIT", 0 );	
		end
	end

	local NPC = ReadRoleValue( TargetID() , EM_RoleValue_OrgID)
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_SPEAK") , "LuaS_"..NPC.."_0", 0 );
	
end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetPriest_1()

	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then	-- 符文水晶收取證明
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEM") )	-- 你要使用符文水晶收取證明來取得這個職業嗎？
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetPriest_3", 0 )		--/*確定 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GetPriest_0", 0 )	--/*我再考慮看看
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETVOCMASSAGE") )	--/*當然可以，不過協會提供的訓練不是免費的，需要付出 10 塊符文晶砂，你確定要接受訓練嗎？
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetPriest_2", 0 )		--/*確定 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GetPriest_0", 0 )	--/*我再考慮看看
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetPriest_2()

	local Job_Num = JobCount()
	if  Job_Num then
		SetSpeakDetail( OwnerID(), GetString("ST_GETPRIEST_1") )
		--/*諾芙的教義需要藉由實踐來體會，接下來你的路還很長，願泉水護祐你。這張傳送卷軸送你，你可以使用它回到開墾聚落，從那裡重新磨鍊自己。
		DelBodyItem( OwnerID() , 201211 , 10 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 5 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)--給重要物品540820「取得職業」，開啟往職業管理員的任務
	else
		SetSpeakDetail( OwnerID(), GetString("SC_GETJOBERROR") )	--對不起，目前你已達可取得職業數的上限，所以無法取得新的職業！！
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetPriest_3()

	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then
		SetSpeakDetail( OwnerID(), GetString("ST_GETPRIEST_1") )
		--/*諾芙的教義需要藉由實踐來體會，接下來你的路還很長，願泉水護祐你。這張傳送卷軸送你，你可以使用它回到開墾聚落，從那裡重新磨鍊自己。
		DelBodyItem( OwnerID() , 201467 , 1 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 5 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)--給重要物品540820「取得職業」，開啟往職業管理員的任務
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEMERROR") )	-- 很遺憾，你身上似乎沒有符文水晶的收取證明，這樣我無法讓你取得這個職業。
	end

end
--------------------------------------------------------------------------------------------------------------------------

function LuaS_GetKnight_0()

	LoadQuestOption( OwnerID() )

	if ( CheckFlag( OwnerID() , 540804 ) == false ) then
		local job = ReadRoleValue( OwnerID() , EM_RoleValue_VOC )	-- 如果不報到，一開始就來解的話
		if ( job == 6 ) then
			SetFlag( OwnerID() , 540816 , 1 )	-- 新手職業選騎士
		end
		SetFlag( OwnerID() , 540804 , 1 )	-- 新手職業已選
	end

	if ( CheckFlag( OwnerID() , 540820 ) == false ) then
		NoGiveCrystal()	-- 解決拿不到符文水晶證明
	end

	if ReadRoleValue( OwnerID() , EM_RoleValue_VOCLV_Knight ) == 0 then -- 檢查任務
		if ReadRoleValue( OwnerID() , EM_RoleValue_LV) >= 10 or CheckFlag(OwnerID() , 540820 ) == true then
			AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETKNIGHT_1"), "LuaS_GetKnight_1", 0 )	--/*請教導我騎士的技巧
		else
			AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_LVLIMIT") , "LuaS_GetJob_EXIT", 0 );	
		end
	end

	local NPC = ReadRoleValue( TargetID() , EM_RoleValue_OrgID)
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_SPEAK") , "LuaS_"..NPC.."_0", 0 );

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetKnight_1()

	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then	-- 符文水晶收取證明
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEM") )	-- 你要使用符文水晶收取證明來取得這個職業嗎？
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetKnight_3", 0 )	--/*確定 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GetKnight_0", 0 )	--/*我再考慮看看
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETVOCMASSAGE") )	--/*當然可以，不過協會提供的訓練不是免費的，需要付出 10 塊符文晶砂，你確定要接受訓練嗎？
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_GETVOC_YES"), "LuaS_GetKnight_2", 0 )	--/*確定 
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO") , "LuaS_GetKnight_0", 0 )	--/*我再考慮看看
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetKnight_2()

	local Job_Num = JobCount()
	if  Job_Num then
		SetSpeakDetail( OwnerID(), GetString("ST_GETKNIGHT_1") )
		--/*現實，是這個世界磨練我們意志的工具，學會騎士基礎的你，該是挑戰現實來讓自己更進一步的時候了。這張傳送卷軸送你，你可以使用它回到開墾聚落，從那裡重新磨鍊自己。
		DelBodyItem( OwnerID() , 201211 , 10 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 6 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)--給重要物品540820「取得職業」，開啟往職業管理員的任務
	else
		SetSpeakDetail( OwnerID(), GetString("SC_GETJOBERROR") )	--對不起，目前你已達可取得職業數的上限，所以無法取得新的職業！！
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetKnight_3()

	if ( CountBodyItem( OwnerID() , 201467 ) >= 1 ) then
		SetSpeakDetail( OwnerID(), GetString("ST_GETKNIGHT_1") )
		--/*現實，是這個世界磨練我們意志的工具，學會騎士基礎的你，該是挑戰現實來讓自己更進一步的時候了。這張傳送卷軸送你，你可以使用它回到開墾聚落，從那裡重新磨鍊自己。
		DelBodyItem( OwnerID() , 201467 , 1 )
		WriteRoleValue( OwnerID() , EM_RoleValue_VOC , 6 )
		GiveBodyItem(OwnerID(),201200,1)
		GiveBodyItem(OwnerID(),540820,1)--給重要物品540820「取得職業」，開啟往職業管理員的任務
	else
		SetSpeakDetail( OwnerID(), GetString("ST_GETJOBUSEITEMERROR") )	-- 很遺憾，你身上似乎沒有符文水晶的收取證明，這樣我無法讓你取得這個職業。
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_GetJob_EXIT()
	CloseSpeak( OwnerID() )
end