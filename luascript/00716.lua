function LuaI_421237()
	if CheckAcceptQuest( OwnerID() , 421237 ) == true  then
		DelBodyItem ( OwnerID() , 202400 , 1 )		--/* 刪除火種袋
		ScriptMessage( OwnerID() , OwnerID() , 1 , GetString("SC_421237_0_0") , 0 )	--這味道真刺鼻！
		local gar = LuaFunc_CreateObjByObj ( 111229 , TargetID() )
		AddtoPartition( gar , 0 )
		sleep(50)
		DelObj( gar )
	end
end