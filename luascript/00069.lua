--===========================================================================--
function LuaS_ComShop() --插入任務NPC模版中以開啟對話劇情

	LoadQuestOption( OwnerID() );
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_WANTBUY") , "LuaS_ComShop_1", 0 ); --/我想看看你賣的東西
--	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_EXIT") , "LuaS_dindin_leave", 0 ); --/離開	

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_ComShop_1() --由對話劇情呼叫以開啟商店
	CloseSpeak( OwnerID() );  --關閉對話視窗
	OpenShop()
end
-------------------------------------------------------------------------------------------------------------------------------
function LuaS_MountShop_AB() --坐騎商人

	LoadQuestOption( OwnerID() );
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_MOUNTH_SHOP_A") , "LuaS_MOUTH_SHOP_A", 0 ) --/*租借坐騎
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_MOUNTH_SHOP_B") , "LuaS_MOUTH_SHOP_B", 0 ) --/*租借坐騎

end

function LuaS_MountShop_AC() --坐騎商人

	LoadQuestOption( OwnerID() );
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_MOUNTH_SHOP_A") , "LuaS_MOUTH_SHOP_A", 0 ) --/*租借坐騎
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_MOUNTH_SHOP_C") , "LuaS_MOUTH_SHOP_C", 0 ) --/*租借坐騎

end

function LuaS_MountShop_AD() --坐騎商人

	LoadQuestOption( OwnerID() );
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_MOUNTH_SHOP_A") , "LuaS_MOUTH_SHOP_A", 0 ) --/*租借坐騎
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_MOUNTH_SHOP_D") , "LuaS_MOUTH_SHOP_D", 0 ) --/*租借坐騎

end

function LuaS_MOUTH_SHOP_A()
	CloseSpeak( OwnerID() )
	Beginplot( OwnerID() , "LuaS_MOUTH_SHOP_A2" , 0 )
end
function LuaS_MOUTH_SHOP_B()
	CloseSpeak( OwnerID() )
	Beginplot( OwnerID() , "LuaS_MOUTH_SHOP_B2" , 0 )
end
function LuaS_MOUTH_SHOP_C()
	CloseSpeak( OwnerID() )
	Beginplot( OwnerID() , "LuaS_MOUTH_SHOP_C2" , 0 )
end
function LuaS_MOUTH_SHOP_D()
	CloseSpeak( OwnerID() )
	Beginplot( OwnerID() , "LuaS_MOUTH_SHOP_D2" , 0 )
end
---=================================================================================-------