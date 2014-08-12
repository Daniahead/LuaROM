
function LuaS_MOUTH_SHOP_A2()
	DialogCreate( OwnerID() , EM_LuaDialogType_YesNo  , GetString("SAY_MOUTH_SHOP_A")); --/*租借棕馬需要 9 銀，確定租借嗎？
	DialogSelectStr( OwnerID() , GetString("SO_YES") );
	DialogSelectStr( OwnerID() , GetString("SO_NO") );

	if( DialogSendOpen( OwnerID() ) == false ) then 
		ScriptMessage( OwnerID(),OwnerID(),1,GetString("SYS_FIXEQ_DATA_ERROR"),0)	
		--資料送出有問題
		return;
	end
	local SelectID = Hsiang_GetDialogResoult( OwnerID() );
	DialogClose( OwnerID() )

	if SelectID == 0  then
--		local Mount = {[1]=501417,[2]=501418,[3]=501440,[4]=501441,[5]=501444,[6]=501445,[7]=501446}
		local Mount = {[1]=201482,[2]=201488,[3]=201489,[4]=201490,[5]=201468,[6]=201469,[7]=201470}
		local Check = 0
		for i = 1 , table.getn(Mount),1 do
--			if CheckBuff( OwnerID() , Mount[i] ) == true then
			if CountBodyItem( OwnerID() , Mount[i] ) > 0 then
				Check = 1
			end
		end 
		if ReadRoleValue( OwnerID() , EM_RoleValue_Money ) < 900 then
			ScriptMessage( OwnerID(), TargetID(), 1, GetString("SAY_MOUTH_ERROR_A"), 0 ); --/*你身上的錢不夠。
		elseif Check == 1 then
			ScriptMessage( OwnerID(), TargetID(), 1, GetString("SAY_MOUTH_ERROR_B"), 0 ); 
		else
			if AddRoleValue( OwnerID() , EM_RoleValue_Money , -900 ) then
--				CastSpell( OwnerID() , TargetID() , 491075 )
				GiveBodyItem( OwnerID() , 201489 , 1 )
			end
		end
		return 
	elseif SelectID == 1  then
		return 
	else 
		return
	end
end

function LuaS_MOUTH_SHOP_B2()
	DialogCreate( OwnerID() , EM_LuaDialogType_YesNo  , GetString("SAY_MOUTH_SHOP_B")); --/*租借白馬需要 9 銀，確定租借嗎？
	DialogSelectStr( OwnerID() , GetString("SO_YES") );
	DialogSelectStr( OwnerID() , GetString("SO_NO") );

	if( DialogSendOpen( OwnerID() ) == false ) then 
		ScriptMessage( OwnerID(),OwnerID(),1,GetString("SYS_FIXEQ_DATA_ERROR"),0)	
		--資料送出有問題
		return;
	end
	local SelectID = Hsiang_GetDialogResoult( OwnerID() );
	DialogClose( OwnerID() )

	if SelectID == 0  then
--		local Mount = {[1]=501417,[2]=501418,[3]=501440,[4]=501441,[5]=501444,[6]=501445,[7]=501446}
		local Mount = {[1]=201482,[2]=201488,[3]=201489,[4]=201490,[5]=201468,[6]=201469,[7]=201470}
		local Check = 0
		for i = 1 , table.getn(Mount),1 do
--			if CheckBuff( OwnerID() , Mount[i] ) == true then
			if CountBodyItem( OwnerID() , Mount[i] ) > 0 then
				Check = 1
			end
		end 
		if ReadRoleValue( OwnerID() , EM_RoleValue_Money ) < 900 then
			ScriptMessage( OwnerID(), TargetID(), 1, GetString("SAY_MOUTH_ERROR_A"), 0 ); --/*你身上的錢不夠。
		elseif Check == 1 then
			ScriptMessage( OwnerID(), TargetID(), 1, GetString("SAY_MOUTH_ERROR_B"), 0 ); 
		else
			if AddRoleValue( OwnerID() , EM_RoleValue_Money , -900 ) then
--				CastSpell( OwnerID() , TargetID() , 491035 )
				GiveBodyItem( OwnerID() , 201482 , 1 )
			end
		end
		return 
	elseif SelectID == 1  then
		return 
	else 
		return
	end
end

function LuaS_MOUTH_SHOP_C2()
	DialogCreate( OwnerID() , EM_LuaDialogType_YesNo  , GetString("SAY_MOUTH_SHOP_C")); --/*租借花斑馬需要 9 銀，確定租借嗎？
	DialogSelectStr( OwnerID() , GetString("SO_YES") );
	DialogSelectStr( OwnerID() , GetString("SO_NO") );

	if( DialogSendOpen( OwnerID() ) == false ) then 
		ScriptMessage( OwnerID(),OwnerID(),1,GetString("SYS_FIXEQ_DATA_ERROR"),0)	
		--資料送出有問題
		return;
	end
	local SelectID = Hsiang_GetDialogResoult( OwnerID() );
	DialogClose( OwnerID() )

	if SelectID == 0  then
--		local Mount = {[1]=501417,[2]=501418,[3]=501440,[4]=501441,[5]=501444,[6]=501445,[7]=501446}
		local Mount = {[1]=201482,[2]=201488,[3]=201489,[4]=201490,[5]=201468,[6]=201469,[7]=201470}
		local Check = 0
		for i = 1 , table.getn(Mount),1 do
--			if CheckBuff( OwnerID() , Mount[i] ) == true then
			if CountBodyItem( OwnerID() , Mount[i] ) > 0 then
				Check = 1
			end
		end 
		if ReadRoleValue( OwnerID() , EM_RoleValue_Money ) < 900 then
			ScriptMessage( OwnerID(), TargetID(), 1, GetString("SAY_MOUTH_ERROR_A"), 0 ); --/*你身上的錢不夠。
		elseif Check == 1 then
			ScriptMessage( OwnerID(), TargetID(), 1, GetString("SAY_MOUTH_ERROR_B"), 0 ); 
		else
			if AddRoleValue( OwnerID() , EM_RoleValue_Money , -900 ) then
--				CastSpell( OwnerID() , TargetID() , 491074 )
				GiveBodyItem( OwnerID() , 201488 , 1 )
			end
		end
		return 
	elseif SelectID == 1  then
		return 
	else 
		return
	end
end

function LuaS_MOUTH_SHOP_D2()
	DialogCreate( OwnerID() , EM_LuaDialogType_YesNo  , GetString("SAY_MOUTH_SHOP_D")); --/*租借黑馬需要 9 銀，確定租借嗎？
	DialogSelectStr( OwnerID() , GetString("SO_YES") );
	DialogSelectStr( OwnerID() , GetString("SO_NO") );

	if( DialogSendOpen( OwnerID() ) == false ) then 
		ScriptMessage( OwnerID(),OwnerID(),1,GetString("SYS_FIXEQ_DATA_ERROR"),0)	
		--資料送出有問題
		return;
	end
	local SelectID = Hsiang_GetDialogResoult( OwnerID() );
	DialogClose( OwnerID() )

	if SelectID == 0  then
--		local Mount = {[1]=501417,[2]=501418,[3]=501440,[4]=501441,[5]=501444,[6]=501445,[7]=501446}
		local Mount = {[1]=201482,[2]=201488,[3]=201489,[4]=201490,[5]=201468,[6]=201469,[7]=201470}
		local Check = 0
		for i = 1 , table.getn(Mount),1 do
--			if CheckBuff( OwnerID() , Mount[i] ) == true then
			if CountBodyItem( OwnerID() , Mount[i] ) > 0 then
				Check = 1
			end
		end 
		if ReadRoleValue( OwnerID() , EM_RoleValue_Money ) < 900 then
			ScriptMessage( OwnerID(), TargetID(), 1, GetString("SAY_MOUTH_ERROR_A"), 0 ); --/*你身上的錢不夠。
		elseif Check == 1 then
			ScriptMessage( OwnerID(), TargetID(), 1, GetString("SAY_MOUTH_ERROR_B"), 0 ); 
		else
			if AddRoleValue( OwnerID() , EM_RoleValue_Money , -900 ) then
--				CastSpell( OwnerID() , TargetID() , 491076 )
				GiveBodyItem( OwnerID() , 201490 , 1 )
			end
		end
		return 
	elseif SelectID == 1  then
		return 
	else 
		return
	end
end