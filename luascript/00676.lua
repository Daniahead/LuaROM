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
		CancelBuff( OwnerID() , 501603 ) --����BUFF
		CancelBuff( OwnerID() , 501638 )
		if GetSystime( 1 ) == 12 or GetSystime( 1 ) == 20 then  --�ɶ�������������
			AddRoleValue( OwnerID() , EM_RoleValue_Money , 100000 ) 
			RunningMsg( OwnerID() , 2 , String ) 
		else --�W�L�ɶ��^�Ӫ��T��
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
	
	if TimeCheck == "OPEN" then --�ŦX���W�ɶ����ԭz
		LoadQuestOption( OwnerID()) 
	elseif TimeCheck == "OVERTIME" then --�W�L���W�ɶ����ԭz
		SetSpeakDetail( OwnerID(), GetString("ST_110989_4")   ) 
	else --���b���W�ɶ����ԭz
		SetSpeakDetail( OwnerID(), GetString("ST_110989_0")   ) 
	end

	if CountBodyItem( OwnerID() , 200007 ) == 0 and TimeCheck == "OPEN" and CheckBuff(OwnerID() , 501603 ) == false and EmptyPacketCount( OwnerID() ) >= 1 and QueuePacketCount( OwnerID() ) == 0 then		
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110989_2") , "LuaS_110989_2", 0 ); --/*�ڭn�B�q
	elseif CountBodyItem( OwnerID() , 200007 ) > 0 then
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110989_1") , "LuaS_110989_1", 0 ) --/*�ڷQ���B�q
	end

end

function LuaS_110989_1()

	SetSpeakDetail( OwnerID(), GetString("ST_110989_1")   ) --�n���A�o�ǬO�A������A�Ц��U�C --�Ʊ�U���A��ѥ[�C

	if CountBodyItem( OwnerID() , 200007 ) > 0 then		
		DelBodyItem( OwnerID() , 200007 , 1 )
		AddRoleValue( OwnerID() , EM_RoleValue_Money , 50000 ) 
	end

end

function LuaS_110989_2()

	SetSpeakDetail( OwnerID(), GetString("ST_110989_2")   ) --�ѥ[�����ʻݭn����I��� 5 ���A�z�T�w�n�ѥ[�ܡH
	if ReadRoleValue( OwnerID() , EM_RoleValue_Money) > 50000 and CheckBuff(OwnerID() , 501603 ) == false then
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110989_3") , "LuaS_110989_3", 0 ) --/*�ڭn�ѥ[
	end
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110989_4") , "LuaS_110989_0", 0 ) --/*���ڦҼ{�@�U

end

function LuaS_110989_3()

	SetSpeakDetail( OwnerID(), GetString("ST_110989_3")   ) 
	--�n���A�T�ꦬ��F�z������A�o�O�z���ҩ��A�Ч����O�ޡA�򥢤F�����ɵo�F
	--�бa�۳o���ҩ��������ר����褧�ӫ��e�A��s���躸�|�浹�A�@�������A
	--�u�n����a�۳o�������a��o�̡A�K�i�H�������������ɥR�]�O�A�P�ɼ����]
	--�|�ߧY�פJ�z�����Y�C
	--���L�~���u�n�Q�������`�A�o�Ӥ����N�|�����A���ɧڭ̥����S���z������A
	--�z�p�G�Q�n���A�Ц^��ڳo�̥ӽСA�u�n�A�٫O�d�ҩ��A�ڷ|�ߧY�N����h
	--�١C
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
	
	if TimeCheck == "OPEN" and CountBodyItem( OwnerID() , 200007 ) > 0 then --�ŦX���W�ɶ����ԭz
		LoadQuestOption( OwnerID()) 
	elseif TimeCheck == "OVERTIME" and CountBodyItem( OwnerID() , 200007 ) > 0 then --�W�L���W�ɶ����ԭz
		SetSpeakDetail( OwnerID(), GetString("ST_110990_0")   ) 
	else --���b���W�ɶ����ԭz
		SetSpeakDetail( OwnerID(), GetString("ST_110990_1")   ) 
	end

	if CountBodyItem( OwnerID() , 200007 ) > 0 and CheckBuff(OwnerID() , 501603 ) == false then
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110990_1") , "LuaS_110990_1", 0 ) --/*�ڭn�B�q
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
	
	if TimeCheck == "OPEN" then --�ŦX���W�ɶ����ԭz
		if CountBodyItem( TargetID() , 200007 ) > 0 then
			local String = Name..GetString("SAY_110990_3")
			Say( OwnerID() , GetString("SAY_110990_2") )
			DelBodyItem( TargetID() , 200007 , 1 )
--			CastSpell( OwnerID(), TargetID() ,)
			CastSpell( OwnerID() , TargetID() ,491224 )
			RunningMsg( OwnerID() , 2 , String )
		end

	elseif TimeCheck == "OVERTIME" then --�W�L���W�ɶ����ԭz
		ScriptMessage( TargetID() ,TargetID(), 1, GetString("SAY_110990_0"), 0 );
	else --���b���W�ɶ����ԭz
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