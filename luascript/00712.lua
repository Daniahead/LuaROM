function LuaS_421019()
	LoadQuestOption( OwnerID() )	-- ���J���ȼҪO
	if CheckAcceptQuest( OwnerID() , 421019 ) == true and CountBodyItem( OwnerID() , 202187 ) < 1 then
		AddSpeakOption( OwnerID(), TargetID(), GetString("SC_421019_0") ,      "LuaS_421019_Matsuri",     0 )	-- �ǳƧ����A�i�����
	end
end

function LuaS_421019_Matsuri()
	CloseSpeak( OwnerID() )	-- ������ܵ���
	BeginPlot( TargetID() , "LuaS_421019_MatsuriStart" , 0 )
end

function LuaS_421019_MatsuriStart()

	local Fire1, Fire2 , Fire3 , Fire4 , Fire5 , Fire6
	local M11 , M21 , M22 , M31 , M32 , M33 , M41 , M42 , M43 , M44 , M51 , M52 , M53 , M54 , M55

	DisableQuest( OwnerID() , true )
	MoveToFlagEnabled( OwnerID() , false )

	LuaFunc_MoveToFlag( OwnerID() , 580082 , 1 , 0 )
	Sleep( 5 )
	local Fire1a = CreateMonsterByBOSSBatch( 111061 , OwnerID() , 2 , 4 )
	AddToPartition( Fire1a , 0 )
	PlayMotionEX( OwnerID() , ruFUSION_ACTORSTATE_CRAFTING_BEGIN , ruFUSION_ACTORSTATE_CRAFTING_LOOP )
	Sleep( 50 )
	Fire1 = LuaFunc_CreateObjByObj ( 111062 , Fire1a )
	DelObj( Fire1a )
	Sleep( 10 )
	PlayMotionEX( OwnerID() , ruFUSION_ACTORSTATE_CRAFTING_LOOP , ruFUSION_ACTORSTATE_CRAFTING_END )

	M11 = LuaFunc_CreateObjByObj ( 100812 , Fire1 )
	SetAttack( M11 , TargetID() )

	--say(TargetID() , GetDistance( OwnerID() , TargetID() ))

	if ReadRoleValue( TargetID() , EM_RoleValue_IsDead ) == 0 and GetDistance( OwnerID() , TargetID() ) <= 300 then
		LuaFunc_MoveToFlag( OwnerID() , 580082 , 2 , 0 )
		Sleep( 5 )
		local Fire2a = CreateMonsterByBOSSBatch( 111061 , OwnerID() , 4 , 0 )
		AddToPartition( Fire2a , 0 )
		PlayMotionEX( OwnerID() , ruFUSION_ACTORSTATE_CRAFTING_BEGIN , ruFUSION_ACTORSTATE_CRAFTING_LOOP )
		Sleep( 50 )
		Fire2 = LuaFunc_CreateObjByObj ( 111062 , Fire2a )
		DelObj( Fire2a )
		Sleep( 10 )
		PlayMotionEX( OwnerID() , ruFUSION_ACTORSTATE_CRAFTING_LOOP , ruFUSION_ACTORSTATE_CRAFTING_END )

		M21 = LuaFunc_CreateObjByObj ( 100812 , Fire2 )
		SetAttack( M21 , TargetID() )
		M22 = LuaFunc_CreateObjByObj ( 100812 , Fire2 )
		SetAttack( M22 , TargetID() )
	end

	if ReadRoleValue( TargetID() , EM_RoleValue_IsDead ) == 0 and GetDistance( OwnerID() , TargetID() ) <= 300 then
		LuaFunc_MoveToFlag( OwnerID() , 580082 , 3 , 0 )
		Sleep( 5 )
		local Fire3a = CreateMonsterByBOSSBatch( 111061 , OwnerID() , 2 , -4 )
		AddToPartition( Fire3a , 0 )
		PlayMotionEX( OwnerID() , ruFUSION_ACTORSTATE_CRAFTING_BEGIN , ruFUSION_ACTORSTATE_CRAFTING_LOOP )
		Sleep( 50 )
		Fire3 = LuaFunc_CreateObjByObj ( 111062 , Fire3a )
		DelObj( Fire3a )
		Sleep( 10 )
		PlayMotionEX( OwnerID() , ruFUSION_ACTORSTATE_CRAFTING_LOOP , ruFUSION_ACTORSTATE_CRAFTING_END )

		M31 = LuaFunc_CreateObjByObj ( 100812 , Fire3 )
		SetAttack( M31 , TargetID() )
		M32 = LuaFunc_CreateObjByObj ( 100812 , Fire3 )
		SetAttack( M32 , TargetID() )
		M33 = LuaFunc_CreateObjByObj ( 100812 , Fire3 )
		SetAttack( M33 , TargetID() )
	end

	if ReadRoleValue( TargetID() , EM_RoleValue_IsDead ) == 0 and GetDistance( OwnerID() , TargetID() ) <= 300 then
		LuaFunc_MoveToFlag( OwnerID() , 580082 , 4 , 0 )
		Sleep( 5 )
		local Fire4a = CreateMonsterByBOSSBatch( 111061 , OwnerID() , -3 , -3 )
		AddToPartition( Fire4a , 0 )
		PlayMotionEX( OwnerID() , ruFUSION_ACTORSTATE_CRAFTING_BEGIN , ruFUSION_ACTORSTATE_CRAFTING_LOOP )
		Sleep( 50 )
		Fire4 = LuaFunc_CreateObjByObj ( 111062 , Fire4a )
		DelObj( Fire4a )
		Sleep( 10 )
		PlayMotionEX( OwnerID() , ruFUSION_ACTORSTATE_CRAFTING_LOOP , ruFUSION_ACTORSTATE_CRAFTING_END )

		M41 = LuaFunc_CreateObjByObj ( 100812 , Fire4 )
		SetAttack( M41 , TargetID() )
		M42 = LuaFunc_CreateObjByObj ( 100812 , Fire4 )
		SetAttack( M42 , TargetID() )
		M43 = LuaFunc_CreateObjByObj ( 100812 , Fire4 )
		SetAttack( M43 , TargetID() )
		M44 = LuaFunc_CreateObjByObj ( 100812 , Fire4 )
		SetAttack( M44 , TargetID() )
	end

	if ReadRoleValue( TargetID() , EM_RoleValue_IsDead ) == 0 and GetDistance( OwnerID() , TargetID() ) <= 300 then
		LuaFunc_MoveToFlag( OwnerID() , 580082 , 5 , 0 )
		Sleep( 5 )
		local Fire5a = CreateMonsterByBOSSBatch( 111061 , OwnerID() , -4 , 0 )
		AddToPartition( Fire5a , 0 )
		PlayMotionEX( OwnerID() , ruFUSION_ACTORSTATE_CRAFTING_BEGIN , ruFUSION_ACTORSTATE_CRAFTING_LOOP )
		Sleep( 50 )
		Fire5 = LuaFunc_CreateObjByObj ( 111062 , Fire5a )
		DelObj( Fire5a )
		Sleep( 10 )
		PlayMotionEX( OwnerID() , ruFUSION_ACTORSTATE_CRAFTING_LOOP , ruFUSION_ACTORSTATE_CRAFTING_END )

		M51 = LuaFunc_CreateObjByObj ( 100812 , Fire5 )
		SetAttack( M51 , TargetID() )
		M52 = LuaFunc_CreateObjByObj ( 100812 , Fire5 )
		SetAttack( M52 , TargetID() )
		M53 = LuaFunc_CreateObjByObj ( 100812 , Fire5 )
		SetAttack( M53 , TargetID() )
		M54 = LuaFunc_CreateObjByObj ( 100812 , Fire5 )
		SetAttack( M54 , TargetID() )
		M55 = LuaFunc_CreateObjByObj ( 100812 , Fire5 )
		SetAttack( M55 , TargetID() )
	end

	if ReadRoleValue( TargetID() , EM_RoleValue_IsDead ) == 0 and GetDistance( OwnerID() , TargetID() ) <= 300 then
		LuaFunc_MoveToFlag( OwnerID() , 580082 , 0 , 0 )
		Sleep( 5 )
		local Fire6a = CreateMonsterByBOSSBatch( 111061 , OwnerID() , -2 , 4 )
		AddToPartition( Fire6a , 0 )
		PlayMotionEX( OwnerID() , ruFUSION_ACTORSTATE_CRAFTING_BEGIN , ruFUSION_ACTORSTATE_CRAFTING_LOOP )
		Sleep( 50 )
		Fire6 = LuaFunc_CreateObjByObj ( 111062 , Fire6a )
		DelObj( Fire6a )
		Sleep( 10 )
		PlayMotionEX( OwnerID() , ruFUSION_ACTORSTATE_CRAFTING_LOOP , ruFUSION_ACTORSTATE_CRAFTING_END )
	end

	MoveToFlagEnabled( OwnerID() , true )
	Sleep( 25 )
	AdjustDir( OwnerID() , 90 )
	LuaFunc_ResetObj( OwnerID() )

	if CheckID( Fire1 ) == true then DelObj( Fire1 ) end
	if CheckID( Fire2 ) == true then DelObj( Fire2 ) end
	if CheckID( Fire3 ) == true then DelObj( Fire3 ) end
	if CheckID( Fire4 ) == true then DelObj( Fire4 ) end
	if CheckID( Fire5 ) == true then DelObj( Fire5 ) end
	if CheckID( Fire6 ) == true then DelObj( Fire6 ) end
	if CheckID( M11 ) == true then DelObj( M11 ) end
	if CheckID( M21 ) == true then DelObj( M21 ) end
	if CheckID( M22 ) == true then DelObj( M22 ) end
	if CheckID( M31 ) == true then DelObj( M31 ) end
	if CheckID( M32 ) == true then DelObj( M32 ) end
	if CheckID( M33 ) == true then DelObj( M33 ) end
	if CheckID( M41 ) == true then DelObj( M41 ) end
	if CheckID( M42 ) == true then DelObj( M42 ) end
	if CheckID( M43 ) == true then DelObj( M43 ) end
	if CheckID( M44 ) == true then DelObj( M44 ) end
	if CheckID( M51 ) == true then DelObj( M51 ) end
	if CheckID( M52 ) == true then DelObj( M52 ) end
	if CheckID( M53 ) == true then DelObj( M53 ) end
	if CheckID( M54 ) == true then DelObj( M54 ) end
	if CheckID( M55 ) == true then DelObj( M55 ) end

	DisableQuest( OwnerID() , false )
	if ReadRoleValue( TargetID() , EM_RoleValue_IsDead ) == 0 and GetDistance( OwnerID() , TargetID() ) <= 300 then
		GiveBodyItem( TargetID() , 202187 , 1 )
	end

end
