--===========================================================================--
function LuaS_ComShop() --���J����NPC�Ҫ����H�}�ҹ�ܼ@��

	LoadQuestOption( OwnerID() );
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_WANTBUY") , "LuaS_ComShop_1", 0 ); --/�ڷQ�ݬݧA�檺�F��
--	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_EXIT") , "LuaS_dindin_leave", 0 ); --/���}	

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_ComShop_1() --�ѹ�ܼ@���I�s�H�}�Ұө�
	CloseSpeak( OwnerID() );  --������ܵ���
	OpenShop()
end
-------------------------------------------------------------------------------------------------------------------------------
function LuaS_MountShop_AB() --���M�ӤH

	LoadQuestOption( OwnerID() );
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_MOUNTH_SHOP_A") , "LuaS_MOUTH_SHOP_A", 0 ) --/*���ɧ��M
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_MOUNTH_SHOP_B") , "LuaS_MOUTH_SHOP_B", 0 ) --/*���ɧ��M

end

function LuaS_MountShop_AC() --���M�ӤH

	LoadQuestOption( OwnerID() );
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_MOUNTH_SHOP_A") , "LuaS_MOUTH_SHOP_A", 0 ) --/*���ɧ��M
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_MOUNTH_SHOP_C") , "LuaS_MOUTH_SHOP_C", 0 ) --/*���ɧ��M

end

function LuaS_MountShop_AD() --���M�ӤH

	LoadQuestOption( OwnerID() );
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_MOUNTH_SHOP_A") , "LuaS_MOUTH_SHOP_A", 0 ) --/*���ɧ��M
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_MOUNTH_SHOP_D") , "LuaS_MOUTH_SHOP_D", 0 ) --/*���ɧ��M

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