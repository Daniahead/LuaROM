------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------�i��I
function houselearn_24()
	BeginPlot(OwnerID() , "houselearn_24_1" , 0 )
end
function houselearn_24_1()
	local average = 0.015			--/*���B�]�w�������g���
	local bookdbid = 202717		--/*���B�]�w�Ѫ�����s��
	local lva = 20			--/*���B�]�w�ϥγ̰�����
	local lvb = 0			--/*���B�]�w�ϥΤ��i�C�󵥯�
	local casttime = 600			--/*���B�]�w��ӬI�k�ɶ�
	local truecast = 60			--/*���B�]�w�u��I�k�ɶ�
	while 1 do
	local resultZ = "";
	local Obj = Role:new( OwnerID() );
	local ZoneID = Obj:ZoneID() -1000*math.floor(Obj:ZoneID() / 1000 )
	local SkillLV = ReadRoleValue(OwnerID(), EM_RoleValue_Skill_Cook )
		if ZoneID == 0 then
			if ( SkillLV <= lva and SkillLV > lvb ) then					--/*�P�_����
				if CountBodyItem( OwnerID() , bookdbid ) >= 1 then			--/* �P�_�O�_����
					BeginCastBar( OwnerID(), GetString("SC_BOOKCAST_24") , truecast , ruFUSION_ACTORSTATE_SIT_BEGIN , ruFUSION_ACTORSTATE_SIT_END , 0 );	--/*�}�l�I�k
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
						LuaFunc_HouseTrainLiveSkill(average*truecast/casttime,EM_SkillValueType_Cook)
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
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------�i��II
function houselearn_25()
	BeginPlot(OwnerID() , "houselearn_25_1" , 0 )
end
function houselearn_25_1()
	local average = 0.015			--/*���B�]�w�������g���
	local bookdbid = 202718		--/*���B�]�w�Ѫ�����s��
	local lva = 30			--/*���B�]�w�ϥγ̰�����
	local lvb = 20			--/*���B�]�w�ϥΤ��i�C�󵥯�
	local casttime = 600			--/*���B�]�w��ӬI�k�ɶ�
	local truecast = 60			--/*���B�]�w�u��I�k�ɶ�
	while 1 do
	local resultZ = "";
	local Obj = Role:new( OwnerID() );
	local ZoneID = Obj:ZoneID() -1000*math.floor(Obj:ZoneID() / 1000 )
	local SkillLV = ReadRoleValue(OwnerID(), EM_RoleValue_Skill_Cook )
		if ZoneID == 0 then
			if ( SkillLV <= lva and SkillLV > lvb ) then					--/*�P�_����
				if CountBodyItem( OwnerID() , bookdbid ) >= 1 then			--/* �P�_�O�_����
					BeginCastBar( OwnerID(), GetString("SC_BOOKCAST_25") , truecast , ruFUSION_ACTORSTATE_SIT_BEGIN , ruFUSION_ACTORSTATE_SIT_END , 0 );	--/*�}�l�I�k
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
						LuaFunc_HouseTrainLiveSkill(average*truecast/casttime,EM_SkillValueType_Cook)
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
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------�i��III
function houselearn_26()
	BeginPlot(OwnerID() , "houselearn_26_1" , 0 )
end
function houselearn_26_1()
	local average = 0.015			--/*���B�]�w�������g���
	local bookdbid = 202719		--/*���B�]�w�Ѫ�����s��
	local lva = 40			--/*���B�]�w�ϥγ̰�����
	local lvb = 30			--/*���B�]�w�ϥΤ��i�C�󵥯�
	local casttime = 600			--/*���B�]�w��ӬI�k�ɶ�
	local truecast = 60			--/*���B�]�w�u��I�k�ɶ�
	while 1 do
	local resultZ = "";
	local Obj = Role:new( OwnerID() );
	local ZoneID = Obj:ZoneID() -1000*math.floor(Obj:ZoneID() / 1000 )
	local SkillLV = ReadRoleValue(OwnerID(), EM_RoleValue_Skill_Cook )
		if ZoneID == 0 then
			if ( SkillLV <= lva and SkillLV > lvb ) then					--/*�P�_����
				if CountBodyItem( OwnerID() , bookdbid ) >= 1 then			--/* �P�_�O�_����
					BeginCastBar( OwnerID(), GetString("SC_BOOKCAST_26") , truecast , ruFUSION_ACTORSTATE_SIT_BEGIN , ruFUSION_ACTORSTATE_SIT_END , 0 );	--/*�}�l�I�k
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
						LuaFunc_HouseTrainLiveSkill(average*truecast/casttime,EM_SkillValueType_Cook)
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