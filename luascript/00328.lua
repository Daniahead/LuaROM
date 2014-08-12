function LuaI_110457() --設定艾德雷留下的訊息
	SetPlot( OwnerID(),"touch","LuaI_110457_1",40)
end
-----------------------------------------------------------------------------------------------------------------------
function LuaI_110457_1()
	if CheckCompleteQuest( OwnerID() , 420268 ) == true and CheckCompleteQuest( OwnerID() , 420269 ) == false then
		if CheckAcceptQuest( OwnerID() , 420269 ) == false and CountBodyItem(OwnerID(),201106 ) == 0 then
			GiveBodyItem( OwnerID() , 201106 , 1 )
		end
	end
	BeginPlot( TargetID() , "LuaI_110457_2" , 0 )
end
------------------------------------------------------------------------------------------------------------------------
function LuaI_110457_2()
	local RoomID = ReadRoleValue( TargetID() , EM_RoleValue_RoomID )
	Hide( OwnerID() )
	sleep( 100 )
	Show( OwnerID() , RoomID )
end
------------------------------------------------------------------------------------------------------------------------
function LuaS_201106_0() --艾德雷的信

	ClearBorder( OwnerID() );
	AddBorderPage( OwnerID(), GetQuestDetail( 420269, 1  ) );

	ShowBorder( OwnerID(), 420269, GetObjNameByGUID(GetUseItemGUID(OwnerID())), "ScriptBorder_Texture_Paper" );	

end
------------------------------------------------------------------------------------------------------------------------
function LuaI_420268() --設定範圍劇情來佈置
	SetPlot( OwnerID() , "range" , "LuaQ_420268_ControlCenter" , 500 )
end
------------------------------------------------------------------------------------------------------------------------
function LuaQ_420268_SetUP()
	SetPlot( TargetID() , "range" , "" , 0 ) --變免重複觸發
	if CheckAcceptQuest( OwnerID(),420268 ) then
		BeginPlot( TargetID() , "LuaQ_420268_SceneControl" , 0 )
	end
end
------------------------------------------------------------------------------------------------------------------------
function LuaQ_420268_SceneControl() --佈置場景
	
	Local WindSpirit = LuaFunc_SearchNPCbyOrgID( OwnerID() , 110360 , 500 )
	local Message = LuaFunc_SearchNPCbyOrgID( OwnerID() , 110457 , 500 )
	local Room = ReadRoleValue( TargetID() , EM_RoleValue_RoomID )
 	--將原來的佈置刪除
	Delobj( WindSpirit )
	Delobj( Message )
	--佈置新的場景
	local Adery = CreateObjByFlag( 110332 , 580042 , 0 , 1 )
	local Herlong = CreatObjByFlag( 110147 , 580042, 1 , 1 )
	local Ser1 = CreateObjByFlag( 100204 , 580042 , 2 , 1 ) --代100257
	local Ser2 = CreateObjByFlag( 100204 , 580042 , 3 , 1 ) --代100257
	SetRoleCamp( Ser1 , "NPC" )
	SetRoleCamp( Ser2 , "NPC" )
	AddToPartition( Adery , Room )
	AddToPartition( Herlong , Room )
	AddToPartition( Ser1, Room )
	AddToPartition( Ser2 , Room )
	SetPlot( Adery , "touch" , "LuaFunc_Obj_Nothing" , 0 )
	SetPlot( Herlong , "touch" , "LuaFunc_Obj_Nothing" , 0 )
	SetPlot( Ser1 , "touch" , "LuaFunc_Obj_Nothing" , 0 )
	SetPlot( Ser2 , "touch" , "LuaFunc_Obj_Nothing" , 0 )
	--設觸碰展開劇情
	SetPlot( Herlong , "range" , "LuaQ_420268_Step1" , 100 )
	WriteRoleValue( Herlong , EM_RoleValue_PID , 0 )

end
-----------------------------------------------------------------------------------------------------------------------
function LuaQ_420268_Step1()
	
	CastSpell( OwnerID() , OwnerID() , 490408 ) --讓所有人進入無法移動的狀態
	if ReadRoleValue( TargetID() , EM_RoleValue_PID ) == 0 then
		BeginPlot( TargetID() , "LuaQ_420268_Step2" , 0 )	
		WriteRoleValue( TargetID(), EM_RoleValue_PID , 100 )
	end
end
-----------------------------------------------------------------------------------------------------------------------
function LuaQ_420268_Step2()
	
	local Adery = LuaFunc_SearchNPCbyOrgID( OwnerID() , 110332 , 200 )
	local Ser = LuaFunc_SearchNPCbyOrgID( OwnerID() , 100204 , 200 ) --代100257
	Say( Adery , GetString("SAY_110332_0") ) --/*小心！
	sleep( 30 )
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_SPEAK )
	Say( OwnerID() , GetString("SAY_110147_8") ) --/*謝謝你的提醒，不過他們已經中了我的魔法陷阱，不用擔心。反倒是你，你的所作所為讓我很為難呢！有覺悟了嗎？
	sleep( 30 )
	PlayMotion( Adery , ruFUSION_ACTORSTATE_CAST_BEGIN )
	Say( Adery , GetString("SAY_110332_1") ) --/*魔法護……
	sleep( 5 )
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_CAST_INSTANT )
	CastSpell( Adery , OwnerID() ,490247 ) --對艾德雷施放法術
	sleep( 30 )
	PlayMotion( Adery , ruFUSION_ACTORSTATE_DYING ) --艾德雷倒下
	Say( OwnerID() , GetString("SAY_110147_9") ) --/*哼！垂死的掙扎！
	MoveToFlagEnabled( OwnerID() , false )
	WriteRoleValue( OwnerID() , EM_RoleValue_IsWalk , 1 )
	LuaFunc_MoveToFlag( OwnerID(), 580042 , 0 ,0 )
	FaceObj( OwnerID() , Adery )
	sleep( 30 )
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_CRAFTING_BEGIN ) --暫代蹲下的動作
	sleep( 30 )
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_CRAFTING_END ) --暫代站起的動作
	sleep( 30 )
	FaceObj( OwnerID() , Ser[0] )
	sleep( 50 )
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_SPEAK )
	Say( OwnerID() , GetString("SAY_110147_10") ) --/*把這個符文盤帶到水底遺蹟交給拉爾卡恩默思。
	sleep( 20 )
	PlayMotion( Ser[0] , ruFUSION_ACTORSTATE_EMOTE_SALUTE )
	sleep( 30 )
	BeginPlot( Ser[0] ,"LuaQ_420268_GoAway" , 0 )
	BeginPlot( Ser[1] ,"LuaQ_420268_GoAway" , 0 )
	if CheckID( TargetID() )  then
		FaceObj( OwnerID() , TargetID() )
		sleep( 50 )
	end
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_SPEAK )
	Say( OwnerID() , GetString("SAY_110147_11") ) --/*告訴你們一個好消息，英雄們。
	sleep(30)
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_SPEAK )
	Say( OwnerID() , GetString("SAY_110147_12") ) --/*這是最後一個符文盤，而且我已經幫你們在冥府準備了一場盛宴。
	sleep(30)
	SetPlot( OwnerID() , "range" , "" , 100 ) --移除赫龍身上的範圍劇情，之後進來的不會沉睡
	local Player = SearchRangePlayer( OwnerID() , 500 )
	local i = 0
	while 1 do
		if Player[i] == -1 then
			break
		end
		CancelBuff( Player[i], 500828 ) --解除玩家的BUFF，需作用於全區域
		CastSpell( Player[i] ,Player[i] , 490273)  --暫代風之靈BUFF
		i = i + 1
 	end
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_HURT_NORMAL )
	Say( OwnerID() , GetString("SAY_110147_13") ) --/*什麼？裝置失效了嗎？
	SetPlot( OwnerID() , "dead" , "LuaQ_420268_Dead" , 0 )
	SetRoleCamp( OwnerID() , "Monster" )
end
----------------------------------------------------------------------------------------------------------------------	
function LuaQ_420268_GoAway()
	LuaFunc_MoveToFlag( OwnerID(), 580042 , 4 ,0 )	
	DelObj( OwnerID() )
end
----------------------------------------------------------------------------------------------------------------------
function LuaQ_420268_Dead()
	BeginPlot( OwnerID() , "LuaQ_420268_Step3" , 0 )
	SetRoleCamp( OwnerID() , "NPC" )
	SetFlag( TargetID() , 540263 , 1 ) --要設定給全隊
	return false
end
----------------------------------------------------------------------------------------------------------------------
function LuaQ_420268_Step3()
	local Adery = LuaFunc_SearchNPCbyOrgID( OwnerID() , 110332 , 200 )
	Local WindSpirit = CreateObjByFlag( 110360 , 580042 , 5 , 1)
	local Room = ReadRoleValue( OwnerID() , EM_RoleValue_RoomID )
	AddToPartition( WidSpirit , Room )

	Say( OwnerID() , GetString("SAY_110147_14") ) --/*真糟糕！竟然沒注意時間已經到了，讓風之靈逃了出來……
	sleep(20)
	Say( OwnerID() , GetString("SAY_110147_15") ) --/*算了，與你們的恩怨下次再解決！
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_BUFF_INSTANT )
	CastSpell( OwnerID(), OwnerID(), 490102 )
	sleep( 30 )
	Hide( OwnerID() )
	sleep( 30 )
	PlayMotion( Adery , ruFUSION_ACTORSTATE_SLEEP_END )
	sleep( 30 )
	SetPlot( Adery , "touch" , "" , 0 )
end
----------------------------------------------------------------------------------------------------------------------