function davistest_1()
            Say( OwnerID() , GetString("SAY_110147_16") )
             sleep( 30 )
             Hide(OwnerID())
             sleep(60)
	Show( OwnerID() , 0 )
             sleep(30)
end
function davistest_1_1()
	local average = 21		--/*���B�]�w�������g���
	while 1 do
	local resultZ = "";
	local Obj = Role:new( OwnerID() );
	local ZoneID = Obj:ZoneID() -1000*math.floor(Obj:ZoneID() / 1000 )
	local PlayerLV = ReadRoleValue( OwnerID() , EM_RoleValue_LV )
		if ZoneID == 0 then
			if ( PlayerLV <= 30 ) then							--/*�P�_����
				if CountBodyItem( OwnerID() , 202689 ) == 1 then			--/* �P�_�O�_����
					BeginCastBar( OwnerID(), GetString("SC_BOOKCAST_1") , 60 , ruFUSION_ACTORSTATE_CRAFTING_BEGIN , ruFUSION_ACTORSTATE_CRAFTING_END , 0 );		--/*�}�l�I�k
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
						LuaFunc_HouseTrainGet(average)
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
				ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_NOTRIGHTLV") , 0 )	--/*�A�����Ť���
				ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_NOTRIGHTLV") , 0 )	--/*�A�����Ť���
				break;
			end
		else
				ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_NOTINHOUSE") , 0 )	--/*�A���b�ЫΤ�
				ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_NOTINHOUSE") , 0 )	--/*�A���b�ЫΤ�
				break;
		end
	end
end
