function LuaI_421237()
	if CheckAcceptQuest( OwnerID() , 421237 ) == true  then
		DelBodyItem ( OwnerID() , 202400 , 1 )		--/* �R�����سU
		ScriptMessage( OwnerID() , OwnerID() , 1 , GetString("SC_421237_0_0") , 0 )	--�o���D�u���I
		local gar = LuaFunc_CreateObjByObj ( 111229 , TargetID() )
		AddtoPartition( gar , 0 )
		sleep(50)
		DelObj( gar )
	end
end