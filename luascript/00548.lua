function ClientGlobalSysFunction1( x )
	if CheckFlag( OwnerID()  , 540851 ) ==true then--�ˬd���L�X��
		SetFlag( OwnerID()  , 540851 , 0 );--�R���X��
		ChangeZone( TargetID() , 1 , 0 ,-4069,244, -8247, 47)--�ǰe��zone1
		return true
	end
	return false
end

function ClientGlobalSysFunction2(  x )
	if ReadRoleValue( OwnerID() , EM_RoleValue_ZoneID ) == 102 then
		ChangeZone( TargetID() , 1 , 0 ,-4069,244, -8247, 47)--�ǰe��zone1
		return true
	end
	return false
end

function ClientGlobalSysFunction3(  x )--�}�һȦ�
	if ReadRoleValue( OwnerID() , EM_RoleValue_ZoneID ) == 0 then 
		Sys_Bank_Open()
		return true;
	end
	return false
end

function ClientGlobalSysFunction4( x )

	local PageID = math.floor( x / 100 );	-- ���ʦ��	-- PageID �O �Ȧ歶��
	local Type = x - ( PageID * 100 );	-- ���Q��P�Ӧ�

	if( PageID < 0 or PageID > 3 )then
		ScriptMessage( OwnerID(), TargetID(), 0, "PageID Error!! " , 0 )
		return;
	end
	


	local Time = GetMoneyKeyValue(  string.format( "BankLet%02d", Type ), 0 );
	local Money = GetMoneyKeyValue(  string.format( "BankLet%02d", Type ) , 1 );


	if( Time == 0 or Money == 0 )then
		ScriptMessage( OwnerID(), TargetID(), 0, "Time & Money Error!! " , 0 )
		return;
	end

	local AccountMoney = ReadRoleValue( OwnerID() , EM_RoleValue_Money_Account )

--EM_TimeFlagEffect_BankBag25_49     =1	--�Ȧ�I�]�}��
--EM_TimeFlagEffect_BankBag50_74	=2	--�Ȧ�I�]�}��
--EM_TimeFlagEffect_BankBag75_99	=3	--�Ȧ�I�]�}��

	if AccountMoney >= Money then
		AddRoleValue( OwnerID() , EM_RoleValue_Money_Account , -Money )
		AddRoleValue( OwnerID() , EM_RoleValue_TimeFlag + EM_TimeFlagEffect_BankBag25_49 + PageID  , Time )
	else
		ScriptMessage( OwnerID(), TargetID(), 0, "You don't Have enough Money !!" , 0 )
		-- nothing
	end

	return true;
end

function ClientGlobalSysFunction5(  x )
	return true;
end

function ClientGlobalSysFunction6(  x )
	return true;
end

