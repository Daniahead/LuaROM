function LuaI_110989_0()
	SetPlot( OwnerID() , "Range" , "LuaI_110989_1" ,500)
end
function LuaI_110989_MSG()
	while 1 do

		if GetSystime(1) == 11 and  GetSystime(2) == 30 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_1") ) 
		end 
		if GetSystime(1) == 11 and  GetSystime(2) == 50 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_2") ) 
		end 
		if GetSystime(1) == 11 and  GetSystime(2) == 55 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_3") ) 
		end 
		if GetSystime(1) == 12 and  GetSystime(2) == 0 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_4") ) 
		end 
		if GetSystime(1) == 12 and  GetSystime(2) == 50 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_5") ) 
		end
		if GetSystime(1) == 13 and  GetSystime(2) == 0 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_6") ) 
		end 

		if GetSystime(1) == 19 and  GetSystime(2) == 30 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_1") ) 
		end 
		if GetSystime(1) == 19 and  GetSystime(2) == 50 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_2") ) 
		end 
		if GetSystime(1) == 19 and  GetSystime(2) == 55 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_3") ) 
		end 
		if GetSystime(1) == 20 and  GetSystime(2) == 0 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_4") ) 
		end 
		if GetSystime(1) == 20 and  GetSystime(2) == 50 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_5") ) 
		end
		if GetSystime(1) == 21 and  GetSystime(2) == 0 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_6") ) 
		end 

		
		sleep( 300 )

	end
end

function LuaI_110989_1()
	local Name = GetName( OwnerID() ) 
	local String = Name..GetString("SAY_110989_0")

	if CheckBuff( OwnerID() ,501603 ) == true then
		CancelBuff( OwnerID() , 501603 ) --取消BUFF
		CancelBuff( OwnerID() , 501638 )
		if GetSystime( 1 ) == 12 or GetSystime( 1 ) == 20 then  --時間內完成給獎賞
			AddRoleValue( OwnerID() , EM_RoleValue_Money , 100000 ) 
			RunningMsg( OwnerID() , 2 , String ) 
		else --超過時間回來的訊息
			ScriptMessage( OwnerID(), OwnerID(), 1, GetString("SAY_110989_1"), 0 );
		end
	end
end

function LuaS_110989_0()

	local TimeCheck = "CLOSE"

	if GetSystime( 1 ) == 12 or GetSystime( 1 ) == 20 then
		if GetSystime( 2 ) < 45 then
			TimeCheck = "OPEN"
		else
			TimeCheck = "OVERTIME"
		end
	end
	
	if TimeCheck == "OPEN" then --符合報名時間的敘述
		LoadQuestOption( OwnerID()) 
	elseif TimeCheck == "OVERTIME" then --超過報名時間的敘述
		SetSpeakDetail( OwnerID(), GetString("ST_110989_4")   ) 
	else --不在報名時間的敘述
		SetSpeakDetail( OwnerID(), GetString("ST_110989_0")   ) 
	end

	if CountBodyItem( OwnerID() , 200007 ) == 0 and TimeCheck == "OPEN" and CheckBuff(OwnerID() , 501603 ) == false and EmptyPacketCount( OwnerID() ) >= 1 and QueuePacketCount( OwnerID() ) == 0 then		
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110989_2") , "LuaS_110989_2", 0 ); --/*我要運礦
	elseif CountBodyItem( OwnerID() , 200007 ) > 0 then
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110989_1") , "LuaS_110989_1", 0 ) --/*我想放棄運礦
	end

end

function LuaS_110989_1()

	SetSpeakDetail( OwnerID(), GetString("ST_110989_1")   ) --好的，這些是你的押金，請收下。 --希望下次你能參加。

	if CountBodyItem( OwnerID() , 200007 ) > 0 then		
		DelBodyItem( OwnerID() , 200007 , 1 )
		AddRoleValue( OwnerID() , EM_RoleValue_Money , 50000 ) 
	end

end

function LuaS_110989_2()

	SetSpeakDetail( OwnerID(), GetString("ST_110989_2")   ) --參加本活動需要先支付押金 5 金，您確定要參加嗎？
	if ReadRoleValue( OwnerID() , EM_RoleValue_Money) > 50000 and CheckBuff(OwnerID() , 501603 ) == false then
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110989_3") , "LuaS_110989_3", 0 ) --/*我要參加
	end
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110989_4") , "LuaS_110989_0", 0 ) --/*讓我考慮一下

end

function LuaS_110989_3()

	SetSpeakDetail( OwnerID(), GetString("ST_110989_3")   ) 
	--好的，確實收到了您的押金，這是您的證明，請妥善保管，遺失了恕不補發；
	--請帶著這份證明到艾索蘭斜谷的鏡之墓城前，研究員祈爾會交給你一份水晶，
	--只要能夠帶著這份水晶靠近這裡，便可以幫城內的水晶補充魔力，同時獎金也
	--會立即匯入您的戶頭。
	--不過途中只要被攻擊死亡，這個水晶將會消失，此時我們必須沒收您的押金，
	--您如果想要放棄，請回到我這裡申請，只要你還保留證明，我會立即將押金退
	--還。
	if ReadRoleValue( OwnerID() , EM_RoleValue_Money) > 50000 and CheckBuff(OwnerID() , 501603 ) == false and EmptyPacketCount( OwnerID() ) >= 1 and QueuePacketCount( OwnerID() ) == 0 then		
		GiveBodyItem( OwnerID() , 200007 , 1 )
		AddRoleValue( OwnerID() , EM_RoleValue_Money , -50000 ) 
	end

end

function LuaS_110990_0()
	local TimeCheck = "CLOSE"

	if GetSystime( 1 ) == 12 or GetSystime( 1 ) == 20 then
		if GetSystime( 2 ) < 50 then
			TimeCheck = "OPEN"
		else
			TimeCheck = "OVERTIME"
		end
	end
	
	if TimeCheck == "OPEN" and CountBodyItem( OwnerID() , 200007 ) > 0 then --符合報名時間的敘述
		LoadQuestOption( OwnerID()) 
	elseif TimeCheck == "OVERTIME" and CountBodyItem( OwnerID() , 200007 ) > 0 then --超過報名時間的敘述
		SetSpeakDetail( OwnerID(), GetString("ST_110990_0")   ) 
	else --不在報名時間的敘述
		SetSpeakDetail( OwnerID(), GetString("ST_110990_1")   ) 
	end

	if CountBodyItem( OwnerID() , 200007 ) > 0 and CheckBuff(OwnerID() , 501603 ) == false then
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110990_1") , "LuaS_110990_1", 0 ) --/*我要運礦
	end
	
end

function LuaS_110990_1()
	CloseSpeak( OwnerID() )
	BeginPlot( TargetID() , "LuaS_110990_2" , 0 )
end
function LuaS_110990_2()
	local TimeCheck = "CLOSE"
	local Name = GetName( TargetID() ) 

	if GetSystime( 1 ) == 12 or GetSystime( 1 ) == 20 then
		if GetSystime( 2 ) < 45 then
			TimeCheck = "OPEN"
		else
			TimeCheck = "OVERTIME"
		end
	end
	
	if TimeCheck == "OPEN" then --符合報名時間的敘述
		if CountBodyItem( TargetID() , 200007 ) > 0 then
			local String = Name..GetString("SAY_110990_3")
			Say( OwnerID() , GetString("SAY_110990_2") )
			DelBodyItem( TargetID() , 200007 , 1 )
--			CastSpell( OwnerID(), TargetID() ,)
			CastSpell( OwnerID() , TargetID() ,491224 )
			RunningMsg( OwnerID() , 2 , String )
		end

	elseif TimeCheck == "OVERTIME" then --超過報名時間的敘述
		ScriptMessage( TargetID() ,TargetID(), 1, GetString("SAY_110990_0"), 0 );
	else --不在報名時間的敘述
		ScriptMessage( TargetID() ,TargetID(), 1, GetString("SAY_110990_1"), 0 );
	end
	
end

function LuaPK_Mine_Killer()
	local Killer = GetName( TargetID() ) 
	local Dead = GetName( OwnerID() ) 
	local String = Dead..GetString("QUESTPK_MSG_MINE_KILLER_A")..Killer..GetString("QUESTPK_MSG_MINE_KILLER_B") 
	RunningMsg( TargetID() , 2 , String )
	AddRoleValue(TargetID() , EM_RoleValue_Money , 30000 )
end