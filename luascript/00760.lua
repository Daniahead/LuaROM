function houselearn_4()
	BeginPlot(OwnerID() , "houselearn_4_1" , 0 )
end
function houselearn_4_1()
	local average = 3			--/*此處設定給予的經驗值
	local bookdbid = 202702		--/*此處設定書的物件編號
	local lva = 30			--/*此處設定使用最高等級
	local lvb = 0			--/*此處設定使用不可低於等級
	local casttime = 600			--/*此處設定對照施法時間
	local truecast = 600			--/*此處設定真實施法時間
	while 1 do
	local resultZ = "";
	local Obj = Role:new( OwnerID() );
	local ZoneID = Obj:ZoneID() -1000*math.floor(Obj:ZoneID() / 1000 )
	local PlayerLV = ReadRoleValue( OwnerID() , EM_RoleValue_LV )
		if ZoneID == 0 then
			if ( PlayerLV <= lva and PlayerLV > lvb ) then					--/*判斷等級
				if CountBodyItem( OwnerID() , bookdbid ) >= 1 then			--/* 判斷是否有書
					BeginCastBar( OwnerID(), GetString("SC_BOOKCAST_4") , truecast , ruFUSION_ACTORSTATE_SIT_BEGIN , ruFUSION_ACTORSTATE_SIT_END , 0 );	--/*開始施法
					Castspell(OwnerID(),OwnerID(),491282)					--/*在手上加書
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
						LuaFunc_HouseTrainGetTP(average*truecast/casttime)
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
				ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_NOTRIGHTLV") , 0 )	--/*等級那麼高了，還想讀這本書，去買本符合自己等級的書吧！
				ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_NOTRIGHTLV") , 0 )	--/*等級那麼高了，還想讀這本書，去買本符合自己等級的書吧！
				break;
			end
		else
				ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_NOTINHOUSE") , 0 )	--/*你不在房屋內
				ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_NOTINHOUSE") , 0 )	--/*你不在房屋內
				break;
		end
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function houselearn_5()
	BeginPlot(OwnerID() , "houselearn_5_1" , 0 )
end
function houselearn_5_1()
	local average = 3			--/*此處設定給予的經驗值
	local bookdbid = 202703		--/*此處設定書的物件編號
	local lva = 40			--/*此處設定使用最高等級
	local lvb = 30			--/*此處設定使用不可低於等級
	local casttime = 600			--/*此處設定對照施法時間
	local truecast = 600			--/*此處設定真實施法時間
	while 1 do
	local resultZ = "";
	local Obj = Role:new( OwnerID() );
	local ZoneID = Obj:ZoneID() -1000*math.floor(Obj:ZoneID() / 1000 )
	local PlayerLV = ReadRoleValue( OwnerID() , EM_RoleValue_LV )
		if ZoneID == 0 then
			if ( PlayerLV <= lva and PlayerLV > lvb ) then					--/*判斷等級
				if CountBodyItem( OwnerID() , bookdbid ) >= 1 then			--/* 判斷是否有書
					BeginCastBar( OwnerID(), GetString("SC_BOOKCAST_5") , truecast , ruFUSION_ACTORSTATE_SIT_BEGIN , ruFUSION_ACTORSTATE_SIT_END , 0 );	--/*開始施法
					Castspell(OwnerID(),OwnerID(),491282)					--/*在手上加書
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
						LuaFunc_HouseTrainGetTP(average*truecast/casttime)
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
				ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_NOTRIGHTLV_1") , 0 )	--/*你的等級似乎不能閱讀此書
				ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_NOTRIGHTLV_1") , 0 )	--/*你的等級似乎不能閱讀此書
				break;
			end
		else
				ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_NOTINHOUSE") , 0 )	--/*你不在房屋內
				ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_NOTINHOUSE") , 0 )	--/*你不在房屋內
				break;
		end
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function houselearn_6()
	BeginPlot(OwnerID() , "houselearn_6_1" , 0 )
end
function houselearn_6_1()
	local average = 3			--/*此處設定給予的經驗值
	local bookdbid = 202704		--/*此處設定書的物件編號
	local lva = 50			--/*此處設定使用最高等級
	local lvb = 40			--/*此處設定使用不可低於等級
	local casttime = 600			--/*此處設定對照施法時間
	local truecast = 600			--/*此處設定真實施法時間
	while 1 do
	local resultZ = "";
	local Obj = Role:new( OwnerID() );
	local ZoneID = Obj:ZoneID() -1000*math.floor(Obj:ZoneID() / 1000 )
	local PlayerLV = ReadRoleValue( OwnerID() , EM_RoleValue_LV )
		if ZoneID == 0 then
			if ( PlayerLV <= lva and PlayerLV > lvb ) then					--/*判斷等級
				if CountBodyItem( OwnerID() , bookdbid ) >= 1 then			--/* 判斷是否有書
					BeginCastBar( OwnerID(), GetString("SC_BOOKCAST_6") , truecast , ruFUSION_ACTORSTATE_SIT_BEGIN , ruFUSION_ACTORSTATE_SIT_END , 0 );	--/*開始施法
					Castspell(OwnerID(),OwnerID(),491282)					--/*在手上加書
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
						LuaFunc_HouseTrainGetTP(average*truecast/casttime)
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
				ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_NOTRIGHTLV_2") , 0 )	--/*你這毛頭小子還不會走就想要飛，還是回去乖乖閱讀符合你等級的書吧！
				ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_NOTRIGHTLV_2") , 0 )	--/*你這毛頭小子還不會走就想要飛，還是回去乖乖閱讀符合你等級的書吧！
				break;
			end
		else
				ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_NOTINHOUSE") , 0 )	--/*你不在房屋內
				ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SC_NOTINHOUSE") , 0 )	--/*你不在房屋內
				break;
		end
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------