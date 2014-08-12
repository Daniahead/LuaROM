-----------------------------一直坐著--------------------------------------
Function LuaP_Sitting()
	PlayMotionEX( OwnerID(), ruFUSION_ACTORSTATE_SIT_BEGIN,ruFUSION_ACTORSTATE_SIT_LOOP)
	sleep(30)
end
---------------------------------------------------------------------------
-----------------------------一直躺著--------------------------------------
Function LuaP_Sleeping()
	PlayMotionEX( OwnerID(), ruFUSION_ACTORSTATE_SLEEP_BEGIN,ruFUSION_ACTORSTATE_SLEEP_LOOP)
	sleep(30)
end
---------------------------------------------------------------------------
------------------------物件動作一直撥放------------------------------------
Function LuaP_Activating()
	PlayMotionEX( OwnerID(), ruFUSION_ACTORSTATE_ACTIVATE_BEGIN,ruFUSION_ACTORSTATE_ACTIVATE_LOOP )
	sleep(40)
end
---------------------------------------------------------------------------------------
-----------------------------屍體狀態--------------------------------------
Function LuaP_Dead()
	PlayMotionEX( OwnerID(), ruFUSION_ACTORSTATE_DYING,ruFUSION_ACTORSTATE_DEAD)
	sleep(30)
end
---------------------------------------------------------------------------
-----------------------------一直工作--------------------------------------
Function LuaP_Crafting()
	PlayMotionEX( OwnerID(), ruFUSION_ACTORSTATE_CRAFTING_BEGIN,ruFUSION_ACTORSTATE_CRAFTING_LOOP)
	sleep(30)
end
---------------------------------------------------------------------------
-----------------------------一直蹲著--------------------------------------
Function LuaP_Crouch()
	PlayMotionEX( OwnerID(), ruFUSION_ACTORSTATE_CROUCH_BEGIN,ruFUSION_ACTORSTATE_CROUCH_LOOP)
	sleep(30)
end
---------------------------------------------------------------------------
-----------------------------一直挖礦--------------------------------------
Function LuaP_Mining()
	while 1 do
	sleep( 30 )
	PlayMotion( OwnerID(),ruFUSION_ACTORSTATE_MINING_BEGIN )
	sleep(50)
	PlayMotion( OwnerID(),ruFUSION_ACTORSTATE_MINING_END )
	sleep(50)
	end	
end
---------------------------------------------------------------------------
-----------------------------站著昏迷--------------------------------------
Function LuaP_Slumber()
	PlayMotion( OwnerID(),ruFUSION_ACTORSTATE_SLUMBER_BEGIN )
	sleep(10)
end
---------------------------------------------------------------------------
-----------------------------站著暈眩--------------------------------------
Function LuaP_Dazed() 
	PlayMotion( OwnerID(),ruFUSION_ACTORSTATE_Dazed_BEGIN )
	sleep(10)
end
---------------------------------------------------------------------------
-----------------------------一直施法--------------------------------------
Function LuaP_Casting() 
	--PlayMotion( OwnerID(),ruFUSION_ACTORSTATE_CAST_BEGIN )
	--sleep(10)
	while 1 do
		PlayMotionEX( OwnerID(),ruFUSION_ACTORSTATE_CHANNEL_BEGIN, ruFUSION_ACTORSTATE_CHANNEL_LOOP )
		sleep(200)
	end
end
---------------------------------------------------------------------------
-----------------------------單手武器戰鬥----------------------------------
Function LuaP_1H_BATTLE()
	MoveToFlagEnabled( OwnerID(), false );
	
	sleep(30)
	Local Battle={}
	Local Motion
	Battle[0] = ruFUSION_ACTORSTATE_PARRY_1H -- 1/5 機率做出格檔動作
	Battle[1] = ruFUSION_ACTORSTATE_ATTACK_1H
	Battle[2] = ruFUSION_ACTORSTATE_ATTACK_1H
	Battle[3] = ruFUSION_ACTORSTATE_ATTACK_1H
	Battle[4] = ruFUSION_ACTORSTATE_ATTACK_1H

	for n = 1 , 2  do
		Local i = rand(4)
		Motion = Battle[i]
		PlayMotion( OwnerID(),Motion )
		sleep(30)
	end

	MoveToFlagEnabled( OwnerID(), True );
end
---------------------------------------------------------------------------
-----------------------------普通交談------------------------------------
Function LuaP_Speak_A()
	MoveToFlagEnabled( OwnerID(), false );
	sleep( 30 )
	Local Speak={}
	Local Motion
	Speak[0] = ruFUSION_ACTORSTATE_EMOTE_HEAD_NOD -- 1/5 機率做出點頭動作
	Speak[1] = ruFUSION_ACTORSTATE_EMOTE_SPEAK
	Speak[2] = ruFUSION_ACTORSTATE_EMOTE_SPEAK
	Speak[3] = ruFUSION_ACTORSTATE_EMOTE_SPEAK
	Speak[4] = ruFUSION_ACTORSTATE_EMOTE_SPEAK

	for n = 1 , 2  do 
		Local i = rand(4)
		Motion = Speak[i]
		PlayMotion( OwnerID(),Motion )
		sleep(30)
	end

	MoveToFlagEnabled( OwnerID(), true );
end
---------------------------------------------------------------------------
-----------------------------工作動作------------------------------------
Function LuaP_Craft_A()
	MoveToFlagEnabled( OwnerID(), false );
	sleep(30)
	PlayMotion( OwnerID(),ruFUSION_ACTORSTATE_CRAFTING_BEGIN )
	sleep( 100 )
	PlayMotion( OwnerID(),ruFUSION_ACTORSTATE_CRAFTING_END)
	sleep( 50 )
	MoveToFlagEnabled( OwnerID(), true );
end
---------------------------------------------------------------------------
-----------------------------挖礦動作------------------------------------
Function LuaP_Mining_A()
	MoveToFlagEnabled( OwnerID(), false );
	sleep( 30 )
	SetRoleEquip( OwnerID(), EM_EQWearPos_Manufactory, 210327, 1 );
	PlayMotion( OwnerID(),ruFUSION_ACTORSTATE_MINING_BEGIN )
	sleep( 100 )
	PlayMotion( OwnerID(),ruFUSION_ACTORSTATE_MINING_END)
	sleep(30)
	MoveToFlagEnabled( OwnerID(), true );
end
---------------------------------------------------------------------------
-----------------------------坐下休息動作------------------------------------
Function LuaP_SitRest_A()
	MoveToFlagEnabled( OwnerID(), false );
	sleep( 30 )
	PlayMotion( OwnerID(),ruFUSION_ACTORSTATE_SIT_BEGIN )
	sleep( 100 )
	PlayMotion( OwnerID(),ruFUSION_ACTORSTATE_SIT_END)
	sleep( 30 )
	MoveToFlagEnabled( OwnerID(), true );
end
---------------------------------------------------------------------------
-----------------------------躺下休息動作------------------------------------
Function LuaP_SleepRest_A()
	MoveToFlagEnabled( OwnerID(), false );
	PlayMotion( OwnerID(),ruFUSION_ACTORSTATE_SLEEP_BEGIN )
	sleep( 100 )
	PlayMotion( OwnerID(),ruFUSION_ACTORSTATE_SLEEP_END)
	sleep( 30 )
	MoveToFlagEnabled( OwnerID(), true );
end
---------------------------------------------------------------------------
-----------------------------一直講話(女用)------------------------------------
Function LuaP_Speak_B()

	sleep( 30 )
	Local Speak={}
	Local Motion
	Speak[0] = ruFUSION_ACTORSTATE_EMOTE_ANGRY
	Speak[1] = ruFUSION_ACTORSTATE_EMOTE_LAUGH
	Speak[2] = ruFUSION_ACTORSTATE_EMOTE_HEAD_SHACK
	for i = 3 , 10 , 1 do
		Speak[i] = ruFUSION_ACTORSTATE_EMOTE_SPEAK
		sleep(1)
	end

	While 1  do 
		Local j = rand(10)
		Motion = Speak[j]
		PlayMotion( OwnerID(),Motion )
		sleep(50+Rand(20))
	end
end
---------------------------------------------------------------------------
-----------------------------一直講話(男用)------------------------------------
Function LuaP_Speak_C()
	
	sleep( 30 )
	Local Speak={}
	Local Motion
	Speak[0] = ruFUSION_ACTORSTATE_EMOTE_HEAD_NOD
	Speak[1] = ruFUSION_ACTORSTATE_EMOTE_APPLAUSE
	Speak[2] = ruFUSION_ACTORSTATE_EMOTE_HEAD_SHACK
	for i = 3 , 10 , 1 do
		Speak[i] = ruFUSION_ACTORSTATE_EMOTE_SPEAK
		sleep(1)
	end

	While 1  do 
		Local j = rand(10)
		Motion = Speak[j]
		PlayMotion( OwnerID(),Motion )
		sleep(50+Rand(20))
	end
end
---------------------------------------------------------------------------
-----------------------------裝飾NPC動作------------------------------------
Function LuaP_NPC_NOMAL()

--	While 1  do 

		PlayMotion( OwnerID(),ruFUSION_ACTORSTATE_CROUCH)
		sleep(50+Rand(20))
--	end
end
---------------------------------------------------------------------------
