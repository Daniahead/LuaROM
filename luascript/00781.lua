------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------�s�y�ʬ���Ѥj��III
function houselearn_32()
	BeginPlot(OwnerID() , "houselearn_32_1" , 0 )
end
function houselearn_32_1()
	local average = 0.15			--/*���B�]�w�������g���
	local bookdbid = 202732		--/*���B�]�w�Ѫ�����s��
	local lva = 50			--/*���B�]�w�ϥγ̰�����
	local lvb = 30			--/*���B�]�w�ϥΤ��i�C�󵥯�
	local casttime = 600			--/*���B�]�w��ӬI�k�ɶ�
	local truecast = 60			--/*���B�]�w�u��I�k�ɶ�
	while 1 do
	local resultZ = "";
	local skill = ""
	local Obj = Role:new( OwnerID() );
	local ZoneID = Obj:ZoneID() -1000*math.floor(Obj:ZoneID() / 1000 )
	local SkillLV = ReadRoleValue(OwnerID(), EM_RoleValue_Skill_BlackSmith)
	local SkillLV1 = ReadRoleValue(OwnerID(), EM_RoleValue_Skill_Carpenter)
	local SkillLV2 = ReadRoleValue(OwnerID(), EM_RoleValue_Skill_MakeArmor)
	local SkillLV3 = ReadRoleValue(OwnerID(), EM_RoleValue_Skill_Tailor)
	local SkillLV4 = ReadRoleValue(OwnerID(), EM_RoleValue_Skill_Cook)
	local SkillLV5 = ReadRoleValue(OwnerID(), EM_RoleValue_Skill_Alchemy)
		if ZoneID == 0 then
			if ( SkillLV > lvb or SkillLV1 > lvb or SkillLV2 > lvb or SkillLV3 > lvb or SkillLV4 > lvb or SkillLV5 > lvb and SkillLV <= lva and SkillLV1 <= lva and SkillLV2 <= lva and SkillLV3 <= lva and SkillLV4 <= lva and SkillLV5 <= lva) then--/*�P�_����
				if CountBodyItem( OwnerID() , bookdbid ) >= 1 then			--/* �P�_�O�_����
					BeginCastBar( OwnerID(), GetString("SC_BOOKCAST_32") , truecast , ruFUSION_ACTORSTATE_SIT_BEGIN , ruFUSION_ACTORSTATE_SIT_END , 0 );	--/*�}�l�I�k
					Castspell(OwnerID(),OwnerID(),491282)					--/*�b��W�[��
					while 1 do
						sleep( 2 );
						local CastBarStatus = CheckCastBar( OwnerID() );
						if ( CastBarStatus ~= 0 ) then 
							if ( CastBarStatus > 0) then -- ���\
								resultZ = "OKOK"
								EndCastBar( OwnerID() , CastBarStatus )
								break;
							elseif ( CastBarStatus < 0 ) then -- ����
								resultZ = "DAME"
								EndCastBar( OwnerID() , CastBarStatus )
								break;
							end
						end
					end
					if ( resultZ == "OKOK" ) then					--/*�p�G���\�����@�����y
					local x = Rand( 6 ) + 1
						if x == 1 then
							skill = EM_SkillValueType_BlackSmith
						elseif x == 2 then
							skill = EM_SkillValueType_Carpenter
						elseif x == 3 then
							skill = EM_SkillValueType_MakeArmor
						elseif x == 4 then
							skill = EM_SkillValueType_Tailor
						elseif x == 5 then
							skill = EM_SkillValueType_Cook
						elseif x == 6 then
							skill = EM_SkillValueType_Alchemy
						end
						LuaFunc_HouseTrainLiveSkill(average*truecast/casttime,skill)
					end
					if ( resultZ == "DAME" ) then					--/*�p�G���ѵ����@��
						break;
					end
				else
					ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_NOITEM") , 0 )	--/*�A�S����
					ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_NOITEM") , 0)	--/*�A�S����
					break;
				end
			else
				ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_NOTRIGHTLV_1") , 0 )	--/*�A�����Ŧ��G����\Ū����
				ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_NOTRIGHTLV_1") , 0 )	--/*�A�����Ŧ��G����\Ū����
				break;
			end
		else
				ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_NOTINHOUSE") , 0 )	--/*�A���b�ЫΤ�
				ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_NOTINHOUSE") , 0 )	--/*�A���b�ЫΤ�
				break;
		end
	end
end