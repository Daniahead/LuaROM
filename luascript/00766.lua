------------------------------------------------------------------------------------------------------------------------------------------------�׷Ҥ��Ψ禡���m��
function LuaFunc_HouseTrainWapenSkill(average,skill)		--/*average�������ƧY�������
	local ran = Rand( 4 )+1
	local a = average*1/3
	local b = average*2/3
	local c = average*3/3
	local d = average*4/3
	local e = ""
	if skill == EM_SkillValueType_Unarmed then
		e = "SYS_SKILLNAME_700"
	elseif skill == EM_SkillValueType_Blade then
		e = "SYS_SKILLNAME_701"
	elseif skill == EM_SkillValueType_Dagger then
		e = "SYS_SKILLNAME_702"
	elseif skill == EM_SkillValueType_Wand then
		e = "SYS_SKILLNAME_703"
	elseif skill == EM_SkillValueType_Axe then
		e = "SYS_SKILLNAME_704"
	elseif skill == EM_SkillValueType_Bludgeon then
		e = "SYS_SKILLNAME_705"
	elseif skill == EM_SkillValueType_Claymore then
		e = "SYS_SKILLNAME_706"
	elseif skill == EM_SkillValueType_Staff then
		e = "SYS_SKILLNAME_707"
	elseif skill == EM_SkillValueType_2H_Axe then
		e = "SYS_SKILLNAME_708"
	elseif skill == EM_SkillValueType_2H_Hammer then
		e = "SYS_SKILLNAME_709"
	elseif skill == EM_SkillValueType_Polearm then
		e = "SYS_SKILLNAME_710"
	elseif skill == EM_SkillValueType_Bow then
		e = "SYS_SKILLNAME_711"
	elseif skill == EM_SkillValueType_CossBow then
		e = "SYS_SKILLNAME_712"
	elseif skill == EM_SkillValueType_Gun then
		e = "SYS_SKILLNAME_713"
	elseif skill == EM_SkillValueType_Define then
		e = "SYS_SKILLNAME_714"
	end
	if ran == 1 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_1") , 0 )	--/*�A�b�\Ū���ɭԺεۤF�A�եծ��O�F�ɶ�
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_1") , 0 )	--/*�A�b�\Ū���ɭԺεۤF�A�եծ��O�F�ɶ�
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..GetString("SC_ALITTLE")..GetString(e)..GetString("SC_SOLAN"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , skill, a );
	sleep(5)
	elseif ran == 2 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_2") , 0 )	--/*�A�^�^��Ū�F�@�M�A�����\�h�a��ݤ���
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_2") , 0)	--/*�A�^�^��Ū�F�@�M�A�����\�h�a��ݤ���
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..GetString("SC_FEW")..GetString(e)..GetString("SC_SOLAN"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , skill, b );
	sleep(5)
	elseif ran == 3 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_3") , 0 )	--/*�A���V�O���A���H��í�w����
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_3") , 0 )	--/*�A���V�O���A���H��í�w����
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..GetString("SC_ALOT")..GetString(e)..GetString("SC_SOLAN"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , skill, c );
	sleep(5)
	elseif ran == 4 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_4") , 0 )	--/*�A���p�����鳻�AŪ�_�ѨӨƥb�\��
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_4") , 0 )	--/*�A���p�����鳻�AŪ�_�ѨӨƥb�\��
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..GetString("SC_MUCH")..GetString(e)..GetString("SC_SOLAN"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , skill, d );
	sleep(5)
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------�׷Ҥ��Ψ禡�Ͳ���
function LuaFunc_HouseTrainLiveSkill(average,skill)		--/*average�������ƧY�������
	local ran = Rand( 4 )+1
	local a = average*1/3
	local b = average*2/3
	local c = average*3/3
	local d = average*4/3
	local e = ""
	if skill == EM_SkillValueType_BlackSmith then
		e = "SYS_SKILLNAME_BLACKSMITH"
	elseif skill == EM_SkillValueType_Carpenter then
		e = "SYS_SKILLNAME_CARPENTER"
	elseif skill == EM_SkillValueType_MakeArmor then
		e = "SYS_SKILLNAME_MAKEARMOR"
	elseif skill == EM_SkillValueType_Tailor then
		e = "SYS_SKILLNAME_TAILOR"
	elseif skill == EM_SkillValueType_Cook then
		e = "SYS_SKILLNAME_COOK"
	elseif skill == EM_SkillValueType_Alchemy then
		e = "SYS_SKILLNAME_ALCHEMY"
	end
	if ran == 1 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_1") , 0 )	--/*�A�b�\Ū���ɭԺεۤF�A�եծ��O�F�ɶ�
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_1") , 0 )	--/*�A�b�\Ū���ɭԺεۤF�A�եծ��O�F�ɶ�
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..GetString("SC_ALITTLE")..GetString(e)..GetString("SC_DIG"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , skill, a );
	sleep(5)
	elseif ran == 2 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_2") , 0 )	--/*�A�^�^��Ū�F�@�M�A�����\�h�a��ݤ���
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_2") , 0)	--/*�A�^�^��Ū�F�@�M�A�����\�h�a��ݤ���
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..GetString("SC_FEW")..GetString(e)..GetString("SC_DIG"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , skill, b );
	sleep(5)
	elseif ran == 3 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_3") , 0 )	--/*�A���V�O���A���H��í�w����
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_3") , 0 )	--/*�A���V�O���A���H��í�w����
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..GetString("SC_ALOT")..GetString(e)..GetString("SC_DIG"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , skill, c );
	sleep(5)
	elseif ran == 4 then
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARN_4") , 0 )	--/*�A���p�����鳻�AŪ�_�ѨӨƥb�\��
	ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_LEARN_4") , 0 )	--/*�A���p�����鳻�AŪ�_�ѨӨƥb�\��
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_LEARNGET")..GetString("SC_MUCH")..GetString(e)..GetString("SC_DIG"), 0 )	--/*�A��o�H�I
	AddSkillValue( OwnerID() , skill, d );
	sleep(5)
	end
end