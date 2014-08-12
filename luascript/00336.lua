function LuaI_110341()
	local Wingman = {}
	for i = 0 , 3 , 1 do
		Wingman[i] = CreateObjByFlag( 100417, 580073 , i , 1 );
		SetRoleCamp( Wingman[i] , "Visitor" )
		MoveToFlagEnabled( Wingman[i] ,false )
		AddToPartition( Wingman[i] , 0 )
		sleep( 5 )
	end
end

function LuaS_110341_0()
	SetSpeakDetail( OwnerID(), GetString("ST_110341_0")   );
	--/*冒險者，我們正在巡邏，你們這樣會干擾我工作的。
	if CountBodyItem( OwnerID() , 200933 ) > 0 and CountBodyItem(OwnerID(),200934) == 0 then
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110341_1") , "LuaS_110341_1", 0 ); --/*給他看克雷斯的命令。
	end
end

function LuaS_110341_1()
	CloseSpeak( OwnerID() ) --關閉對話劇情
	DisableQuest( TargetID() , true )
	BeginPlot(TargetID(),"LuaQ_420348_StepA", 0 )
end

function LuaS_110341_EXIT()
	CloseSpeak( OwnerID() ) --關閉對話劇情
end

function LuaQ_420348_StepA()
	MoveToFlagEnabled( OwnerID() , false )
	if ReadRoleValue( OwnerID() , EM_RoleValue_IsNPC ) == 1 then
		WriteRoleValue( OwnerID() ,EM_RoleValue_Money , 0 )
	end
	local Wingman = LuaFunc_SearchNPCbyOrgID( OwnerID() , 100417 , 150 , 1 )
	AdjustFaceDir( OwnerID(),TargetID() , 0 ) 
	Say( OwnerID() , GetString("SAY_110341_0")) --/*首領下達要捉我的命令？
	sleep( 10 )
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_CRY )
	Say( OwnerID() , GetString("SAY_110341_1")) --/*怎麼會這樣……我這些年來那麼忠於騎士團，並努力的為騎士團作事，沒想到現在竟然得到這樣的處置……
	sleep( 30 )
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_ANGRY)
	Say( OwnerID() , GetString("SAY_110341_2")) --/*那我這麼辛苦的潛伏，不就一點意義也沒有了！
	sleep( 30 )
	local i = 0
	while 1 do
		if Wingman[i] == -1 then
			break
		end
		SetRoleCamp( WingMan[i] , "Monster" )
		Hide( WingMan[i])
		Show( WingMan[i] , 0 )
		SetAttack( WingMan[i], TargetID() )
		i = i + 1
	end
	local Class = LuaFunc_CreateObjByObj( 100416, OwnerID() )
	WriteRoleValue( Class, EM_RoleValue_PID,OwnerID() )
	Hide( OwnerID() )
	SetAttack( Class,TargetID() )
	MoveToFlagEnabled( Class, false )
	SetPlot( Class, "dead" , "LuaQ_420348_StepB" , 40 )
	while 1 do
		if ReadRoleValue( Class, EM_RoleValue_AttackTargetID ) == 0 then
			if ReadRoleValue( Class, EM_RoleValue_Money ) == 0 then
				DelObj( Class )
				Show( OwnerID() , 0 )
				DisableQuest( OwnerID() , false )
				i = 0
				while 1 do
					if Wingman[i] == -1 then
						break
					end
					if CheckID( Wingman[i] ) == false then
						Wingman[i] = CreateObjByFlag( 100417, 580073 , i , 1 );
						AddToPartition( Wingman[i] , 0 )
						MoveToFlagEnabled( Wingman[i] ,false )
					end
					SetRoleCamp( WingMan[i] , "NPC" )
					Hide( WingMan[i])
					Show( WingMan[i] , 0 )
					SetPosByFlag(WingMan[i], 580073 , i )
					AdjustFaceDir( WingMan[i] ,OwnerID(), 0 ) 
					i = i + 1
				end
				MoveToFlagEnabled( OwnerID() , true )
			end
			break
		end
		sleep( 30 )	
	end
end

function LuaQ_420348_StepB()
	if ReadRoleValue( OwnerID() , EM_RoleValue_IsNPC ) == 1 then
		WriteRoleValue( OwnerID() ,EM_RoleValue_Money , TargetID() )
	end
	local Wingman = LuaFunc_SearchNPCbyOrgID( OwnerID() , 100417 , 150 , 1 )
	local i = 0
	while 1 do
		if Wingman[i] == -1 then
			break
		end
		SetRoleCamp( WingMan[i] , "NPC" )
		Hide( WingMan[i])
		Show( WingMan[i] , 0 )
		PlayMotion( WingMan[i] ,ruFUSION_ACTORSTATE_CROUCH_BEGIN)
		i = i + 1
	end
	SetRoleCamp( OwnerID() , "NPC" )
	Hide( OwnerID() )
	Show( OwnerID() , 0 )
	BeginPlot( OwnerID() , "LuaQ_420348_StepC" , 0 )
	return false
end

function LuaQ_420348_StepC()
	SetPlot( OwnerID() , "dead" , "LuaQ_420348_Redead" , 40 )
	Local Player = 	ReadRoleValue( OwnerID() ,EM_RoleValue_Money )
	local Wingman = LuaFunc_SearchNPCbyOrgID( OwnerID() , 100417, 150 , 1 )
	local Class = ReadRoleValue( OwnerID() , EM_RoleValue_PID )
	local Killer = {}
	local Role = Role:new( OwnerID() )
	local X 
	local Y
	PlayMotion( OwnerID(), ruFUSION_ACTORSTATE_CROUCH_BEGIN)
	Say( OwnerID() , GetString("SAY_110341_3")) --/*可惡！沒想到敗在這裡……	
	sleep( 30 )
	local Party = LuaFunc_PartyData(Player)
	for i = 1 , Party[0] , 1 do
		if CheckAcceptQuest( Party[i] , 420348) == true and CountBodyItem( Party[i] , 200934 ) == 0 then
			GiveBodyItem( Party[i] , 200934 , 1 )
		end 
	end
	Say( OwnerID() , GetString("SAY_110341_4")) --/*等等！你不可以拿走那個徽章！那個徽章是………
	PlayMotion( OwnerID(), ruFUSION_ACTORSTATE_CROUCH_END)
	sleep( 5 )
	Castspell( OwnerID() , OwnerID() ,491034)
	sleep( 30 )
	local i = 0
	while 1 do
		if Wingman[i] == -1 then
			break
		end
		Castspell( Wingman[i] , Wingman[i] , 491034)
		PlayMotion( Wingman[i] , ruFUSION_ACTORSTATE_DYING )
		DelObj( Wingman[i] )
		i = i + 1
	end
	Say( OwnerID() , GetString("SAY_110341_5")) --/*你...你們...
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_DYING )
	sleep( 30 )
	for i = 0 , 3 , 1 do
		if i == 0 then
			X = Role:X()+50
			Z = Role:Z()
		elseif i == 1 then
			X = Role:X()-50
			Z = Role:Z()
		elseif i == 2 then
			X = Role:X()
			Z = Role:Z()+50
		else
			X = Role:X()
			Z = Role:Z()-50
		end
		Killer[i] = CreateObj( 100418 , X , Role:Y() , Z , 0 , 1)
		BeginPlot( Killer[i] ,"LuaQ_420348_Sui" , 0 )
		AddToPartition( Killer[i] , 0 )
		SetAttack( Killer[i] , Player )
	end
	BeginPlot( Class, "LuaQ_420348_Show" , 0 )	
--	Say( OwnerID() , Class)
	sleep( 50 )
	DelObj( OwnerID()  )
end

function LuaQ_420348_Sui()
	LuaFunc_Obj_Suicide(30)
end

function LuaQ_420348_Redead()
	return true
end

function LuaQ_420348_Show()
	sleep( 600 )
	Show( OwnerID() , 0 )
	DisableQuest( OwnerID() , false )
	MoveToFlagEnabled( OwnerID() , true )
	BeginPlot( OwnerID() , "LuaI_110341" , 0 )
end