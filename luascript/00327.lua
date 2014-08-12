function LuaI_110331()
	SetPlot(OwnerID(),"dead","luaI_110331_Dead",40)
end

function LuaI_110331_Dead()
	SetRoleCamp( OwnerID() , "NPC" )
	If CountBodyItem( TargetID() ,200922) == 0 and CheckCompleteQuest(TargetID(),420340)== false then
		GiveBodyItem(TargetID(),200922,1)
	end
	BeginPlot(OwnerID(),"LuaI_110331_Feel",0)
	return false
end

function LuaI_110331_Feel()
	MoveToFlagEnabled( OwnerID() , false )
	WriteRoleValue( OwnerID() , EM_RoleValue_IsWalk , 0 )
	Func_rand_walker(OwnerID(),100,50)
	Hide( OwnerID() )
	sleep( 300 )
	SetRoleCamp( OwnerID() , "Monster" )
	Show(OwnerID(),0)
	MoveToFlagEnabled( OwnerID() , true )
end

function LuaI_200928_Use()
	local Target = ReadRoleValue( TargetID() , EM_RoleValue_OrgID)
	if CheckAcceptQuest( OwnerID() , 420342 ) == false or CheckCompleteQuest( OwnerID() , 420343 ) == true then
		ScriptMessage( OwnerID(), OwnerID(), 0, GetString("EM_200928_0"), 0 ); --/*���Ȥ��ŦX�C		
		return
	end
	if CheckID( TargetID() ) == false or TargetID() == OwnerID()  then
		ScriptMessage( OwnerID(), OwnerID(), 0, GetString("EM_200928_1"), 0 ); --/*�A�S���ؼСC
	else
		if Target ~= 100430 then --�N�ΡA��ɭԭn�m���^�T����ϴ���ID
			ScriptMessage( OwnerID(), OwnerID(), 0, GetString("EM_200928_2"), 0 ); --/*�ؼп��~�C
		else
			BeginPlot( TargetID() ,"LuaI_110331_Change", 0 )
		end
	end
end

function LuaI_110331_Change()
	CastSpell( TargetID() , OwnerID() , 490212 )
	SetRoleCamp(OwnerID(),"NPC")
	PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_HURT_CRITICAL )
	sleep( 30 )
	local Tartos = LuaFunc_CreateObjByObj( 110331 , OwnerID() )
	Hide( OwnerID() )
	BeginPlot( Tartos , "LuaI_110331_Reset" , 0)
end

function LuaI_110331_Reset()
	sleep( 300 )
	DisableQuest( OwnerID() , true )
	Func_rand_walker(OwnerID(),100,50)
	Hide( OwnerID() )
	sleep( 300 )
	SetRoleCamp( TargetID() , "Monster" )
	Show( TargetID() , 0 )
	DelObj( OwnerID() )
end

function LuaI_200922() --��ϴ�������
	ClearBorder( OwnerID() );
	AddBorderPage( OwnerID(), GetQuestDetail( 420340, 1  ) );

	ShowBorder( OwnerID(), 420340, GetObjNameByGUID(200922), "ScriptBorder_Texture_Paper" );
end

function LuaI_200923() --�d�����M��
	ClearBorder( OwnerID() );
	AddBorderPage( OwnerID(), GetString("EM_201107") );
	--/*�@�ڳªL���K�A�i�H�b�˲��l�������o�ؾ��C
	--/*�������d���ǯ����A���O����b��粬r�n���������C
	--/*�@�~��Ĭ�Ǥ����A�b��Ĭ�Ǵ򩳤U�����~�f���|��X�o�ؤ��C

	ShowBorder( OwnerID(), 0, GetObjNameByGUID(200923), "ScriptBorder_Texture_Paper" );
end

function LuaI_201107_CHECK() 
	if CheckAcceptQuest( OwnerID() , 420341 ) == true and CountBodyItem( OwnerID() , 200926 ) == 0 then
		local Water = LuaFunc_SearchNPCbyOrgID( OwnerID(), 110855 , 500 , 1)
		if Water[0] == -1 then
			ScriptMessage( OwnerID(), OwnerID(), 0, GetString("EM_201107_1"), 0 ); 
			return false
		else
			return true
		end
	else
			ScriptMessage( OwnerID(), OwnerID(), 0, GetString("EM_201107_2"), 0 ); 
		return false
	end
end

function LuaI_201107_USE() 

	GiveBodyItem( OwnerID() , 200926 , 1 )
end