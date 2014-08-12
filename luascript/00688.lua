function LuaS_110167_5() 

	SetSpeakDetail( OwnerID(), GetString("ST_110167_5") )
  	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110167_6") , "LuaS_110167_6", 0 );--/魔幻盛典
  	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110167_7") , "LuaS_110167_7", 0 );--/國產網遊巨作
  	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110167_8") , "LuaS_110167_8", 0 );--/魔幻盛典國產網遊巨作
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACKTALK") , "LuaI_110167", 0 ); --/我想回到剛剛的對話
end

function LuaS_110167_6() 
	if CountBodyitem( OwnerID() , 201975 ) > 0 and CountBodyitem( OwnerID() , 201976 ) > 0 and CountBodyitem( OwnerID() , 201977 ) > 0 and CountBodyitem( OwnerID() , 201978 ) > 0 then
		if CountBodyitem( OwnerID() , 530065 ) > 0 then
			SetSpeakDetail( OwnerID(), GetString("ST_110167_FAIL1") )
		else
			DelBodyItem( OwnerID() , 201975 , 1 ) 
			DelBodyItem( OwnerID() , 201976 , 1 ) 
			DelBodyItem( OwnerID() , 201977 , 1 ) 
			DelBodyItem( OwnerID() , 201978 , 1 )
			GiveBodyItem( OwnerID() ,  530065  , 1 )
			SetSpeakDetail( OwnerID(), GetString("ST_110167_OK") )
		end
	else
			SetSpeakDetail( OwnerID(), GetString("ST_110167_FAIL2") )
	end
	
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACKTALK") , "LuaI_110167", 0 ); --/我想回到剛剛的對話
end

function LuaS_110167_7() 
	if CountBodyitem( OwnerID() , 201979 ) > 0 and CountBodyitem( OwnerID() , 201980 ) > 0 and CountBodyitem( OwnerID() , 201981 ) > 0 and CountBodyitem( OwnerID() , 201982 ) > 0 and CountBodyitem( OwnerID() , 201983 ) > 0 and CountBodyitem( OwnerID() , 201984 ) > 0 then
		if CountBodyitem( OwnerID() , 530066) > 0 then
			SetSpeakDetail( OwnerID(), GetString("ST_110167_FAIL1") )
		else
			DelBodyItem( OwnerID() , 201979 , 1 ) 
			DelBodyItem( OwnerID() , 201980 , 1 ) 
			DelBodyItem( OwnerID() , 201981 , 1 ) 
			DelBodyItem( OwnerID() , 201982 , 1 )
			DelBodyItem( OwnerID() , 201983 , 1 ) 
			DelBodyItem( OwnerID() , 201984 , 1 )
			GiveBodyItem( OwnerID() ,  530066 , 1 )
			SetSpeakDetail( OwnerID(), GetString("ST_110167_OK") )
		end
	else
			SetSpeakDetail( OwnerID(), GetString("ST_110167_FAIL2") )
	end
	
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACKTALK") , "LuaI_110167", 0 ); --/我想回到剛剛的對話
end

function LuaS_110167_8() 
	if CountBodyitem( OwnerID() , 201975 ) > 0 and CountBodyitem( OwnerID() , 201976 ) > 0 and CountBodyitem( OwnerID() , 201977 ) > 0 and CountBodyitem( OwnerID() , 201978 ) > 0 and CountBodyitem( OwnerID() , 201979 ) > 0 and CountBodyitem( OwnerID() , 201980 ) > 0 and CountBodyitem( OwnerID() , 201981 ) > 0 and CountBodyitem( OwnerID() , 201982 ) > 0 and CountBodyitem( OwnerID() , 201983 ) > 0 and CountBodyitem( OwnerID() , 201984 ) > 0 then
		if CountBodyitem( OwnerID() ,530067) > 0 then
			SetSpeakDetail( OwnerID(), GetString("ST_110167_FAIL1") )
		else
			DelBodyItem( OwnerID() , 201975 , 1 ) 
			DelBodyItem( OwnerID() , 201976 , 1 ) 
			DelBodyItem( OwnerID() , 201977 , 1 ) 
			DelBodyItem( OwnerID() , 201978 , 1 )
			DelBodyItem( OwnerID() , 201979 , 1 ) 
			DelBodyItem( OwnerID() , 201980 , 1 ) 
			DelBodyItem( OwnerID() , 201981 , 1 ) 
			DelBodyItem( OwnerID() , 201982 , 1 )
			DelBodyItem( OwnerID() , 201983 , 1 ) 
			DelBodyItem( OwnerID() , 201984 , 1 )
			GiveBodyItem( OwnerID() ,530067   , 1 )
			SetSpeakDetail( OwnerID(), GetString("ST_110167_OK") )
		end
	else
			SetSpeakDetail( OwnerID(), GetString("ST_110167_FAIL2") )
	end
	
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACKTALK") , "LuaI_110167", 0 ); --/我想回到剛剛的對話
end