function Lua_202800_Use()
	BeginPlot( OwnerID() , "Lua_202800_Effect" , 0 )
end
function Lua_202800_Effect()
	DialogCreate( OwnerID() , EM_LuaDialogType_Input  , GetString("SC_202800_1")); 
	DialogSelectStr( OwnerID() , GetString("SC_202800_2") );
	DialogSelectStr( OwnerID() , GetString("SC_202800_3") );

	if( DialogSendOpen( OwnerID() ) == false ) then 
		ScriptMessage( OwnerID(),OwnerID(),1,GetString("SYS_FIXEQ_DATA_ERROR"),0)	
		--資料送出有問題
		return;
	end

	local SelectID = -2;
	local inputstring = "";
	for i = 0 , 600 , 1 do
		Sleep( 1 );
		SelectID = DialogGetResult( OwnerID() );
		if ( SelectID ~= -2 ) and ( SelectID ~= -1 ) and i < 600 then
			inputstring = DialogGetInputResult( OwnerID() );
			if( SelectID == 0 ) then
				if CountBodyItem( OwnerID() , 202800 ) > 1 then
					DelBodyItem( OwnerID() , 202800 , 1 )
					SetCustomTitleString( OwnerID(), inputstring );
					ScriptMessage( OwnerID(),OwnerID(),1,GetString("SC_202800_4"),C_SYSTEM)	
				else
					ScriptMessage( OwnerID(),OwnerID(),1,GetString("SYS_FIXEQ_DATA_ERROR"),0)	
				end
			end
			DialogClose( OwnerID() )
			break;
		elseif i == 600 then
			ScriptMessage( OwnerID(),OwnerID(),1,GetString("SC_OVERTIME_MSG"),0)	
			DialogClose( OwnerID() )		
			break
		end
	end

--	DialogClose( OwnerID() );	

end
