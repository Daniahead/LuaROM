-----------------------------------------------------------------------------------------------------------
--香奈兒
-----------------------------------------------------------------------------------------------------------
function LuaI_110484()

	SetPlot( OwnerID(),"range","LuaI_110484_Detail",75 );

end
-----------------------------------------------------------------------------------------------------------
function LuaI_110484_Detail()
	if CheckFlag( OwnerID()  , 540794 ) == false then --檢查是否有頭銜：「新手冒險者」
		DialogCreate( OwnerID() , EM_LuaDialogType_YesNo  , GetString("ST_NEWHAND"));
		DialogSelectStr( OwnerID() , GetString("SO_NEWHANDYES") );
		DialogSelectStr( OwnerID() , GetString("SO_NEWHANDNO") );
--		DialogSelectStr( OwnerID() , "Yes" );
--		DialogSelectStr( OwnerID() , "NO");


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
--			SAY(TargetID(),"give 540794");
			SetFlag( OwnerID()  , 540794 , 1 );
--			SAY(TargetID(),"give 540851");
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
		else
			Tell ( OwnerID() , TargetID(),  GetString("ST_110484_6") );	--醒來了啊…新手冒險者就是這麼柔弱.........。
		end
	end
end
-----------------------------------------------------------------------------------------------------------
function LuaS_110484()

	LoadQuestOption( OwnerID() );  --載入任務模板

	if CheckAcceptQuest( OwnerID(), 420700 ) == true then
		AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_110484_NEWER"),   "LuaS_110484_Detail_NEWer",    0 );	--增加一個選項，新手冒險者
		AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_110484_ES"),             "LuaS_110484_Detail_EastSouth",0 );	--增加一個選項，東南方
		AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_110484_WALK"),      "LuaS_110484_Detail_Walk",       0 );	--增加一個選項，移動
		AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_110484_MISSION"), "LuaS_110484_Detail_Mission", 0 );	--增加一個選項，任務
	elseif CheckcompleteQuest( OwnerID(), 420700) ==true then
		AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_110484_NEWER"),   "LuaS_110484_Detail_NEWer",    0 );	--增加一個選項，新手冒險者
		AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_110484_ES"),             "LuaS_110484_Detail_EastSouth",0 );	--增加一個選項，東南方
		AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_110484_WALK"),      "LuaS_110484_Detail_Walk",       0 );	--增加一個選項，移動
		AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_110484_MISSION"), "LuaS_110484_Detail_Mission", 0 );	--增加一個選項，任務
	end

end
-----------------------------------------------------------------------------------------------------------
function LuaS_110484_Detail_NEWer()

	SetSpeakDetail( OwnerID(), GetString("ST_110484_1") );
	AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_LOOKOTHER"),     "LuaS_110484",      0 );	--增加一個選項，看看其他說明

end
-----------------------------------------------------------------------------------------------------------

function LuaS_110484_Detail_EastSouth()

	SetSpeakDetail( OwnerID(), GetString("ST_110484_2") );
	AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_LOOKOTHER"),     "LuaS_110484",      0 );	--增加一個選項，看看其他說明

end
-----------------------------------------------------------------------------------------------------------
function LuaS_110484_Detail_Walk()

	SetSpeakDetail( OwnerID(), GetString("ST_110484_3") );
	AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_LOOKOTHER"),     "LuaS_110484",      0 );	--增加一個選項，看看其他說明

end
-----------------------------------------------------------------------------------------------------------
function LuaS_110484_Detail_Mission()

	SetSpeakDetail( OwnerID(), GetString("ST_110484_4") );
	AddSpeakOption( OwnerID(), TargetID(),  GetString("SO_LOOKOTHER"),     "LuaS_110484",      0 );	--增加一個選項，看看其他說明

end
-----------------------------------------------------------------------------------------------------------
function LuaS_110484_Exit()

	CloseSpeak( OwnerID() );	--關閉對話視窗

end
-----------------------------------------------------------------------------------------------------------



