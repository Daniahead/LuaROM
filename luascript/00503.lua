function LuaS_110755_0()
	if ReadRoleValue( OwnerID() , EM_RoleValue_LV ) == 10 and CheckFlag( OwnerID() ,540820 ) ~= 1 then
		local JOB = {[1] = GetString("SYS_CLASSNAME_WARRIOR") ,[2] = GetString("SYS_CLASSNAME_RANGER"),[3] = GetString("SYS_CLASSNAME_THIEF"),
				[4] = GetString("SYS_CLASSNAME_MAGE"), [5] = GetString("SYS_CLASSNAME_AUGUR"), [6] = GetString("SYS_CLASSNAME_KNIGHT")}
		local NAME = {[1] = GetObjNameByGUID(110004),[2] = GetObjNameByGUID(110008),[3] = GetObjNameByGUID(110307),
				[4] = GetObjNameByGUID(110309),[5] = GetObjNameByGUID(110312),[6] = GetObjNameByGUID(110318)}
		local X = ReadRoleValue( OwnerID() , EM_RoleValue_VOC )
--		SetSpeakDetail( OwnerID(), GetString("ST_110755_0")..JOB[X]..GetString("ST_110755_1")..NAME[X]..GetString("ST_110755_2"))
		SetSpeakDetail( OwnerID(), GetString("ST_110755_0"))
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_13"), "LuaS_110755_11", 0 ) --�ڷQ�ǰe��Z��R����¾�~�j�U
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_12"), "LuaS_110755_12", 0 ) 
		
	else
		LoadQuestOption( OwnerID() )
	
--		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_5"), "LuaS_110755_5", 0 ) 
--		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_1"), "LuaS_110755_1", 0 ) 
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_6"), "LuaS_110755_6", 0 ) --�ڷQ�ǰe��Z��R������F��
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_7"), "LuaS_110755_7", 0 ) --�ڷQ�ǰe��Z��R���������s����
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_8"), "LuaS_110755_8", 0 ) --�ڷQ�ǰe��Z��R�������U�F��
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_9"), "LuaS_110755_9", 0 ) --�ڷQ�ǰe��Z��R�������U���
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_11"), "LuaS_110755_11", 0 ) --�ڷQ�ǰe��Z��R����¾�~�j�U
		AddSpeakOption( OwnerID(), TargetID( ),GetString("SC_111339_12"), "LuaS_111339_12", 0 ) --�ڷQ�ǰe���̤����j�U
	end
	if CheckFlag( OwnerID()  , 540001 ) == false then
		SetFlag( OwnerID()  , 540001 , 1 )
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110755_1()

	SetSpeakDetail( OwnerID(), GetString("ST_110561_1"));
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACKTALK") , "LuaS_110755_0", 0 ); 	--�ڷQ�^���誺���

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110755_5()

	CloseSpeak( OwnerID() );	--������ܵ���

	local SHP = SaveHomePoint( OwnerID() );
	if (SHP == true) then
		CastSpell( OwnerID() , OwnerID() , 491008 )
		ScriptMessage( OwnerID(), OwnerID(), 2, GetString("ST_TRANSFER_9")  , C_SYSTEM )	--�e�������T���G�z�N�^�{�a�I�n�O�b�Z��R���������X�f�I
		ScriptMessage( OwnerID(), OwnerID(), 0, GetString("ST_TRANSFER_9") , 0 )	--�z�N�^�{�a�I�n�O�b�Z��R���������X�f�I
	else
		ScriptMessage( OwnerID(), OwnerID(), 2, GetString("ST_TRANSFER_FAIL")  , C_SYSTEM )	--�e�������T���G�^�{�a�I�n�O���ѡI
		ScriptMessage( OwnerID(), OwnerID(), 0, GetString("ST_TRANSFER_FAIL") , 0 )	--�^�{�a�I�n�O���ѡI
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110755_6()

	CloseSpeak( OwnerID() );	--������ܵ���

	CastSpell( OwnerID() , OwnerID() , 491008 )
--	sleep( 5 )
	ChangeZone( OwnerID() , 2 , 0, 6372, 61, -3106, 50)	--�Z��R������F��

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110755_7()

	CloseSpeak( OwnerID() );	--������ܵ���

	CastSpell( OwnerID() , OwnerID() , 491008 )
--	sleep( 5 )
	ChangeZone( OwnerID() , 2 , 0,4745, 115, -1968, 51)	--�Z��R���������s����

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110755_8()

	CloseSpeak( OwnerID() );	--������ܵ���

	CastSpell( OwnerID() , OwnerID() , 491008 )
--	sleep( 5 )
	ChangeZone( OwnerID() , 2 , 0, 4472, 52, -35, 54)	--�Z��R�������U�F��

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110755_9()

	CloseSpeak( OwnerID() );	--������ܵ���

	CastSpell( OwnerID() , OwnerID() , 491008 )
--	sleep( 5 )
	ChangeZone( OwnerID() , 2 , 0, 2908, 56, -798, 51)	--�Z��R�������U���

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110755_10()

	CloseSpeak( OwnerID() );	--������ܵ���

	CastSpell( OwnerID() , OwnerID() , 491008 )
--	sleep( 5 )
	ChangeZone( OwnerID() , 2 , 0,2758,55,956,50)	--�Z��R���������X�f

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110755_12()

	local JOB = {[1] = GetString("SYS_CLASSNAME_WARRIOR") ,[2] = GetString("SYS_CLASSNAME_RANGER"),[3] = GetString("SYS_CLASSNAME_THIEF"),
			[4] = GetString("SYS_CLASSNAME_MAGE"), [5] = GetString("SYS_CLASSNAME_AUGUR"), [6] = GetString("SYS_CLASSNAME_KNIGHT")}
	local NAME = {[1] = GetObjNameByGUID(110004),[2] = GetObjNameByGUID(110008),[3] = GetObjNameByGUID(110307),
			[4] = GetObjNameByGUID(110309),[5] = GetObjNameByGUID(110312),[6] = GetObjNameByGUID(110318)}
	local X = ReadRoleValue( OwnerID() , EM_RoleValue_VOC )
	SetSpeakDetail( OwnerID(), GetString("ST_110755_3")..JOB[X]..GetString("ST_110755_1")..NAME[X]..GetString("ST_110755_4"))
	
	AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_6"), "LuaS_110755_6", 0 ) --�ڷQ�ǰe��Z��R������F��
	AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_7"), "LuaS_110755_7", 0 ) --�ڷQ�ǰe��Z��R���������s����
	AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_8"), "LuaS_110755_8", 0 ) --�ڷQ�ǰe��Z��R�������U�F��
	AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_9"), "LuaS_110755_9", 0 ) --�ڷQ�ǰe��Z��R�������U���
	AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_11"), "LuaS_110728_11", 0 ) --�ڷQ�ǰe��Z��R����¾�~�j�U

end
--------------------------------------------------------------------------------------------------------------------------