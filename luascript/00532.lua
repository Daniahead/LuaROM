function Lua_NewBie()
	if CheckFlag( OwnerID()  , 540794 ) == false then --檢查是否進入過新手教學區flag
		DialogCreate( OwnerID() , EM_LuaDialogType_YesNo  , GetString("ST_NEWHAND"));
--		DialogSelectStr( OwnerID() , GetString("SO_NEWHANDYES") );
--		DialogSelectStr( OwnerID() , GetString("SO_NEWHANDNO") );
		DialogSelectStr( OwnerID() , "Yes" );
		DialogSelectStr( OwnerID() , "NO");


		if( DialogSendOpen( OwnerID() ) == false ) then 
			ScriptMessage( OwnerID(),OwnerID(),1,GetString("SYS_FIXEQ_DATA_ERROR"),0)	
			--資料送出有問題
			return;
		end
		local SelectID = Hsiang_GetDialogResoult( OwnerID() );
		DialogClose( OwnerID() )
--		SAY(TargetID(),SelectID);
		if SelectID == 0  then
			ScriptMessage( OwnerID(), OwnerID(), 2, GetString("MSG_GET_NEWADV") , C_SYSTEM )	--畫面中間訊息：取得頭銜：「新手冒險者」
			ScriptMessage( OwnerID(), OwnerID(), 0, GetString("MSG_GET_NEWADV") , 0 )		--系統訊息：取得頭銜：「新手冒險者」
			GiveBodyItem ( OwnerID() , 530042 , 1 )	-- 頭銜：「新手冒險者」
			SetFlag( OwnerID()  , 540794 , 1 );
			SetFlag( OwnerID()  , 540851 , 1 );
			sleep(10)
			ChangeZone( OwnerID() , 102 , -1,3230, 7, 3704, 270);--傳到102
			sleep(5)
			return
		else
			Tell ( OwnerID() , TargetID(),  GetString("ST_110484_6") );	--醒來了啊…新手冒險者就是這麼柔弱.........。
			--SAY( TargetID() ,  GetString("ST_110484_6") );
			GiveBodyItem ( OwnerID() , 530042 , 1 )	-- 頭銜：「新手冒險者」
			ScriptMessage( OwnerID(), OwnerID(), 2, GetString("MSG_GET_NEWADV") , C_SYSTEM )	--畫面中間訊息：取得頭銜：「新手冒險者」
			ScriptMessage( OwnerID(), OwnerID(), 0, GetString("MSG_GET_NEWADV") , 0 )		--系統訊息：取得頭銜：「新手冒險者」
			SetFlag( OwnerID()  , 540794 , 1 );
		end
	else
		if CheckAcceptQuest( OwnerID(), 420700) == true then
			Tell ( OwnerID() ,  TargetID(),  GetString("ST_110484_5") );	--快往開墾聚落去吧！
			--SAY(TargetID(),  GetString("ST_110484_5") );
		elseif CheckcompleteQuest( OwnerID(), 420700) ==true then
		end
	end
end
function Lua_NewBie_nodead_1()
	--SetPlot( OwnerID() , "dead" , "QuestNPC_DeathPlot_100643_1" , 0 );
end

function QuestNPC_DeathPlot_100643_1()
	if CheckAcceptQuest( TargetID(), 420633) == true then
		if CountBodyItem( TargetID() , 201485 ) == 0 then
			GiveBodyItem ( TargetID() , 201485 , 1 )
		end
	end	
	Say( OwnerID(),GetString("EM_NEWBIE_1") )
	PlayMotion( OwnerID(),ruFUSION_ACTORSTATE_DYING )
	setrolecamp(OwnerID(),"SNPC")
	return false;
end

function Lua_NewBie_nodead_2()
	--SetPlot( OwnerID() , "dead" , "QuestNPC_DeathPlot_100643_2" , 0 );
end

function QuestNPC_DeathPlot_100643_2()
	if CheckAcceptQuest( TargetID(), 420633) == true then
		if CountBodyItem( TargetID() , 201486 ) == 0 then
			GiveBodyItem ( TargetID() , 201486 , 1 )
		end
	end	
	Say( OwnerID(),GetString("EM_NEWBIE_2") )
	PlayMotion( OwnerID(),ruFUSION_ACTORSTATE_DYING )
	setrolecamp(OwnerID(),"SNPC")
	return false;
end

function Lua_NewBie_nodead_3()
	--SetPlot( OwnerID() , "dead" , "QuestNPC_DeathPlot_100643_3" , 0 );
end

function QuestNPC_DeathPlot_100643_3()
	if CheckAcceptQuest( TargetID(), 420633) == true then
		if CountBodyItem( TargetID() , 201487 ) == 0 then
			GiveBodyItem ( TargetID() , 201487 , 1 )
		end
	end	
	Say( OwnerID(),GetString("EM_NEWBIE_3") )
	PlayMotion( OwnerID(),ruFUSION_ACTORSTATE_DYING )
	setrolecamp(OwnerID(),"SNPC")
	return false;
end

function Lua_NewBie_home()
	sleep(50)
	if CheckFlag( TargetID()  , 540851 ) ==true then--檢查有無旗標
		SetFlag( TargetID()  , 540851 , 0 );--刪除旗標
		ChangeZone( TargetID() , 1 , 0 ,-4069,244, -8247, 47)--傳送到zone1
	end
end
