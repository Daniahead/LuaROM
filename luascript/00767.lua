------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------���KI
function houselearn_12()
	BeginPlot(OwnerID() , "houselearn_12_1" , 0 )
end
function houselearn_12_1()
	local average = 0.015			--/*���B�]�w�������g���
	local bookdbid = 202714		--/*���B�]�w�Ѫ�����s��
	local lva = 20			--/*���B�]�w�ϥγ̰�����
	local lvb = 0			--/*���B�]�w�ϥΤ��i�C�󵥯�
	local casttime = 600			--/*���B�]�w��ӬI�k�ɶ�
	local truecast = 60			--/*���B�]�w�u��I�k�ɶ�
	while 1 do
	local resultZ = "";
	local Obj = Role:new( OwnerID() );
	local ZoneID = Obj:ZoneID() -1000*math.floor(Obj:ZoneID() / 1000 )
	local SkillLV = ReadRoleValue(OwnerID(), EM_RoleValue_Skill_BlackSmith )
		if ZoneID == 0 then
			if ( SkillLV <= lva and SkillLV > lvb ) then					--/*�P�_����
				if CountBodyItem( OwnerID() , bookdbid ) >= 1 then			--/* �P�_�O�_����
					BeginCastBar( OwnerID(), GetString("SC_BOOKCAST_12") , truecast , ruFUSION_ACTORSTATE_SIT_BEGIN , ruFUSION_ACTORSTATE_SIT_END , 0 );	--/*�}�l�I�k
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
						LuaFunc_HouseTrainLiveSkill(average*truecast/casttime,EM_SkillValueType_BlackSmith)
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
				ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_NOTRIGHTSKILLLV") , 0 )	--/*�A�����Ŧ��G����\Ū����
				ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_NOTRIGHTSKILLLV") , 0 )	--/*�A�����Ŧ��G����\Ū����
				break;
			end
		else
				ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_NOTINHOUSE") , 0 )	--/*�A���b�ЫΤ�
				ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_NOTINHOUSE") , 0 )	--/*�A���b�ЫΤ�
				break;
		end
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------���KII
function houselearn_13()
	BeginPlot(OwnerID() , "houselearn_13_1" , 0 )
end
function houselearn_13_1()
	local average = 0.015			--/*���B�]�w�������g���
	local bookdbid = 202715		--/*���B�]�w�Ѫ�����s��
	local lva = 30			--/*���B�]�w�ϥγ̰�����
	local lvb = 20			--/*���B�]�w�ϥΤ��i�C�󵥯�
	local casttime = 600			--/*���B�]�w��ӬI�k�ɶ�
	local truecast = 60			--/*���B�]�w�u��I�k�ɶ�
	while 1 do
	local resultZ = "";
	local Obj = Role:new( OwnerID() );
	local ZoneID = Obj:ZoneID() -1000*math.floor(Obj:ZoneID() / 1000 )
	local SkillLV = ReadRoleValue(OwnerID(), EM_RoleValue_Skill_BlackSmith )
		if ZoneID == 0 then
			if ( SkillLV <= lva and SkillLV > lvb ) then					--/*�P�_����
				if CountBodyItem( OwnerID() , bookdbid ) >= 1 then			--/* �P�_�O�_����
					BeginCastBar( OwnerID(), GetString("SC_BOOKCAST_13") , truecast , ruFUSION_ACTORSTATE_SIT_BEGIN , ruFUSION_ACTORSTATE_SIT_END , 0 );	--/*�}�l�I�k
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
						LuaFunc_HouseTrainLiveSkill(average*truecast/casttime,EM_SkillValueType_BlackSmith)
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
				ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_NOTRIGHTSKILLLV_1") , 0 )	--/*�A�����Ŧ��G����\Ū����
				ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_NOTRIGHTSKILLLV_1") , 0 )	--/*�A�����Ŧ��G����\Ū����
				break;
			end
		else
				ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_NOTINHOUSE") , 0 )	--/*�A���b�ЫΤ�
				ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_NOTINHOUSE") , 0 )	--/*�A���b�ЫΤ�
				break;
		end
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------���KIII
function houselearn_14()
	BeginPlot(OwnerID() , "houselearn_14_1" , 0 )
end
function houselearn_14_1()
	local average = 0.015			--/*���B�]�w�������g���
	local bookdbid = 202716		--/*���B�]�w�Ѫ�����s��
	local lva = 40			--/*���B�]�w�ϥγ̰�����
	local lvb = 30			--/*���B�]�w�ϥΤ��i�C�󵥯�
	local casttime = 600			--/*���B�]�w��ӬI�k�ɶ�
	local truecast = 60			--/*���B�]�w�u��I�k�ɶ�
	while 1 do
	local resultZ = "";
	local Obj = Role:new( OwnerID() );
	local ZoneID = Obj:ZoneID() -1000*math.floor(Obj:ZoneID() / 1000 )
	local SkillLV = ReadRoleValue(OwnerID(), EM_RoleValue_Skill_BlackSmith )
		if ZoneID == 0 then
			if ( SkillLV <= lva and SkillLV > lvb ) then					--/*�P�_����
				if CountBodyItem( OwnerID() , bookdbid ) >= 1 then			--/* �P�_�O�_����
					BeginCastBar( OwnerID(), GetString("SC_BOOKCAST_14") , truecast , ruFUSION_ACTORSTATE_SIT_BEGIN , ruFUSION_ACTORSTATE_SIT_END , 0 );	--/*�}�l�I�k
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
						LuaFunc_HouseTrainLiveSkill(average*truecast/casttime,EM_SkillValueType_BlackSmith)
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
				ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_NOTRIGHTSKILLLV_1") , 0 )	--/*�A�����Ŧ��G����\Ū����
				ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_NOTRIGHTSKILLLV_1") , 0 )	--/*�A�����Ŧ��G����\Ū����
				break;
			end
		else
				ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_NOTINHOUSE") , 0 )	--/*�A���b�ЫΤ�
				ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_NOTINHOUSE") , 0 )	--/*�A���b�ЫΤ�
				break;
		end
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------