------------------------------------------------------------------------------------------------------------------------------------------------�׷Ҥ��Ψ禡exp
function LuaFunc_HouseTrainGetEXP(average)		--/*average�������ƧY�������
	local rand = rand( 4 )+1
	local a = average*1/3
	local b = average*2/3
	local c = average*3/3
	local d = average*4/3
	if rand == 1 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_1") , 0 )	--/*�A�b�\Ū���ɭԺεۤF�A�եծ��O�F�ɶ�
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_1") , 0 )	--/*�A�b�\Ū���ɭԺεۤF�A�եծ��O�F�ɶ�
	AddEXP( OwnerID() , a );
	sleep(5)
	elseif rand == 2 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_2") , 0 )	--/*�A�^�^��Ū�F�@�M�A�����\�h�a��ݤ���
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_2") , 0)	--/*�A�^�^��Ū�F�@�M�A�����\�h�a��ݤ���
	AddEXP( OwnerID() , b );
	sleep(5)
	elseif rand == 3 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_3") , 0 )	--/*�A���V�O���A���H��í�w����
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_3") , 0 )	--/*�A���V�O���A���H��í�w����
	AddEXP( OwnerID() , c );
	sleep(5)
	elseif rand == 4 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_4") , 0 )	--/*�A���p�����鳻�AŪ�_�ѨӨƥb�\��
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_4") , 0 )	--/*�A���p�����鳻�AŪ�_�ѨӨƥb�\��
	AddEXP( OwnerID() , d );
	sleep(5)
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------�׷Ҥ��Ψ禡tp
function LuaFunc_HouseTrainGetTP(average)		--/*average�������ƧY�������
	local rand = rand( 4 )+1
	local a = average*1/3
	local b = average*2/3
	local c = average*3/3
	local d = average*4/3
	if rand == 1 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_1") , 0 )	--/*�A�b�\Ū���ɭԺεۤF�A�եծ��O�F�ɶ�
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_1") , 0 )	--/*�A�b�\Ū���ɭԺεۤF�A�եծ��O�F�ɶ�
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..a..GetString("SC_LEARNTP"), 0 )	--/*�A��o�H�ITP
	AddRoleValue( OwnerID() , EM_RoleValue_TpExp, a );
	sleep(5)
	elseif rand == 2 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_2") , 0 )	--/*�A�^�^��Ū�F�@�M�A�����\�h�a��ݤ���
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_2") , 0)	--/*�A�^�^��Ū�F�@�M�A�����\�h�a��ݤ���
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..b..GetString("SC_LEARNTP"), 0 )	--/*�A��o�H�ITP
	AddRoleValue( OwnerID() , EM_RoleValue_TpExp, b );
	sleep(5)
	elseif rand == 3 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_3") , 0 )	--/*�A���V�O���A���H��í�w����
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_3") , 0 )	--/*�A���V�O���A���H��í�w����
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..c..GetString("SC_LEARNTP"), 0 )	--/*�A��o�H�ITP
	AddRoleValue( OwnerID() , EM_RoleValue_TpExp, c );
	sleep(5)
	elseif rand == 4 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_4") , 0 )	--/*�A���p�����鳻�AŪ�_�ѨӨƥb�\��
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_4") , 0 )	--/*�A���p�����鳻�AŪ�_�ѨӨƥb�\��
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..d..GetString("SC_LEARNTP"), 0 )	--/*�A��o�H�ITP
	AddRoleValue( OwnerID() , EM_RoleValue_TpExp, d );
	sleep(5)
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------�׷Ҥ��Ψ禡�Ķ��j��
function LuaFunc_HouseTrainRandMLH(average)		--/*average�������ƧY�������
	local ran = Rand( 4 )+1
	local a = average*1/3
	local b = average*2/3
	local c = average*3/3
	local d = average*4/3
	local e = Rand( 3 )+1
	local skill = ""
	if e == 1 then
		skill = EM_SkillValueType_Mining
		name = "SYS_SKILLNAME_MINING"
	elseif e == 2 then
		skill = EM_SkillValueType_Lumbering
		name = "SYS_SKILLNAME_LUMBERING"
	elseif e == 3 then
		skill = EM_SkillValueType_Herblism
		name = "SYS_SKILLNAME_HERBLISM"
	end
	if ran == 1 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_1") , 0 )	--/*�A�b�\Ū���ɭԺεۤF�A�եծ��O�F�ɶ�
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_1") , 0 )	--/*�A�b�\Ū���ɭԺεۤF�A�եծ��O�F�ɶ�
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..GetString("SC_ALITTLE")..GetString(name)..GetString("SC_DIG"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , skill, a );
	sleep(5)
	elseif ran == 2 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_2") , 0 )	--/*�A�^�^��Ū�F�@�M�A�����\�h�a��ݤ���
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_2") , 0)	--/*�A�^�^��Ū�F�@�M�A�����\�h�a��ݤ���
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..GetString("SC_FEW")..GetString(name)..GetString("SC_DIG"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , skill, b );
	sleep(5)
	elseif ran == 3 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_3") , 0 )	--/*�A���V�O���A���H��í�w����
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_3") , 0 )	--/*�A���V�O���A���H��í�w����
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..GetString("SC_ALOT")..GetString(name)..GetString("SC_DIG"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , skill, c );
	sleep(5)
	elseif ran == 4 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_4") , 0 )	--/*�A���p�����鳻�AŪ�_�ѨӨƥb�\��
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_4") , 0 )	--/*�A���p�����鳻�AŪ�_�ѨӨƥb�\��
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..GetString("SC_MUCH")..GetString(name)..GetString("SC_DIG"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , skill, d );

	sleep(5)
	end
end