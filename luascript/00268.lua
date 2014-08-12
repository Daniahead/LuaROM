function LuaI_BossDoor_Zone2A()
	WriteRoleValue( OwnerID() , EM_RoleValue_PID , 0 )
	SetPlot( OwnerID() , "Touch" , "LuaI_BossDoor_Zone2A_0",40)	
end

function LuaI_100_BOSS1() 
	SetPlot( OwnerID() , "dead" , "LuaI_100_BOSS1_Dead",40)	
end

function LuaI_100_BOSS1_Dead() 
	GiveBodyItem( TargetID() ,200666 , 1 )
	return true
end

function LuaI_100_BOSS2() 
	SetPlot( OwnerID() , "dead" , "LuaI_100_BOSS2_Dead",40)	
end

function LuaI_100_BOSS2_Dead() 
	GiveBodyItem(TargetID() ,200667 , 1 )
	return true
end

function LuaI_100_BOSS3() 
	SetPlot( OwnerID() , "dead" , "LuaI_100_BOSS3_Dead",40)	
end

function LuaI_100_BOSS3_Dead() 
	GiveBodyItem( TargetID() ,200668 , 1 )
	return true
end
--------------------------------------------------------------------------------------------------------------------
function LuaI_BossDoor_Zone2A_0()

	if CountBodyItem( OwnerID() , 200666 ) > 0 then --�ˬd�_��
		local val = ReadRoleValue( TargetID() , EM_RoleValue_PID );
		local val2 = val - math.floor( val / 10 )*10;
		if( val2 == 0 )then
			DelBodyItem( OwnerID() , 200666 , 1 )
			WriteRoleValue( TargetID() , EM_RoleValue_PID , (val + 1) );
			ScriptMessage( OwnerID(), 0, 0, GetString("SAY_ZONE2A_DOOR_0"), C_YELLOW ); --/*�ʤֺ���]�k���O�C			
		end
	end
	if CountBodyItem( OwnerID() , 200667 ) > 0 then --�ˬd�_��
		local val = ReadRoleValue( TargetID() , EM_RoleValue_PID );
		local val2 = val - math.floor( val / 100 )*100;
		if( val2 < 10    )then
			DelBodyItem( OwnerID() , 200667 , 1 )
			WriteRoleValue( TargetID() , EM_RoleValue_PID , (val +10) )
			ScriptMessage( OwnerID(), 0, 0, GetString("SAY_ZONE2A_DOOR_1"), C_YELLOW ); --/*�ʤ֬����]�k���O�C
		end

	end
	if CountBodyItem( OwnerID() , 200668 ) > 0 then --�ˬd�_��
		local val =  ReadRoleValue( TargetID() , EM_RoleValue_PID ) 
		if ReadRoleValue( TargetID() , EM_RoleValue_PID ) < 100 then
			DelBodyItem( OwnerID() , 200668 , 1 )
			WriteRoleValue( TargetID() , EM_RoleValue_PID , (val + 100) )
			ScriptMessage( OwnerID(), 0, 0, GetString("SAY_ZONE2A_DOOR_2"), C_YELLOW ); --/*�ʤֶ����]�k���O�C
		end
	end

	if ReadRoleValue( TargetID() , EM_RoleValue_PID ) == 111 then
		ScriptMessage( OwnerID(), 0, 1, GetString("SAY_ZONE2A_DOOR_3"), C_YELLOW ); --/*�A�N�T���]�k���O����������m�A���w�w�a���}�F�C
		BeginPlot( TargetID() , "LuaI_BossDoor_Zone2A_1",0)
		SetPlot( TargetID() , "Touch" , "",40 )
	else
		ScriptMessage( OwnerID(), 0, 0, GetString("SAY_ZONE2A_DOOR_4"), 0) --/*�����q�T�ӹ��Ш��W���o�T�����O�A�o�����W���]�k�~��Ѱ��C
		return
	end

end
--------------------------------------------------------------------------------------------------------------------
function LuaI_BossDoor_Zone2A_1()

	local Player = LuaFunc_PartyData( TargetID )
	Local V_Ankaria = LuaFunc_SearchNPCbyOrgID( OwnerID() , 100074 , 500 )
	local Count = 0
	for i = 1 , Player[0] , 1 do
		if CheckAcceptQuest( Player[i] , 420552 ) == true then
			Count = 1
		end
	end 
	if Count ~= 0 then
		BeginPlot( V_Ankaria , "LuaI_BossPlay" , 0 )
	end

	PlayMotionEX( OwnerID(), ruFUSION_ACTORSTATE_ACTIVATE_BEGIN,ruFUSION_ACTORSTATE_ACTIVATE_LOOP )
	sleep( 40 )
end
--------------------------------------------------------------------------------------------------------------------
function LuaI_BossPlay()

	local Room = ReadRoleValue( OwnerID() ,EM_RoleValue_RoomID )			
	local Ser1 = CreateObjByFlag( 100066,580022,3,1)
	local Ser2 = CreateObjByFlag( 100066,580022,4,1)
	Show( Ser1, Room)
	Show( Ser2, Room)

	SetRoleCamp( OwnerID() , "NPC" )
	SetRoleCamp( Ser1 , "NPC" )
	SetRoleCamp( Ser2 , "NPC" )

	Say( OwnerID(),GetString("SAY_100074_0")) --/*�A�̥i�H���������}�o�ǩG���A�ڴN�����U�A�̧�h�C
	sleep(10)
	Say( Ser1,GetString("SAY_100069_0")) --/*�g�ѯ��p���y�������ܷN�A�b��ӭp�e�󧹵����e�A�ڭ̤��Ʊ榳�Ӥj���ʧ@�ӥ�����D�C
	sleep(10)
	Say( OwnerID(),GetString("SAY_100074_1")) --/*��H�ڬݧA�̥u�O�Q�n�o�ӵ��O�a�I���쩳�A�̥u�O�b�Q�ΧڡI
	sleep(10)
	Say( Ser1,GetString("SAY_100069_1")) --/*���n�ӵ۫�A�ڭ̪��p�e���M�|�ϵ�ɻP�{��X�Ӭ��@�A��ɭԧA�۵M����o���}�o�̪��O�q�C						
	sleep(10)
	Say( OwnerID(),GetString("SAY_100074_2")) --/*�O�H���ۤv�֦��M�ڬۦP���a��A�ڲ{�b���M�ʥF�O�q�A���n�����A�̤����ө��|�C
	sleep(10)
	Say( Ser1,GetString("SAY_100069_2")) --/*�դU�A���o�Ǳq���N�b�o�̪��J�I�̡A���G�N��A���O�q���I...��...�s���n���������D�a�H
	sleep(20)

	Say( OwnerID(),GetString("SAY_100074_4")) --/*�X�ٯ௺���ɭԯ��a�I���A�̬ݨ�L�̫�򦺪��A�ڬ۫H�A�̷|�Ǩ�P�ڥ�A�����Ө�ƪ�§���C
	Say( Ser1,GetString("YELL_100069")) --/*�դU�����q�ܭȱo�Y��A�����F�O�I�_���A�ڭ̤]�|�[�J�԰��A�лդU���̡C
	SetPlot( OwnerID() , "Dead" , "LuaI_BossDoor_Zone2A_2",40)

	SetRoleCamp( OwnerID() , "Monster" )
	SetRoleCamp( Ser1 , "Monster" )
	SetRoleCamp( Ser2 , "Monster" )				

end
--------------------------------------------------------------------------------------------------------------------
function LuaI_BossDoor_Zone2A_2()

	Say( V_Ankaria,GetString("SAY_100074_3")) --/*�i�c......�p�G������o�ӸT�D�ڪ��cŢ�A�گu�����O�q......
	return true
end