------------------------------------------------------------------------------------------------------------------------------------------------�׷Ҥ��Ψ禡��
function LuaFunc_HouseTrainHerblism(average)		--/*average�������ƧY�������
	local rand = rand( 4 )+1
	local a = average*1/3
	local b = average*2/3
	local c = average*3/3
	local d = average*4/3
	if rand == 1 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_1") , 0 )	--/*�A�b�\Ū���ɭԺεۤF�A�եծ��O�F�ɶ�
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_1") , 0 )	--/*�A�b�\Ū���ɭԺεۤF�A�եծ��O�F�ɶ�
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..a..GetString("SC_Herblism"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , EM_SkillValueType_Herblism, a );
	sleep(5)
	elseif rand == 2 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_2") , 0 )	--/*�A�^�^��Ū�F�@�M�A�����\�h�a��ݤ���
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_2") , 0)	--/*�A�^�^��Ū�F�@�M�A�����\�h�a��ݤ���
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..b..GetString("SC_Herblism"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , EM_SkillValueType_Herblism, b );
	sleep(5)
	elseif rand == 3 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_3") , 0 )	--/*�A���V�O���A���H��í�w����
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_3") , 0 )	--/*�A���V�O���A���H��í�w����
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..c..GetString("SC_Herblism"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , EM_SkillValueType_Herblism, c );
	sleep(5)
	elseif rand == 4 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_4") , 0 )	--/*�A���p�����鳻�AŪ�_�ѨӨƥb�\��
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_4") , 0 )	--/*�A���p�����鳻�AŪ�_�ѨӨƥb�\��
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..d..GetString("SC_Herblism"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , EM_SkillValueType_Herblism, d );
	sleep(5)
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------�׷Ҥ��Ψ禡��
function LuaFunc_HouseTrainLumbering(average)		--/*average�������ƧY�������
	local rand = rand( 4 )+1
	local a = average*1/3
	local b = average*2/3
	local c = average*3/3
	local d = average*4/3
	if rand == 1 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_1") , 0 )	--/*�A�b�\Ū���ɭԺεۤF�A�եծ��O�F�ɶ�
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_1") , 0 )	--/*�A�b�\Ū���ɭԺεۤF�A�եծ��O�F�ɶ�
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..a..GetString("SC_Lumbering"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , EM_SkillValueType_Lumbering, a );
	sleep(5)
	elseif rand == 2 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_2") , 0 )	--/*�A�^�^��Ū�F�@�M�A�����\�h�a��ݤ���
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_2") , 0)	--/*�A�^�^��Ū�F�@�M�A�����\�h�a��ݤ���
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..b..GetString("SC_Lumbering"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , EM_SkillValueType_Lumbering, b );
	sleep(5)
	elseif rand == 3 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_3") , 0 )	--/*�A���V�O���A���H��í�w����
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_3") , 0 )	--/*�A���V�O���A���H��í�w����
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..c..GetString("SC_Lumbering"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , EM_SkillValueType_Lumbering, c );
	sleep(5)
	elseif rand == 4 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_4") , 0 )	--/*�A���p�����鳻�AŪ�_�ѨӨƥb�\��
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_4") , 0 )	--/*�A���p�����鳻�AŪ�_�ѨӨƥb�\��
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..d..GetString("SC_Lumbering"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , EM_SkillValueType_Lumbering, d );
	sleep(5)
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------�׷Ҥ��Ψ禡�q
function LuaFunc_HouseTrainMining(average)		--/*average�������ƧY�������
	local rand = rand( 4 )+1
	local a = average*1/3
	local b = average*2/3
	local c = average*3/3
	local d = average*4/3
	if rand == 1 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_1") , 0 )	--/*�A�b�\Ū���ɭԺεۤF�A�եծ��O�F�ɶ�
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_1") , 0 )	--/*�A�b�\Ū���ɭԺεۤF�A�եծ��O�F�ɶ�
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..a..GetString("SC_Mining"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , EM_SkillValueType_Mining, a );
	sleep(5)
	elseif rand == 2 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_2") , 0 )	--/*�A�^�^��Ū�F�@�M�A�����\�h�a��ݤ���
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_2") , 0)	--/*�A�^�^��Ū�F�@�M�A�����\�h�a��ݤ���
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..b..GetString("SC_Mining"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , EM_SkillValueType_Mining, b );
	sleep(5)
	elseif rand == 3 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_3") , 0 )	--/*�A���V�O���A���H��í�w����
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_3") , 0 )	--/*�A���V�O���A���H��í�w����
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..c..GetString("SC_Mining"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , EM_SkillValueType_Mining, c );
	sleep(5)
	elseif rand == 4 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_4") , 0 )	--/*�A���p�����鳻�AŪ�_�ѨӨƥb�\��
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_4") , 0 )	--/*�A���p�����鳻�AŪ�_�ѨӨƥb�\��
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..d..GetString("SC_Mining"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , EM_SkillValueType_Mining, d );
	sleep(5)
	end
end