function davistest_1()
            Say( OwnerID() , GetString("SAY_110147_16") )
             sleep( 30 )
             Hide(OwnerID())
             sleep(60)
	Show( OwnerID() , 0 )
             sleep(30)
end
function davistest_1_1()
	local average = 21		--/*此處設定給予的經驗值
	while 1 do
	local resultZ = "";
	local Obj = Role:new( OwnerID() );
	local ZoneID = Obj:ZoneID() -1000*math.floor(Obj:ZoneID() / 1000 )
	local PlayerLV = ReadRoleValue( OwnerID() , EM_RoleValue_LV )
		if ZoneID == 0 then
			if ( PlayerLV <= 30 ) then							--/*判斷等級
				if CountBodyItem( OwnerID() , 202689 ) == 1 then			--/* 判斷是否有書
					BeginCastBar( OwnerID(), GetString("SC_BOOKCAST_1") , 60 , ruFUSION_ACTORSTATE_CRAFTING_BEGIN , ruFUSION_ACTORSTATE_CRAFTING_END , 0 );		--/*開始施法
					while 1 do
						sleep( 2 );
						local CastBarStatus = CheckCastBar( OwnerID() );
						if ( CastBarStatus ~= 0 ) then 
							if ( CastBarStatus > 0) then -- 成功
								resultZ = "OKOK"
								EndCastBar( OwnerID() , CastBarStatus )
								break;
							elseif ( CastBarStatus < 0 ) then -- 失敗
								resultZ = "DAME"
								EndCastBar( OwnerID() , CastBarStatus )
								break;
							end
						end
					end
					if ( resultZ == "OKOK" ) then					--/*如果成功給予一次獎勵
						LuaFunc_HouseTrainGet(average)
					end
					if ( resultZ == "DAME" ) then					--/*如果失敗結束劇情
						break;
					end
				else
					ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_NOITEM") , 0 )	--/*你沒有書
					ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_NOITEM") , 0)	--/*你沒有書
					break;
				end
			else
				ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_NOTRIGHTLV") , 0 )	--/*你的等級不符
				ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_NOTRIGHTLV") , 0 )	--/*你的等級不符
				break;
			end
		else
				ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_NOTINHOUSE") , 0 )	--/*你不在房屋內
				ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_NOTINHOUSE") , 0 )	--/*你不在房屋內
				break;
		end
	end
end
