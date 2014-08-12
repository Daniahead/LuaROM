function LuaFunc_LivinSkill_Dialog(String)
	DialogCreate( OwnerID() , EM_LuaDialogType_YesNo  , String);
	DialogSelectStr( OwnerID() , GetString("SO_YES") );
	DialogSelectStr( OwnerID() , GetString("SO_NO") );

	if( DialogSendOpen( OwnerID() ) == false ) then 
		ScriptMessage( OwnerID(),OwnerID(),1,GetString("SYS_FIXEQ_DATA_ERROR"),0)	
		--資料送出有問題
		return 0
	end
	
	local SelectID = Hsiang_GetDialogResoult( OwnerID() );
	if SelectID == 0  then
		DialogClose( OwnerID() )
		CastSpell( OwnerID() , OwnerID() , 491010 )
		sleep(5)
		return 1
	elseif SelectID == 1  then
		DialogClose( OwnerID() )
		return 0
	else 
		DialogClose( OwnerID() )
		return 0
	end

end