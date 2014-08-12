function  CheckBuff_501387()

	if CheckBuff( OwnerID() , 501387) == true  then	--免除死亡懲罰 
		ScriptMessage( OwnerID(), OwnerID(), 1, GetString("MSG_EFFECT_HAVE"), C_DEFAULT);  -- 物品使用失敗，此效果已存在
	                return false
	
	else

		return true

	end

end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function  CheckBuff_501388()

	if CheckBuff( OwnerID() , 501388) == true  then	--增加50％經驗值 
		ScriptMessage( OwnerID(), OwnerID(), 1, GetString("MSG_EFFECT_HAVE"), C_DEFAULT);  -- 物品使用失敗，此效果已存在
	                return false
	

	else

		return true

	end

end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function  CheckBuff_501389()

	if CheckBuff( OwnerID() , 501389) == true  then	--抵死術 
		ScriptMessage( OwnerID(), OwnerID(), 1, GetString("MSG_EFFECT_HAVE"), C_DEFAULT);  -- 物品使用失敗，此效果已存在
	                return false
	

	else

		return true

	end

end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function  CheckBuff_EXP_Bouns()

	if CheckBuff( OwnerID() , 501388) == true or CheckBuff( OwnerID() , 501590) == true or  CheckBuff( OwnerID() , 501591) == true or  CheckBuff( OwnerID() , 501643) == true or  CheckBuff( OwnerID() , 501644) == true then
		ScriptMessage( OwnerID(), OwnerID(), 1, GetString("MSG_EFFECT_HAVE"), C_DEFAULT);  -- 物品使用失敗，此效果已存在
	                return false
	
	else

		return true

	end

end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function  CheckBuff_TP_Bouns()

	if CheckBuff( OwnerID() , 501592) == true or  CheckBuff( OwnerID() , 501593) == true or  CheckBuff( OwnerID() , 501594) == true or  CheckBuff( OwnerID() , 501645) == true or  CheckBuff( OwnerID() , 501646) == true then	
		ScriptMessage( OwnerID(), OwnerID(), 1, GetString("MSG_EFFECT_HAVE"), C_DEFAULT);  -- 物品使用失敗，此效果已存在
	                return false
	
	else

		return true

	end

end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function  CheckBuff_LUCKY_Bouns()

	if CheckBuff( OwnerID() , 501589) == true or  CheckBuff( OwnerID() , 501647) == true then	
		ScriptMessage( OwnerID(), OwnerID(), 1, GetString("MSG_EFFECT_HAVE"), C_DEFAULT);  -- 物品使用失敗，此效果已存在
	                return false
	
	else

		return true

	end

end
