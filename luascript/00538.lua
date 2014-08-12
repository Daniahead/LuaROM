function TransferCombo()
	Beginplot( OwnerID() ,"TransferLove", 0 )
end

function TransferLove()	-- 傳送師之愛
	local n = 0
	local DialogStatus = 0

	local TransferSelect = {}
	TransferSelect[0] = { GetString("SO_EXIT") }				-- 離開對話
	TransferSelect[1] = { "Transfer Love" }
	TransferSelect[2] = { "Transfer Zone" }

	DialogCreate( OwnerID() , EM_LuaDialogType_Select , "Where Do You GO ?" )
	for i = 0, table.getn( TransferSelect ) do
		DialogSelectStr( OwnerID() , TransferSelect[i][1] )
	end
	if( DialogSendOpen( OwnerID() ) == false ) then 
		ScriptMessage( OwnerID() , OwnerID() , 1 , GetString("SYS_FIXEQ_DATA_ERROR") , 0 )	--資料送出有問題
		return 0
	end
	while 1 do
		sleep( 1 )
		n = n + 1
		DialogStatus = DialogGetResult( OwnerID() )
		--Say( OwnerID() , DialogStatus )
		if n > 600 then -- 防無窮迴圈，600 = 一分鐘
			ScriptMessage( OwnerID() , OwnerID() , 0, "無窮迴圈或閒置過久", 0 )
			DialogClose( OwnerID() )
			break
		else
			--ScriptMessage( OwnerID() , OwnerID() , 0, "合法迴圈", 0 )
		end

		if ( DialogStatus == 0 ) or ( DialogStatus == -1 ) then
			DialogClose( OwnerID() )
			break
		elseif  ( DialogStatus ~= -2 ) then
			--DialogStatus = DialogStatus + 1
			--DialogClose( OwnerID() )
			break
		end
	end

	if ( DialogStatus == 1 ) then
	local TransferLove = {}
	TransferLove[0] = { GetString("SO_EXIT") }									-- 離開對話
	TransferLove[1] = { GetString("ZONE_HINTERVALE"), 1, -3655, 210, -8596, 125 }						-- 開墾聚落, 克利絲汀
	TransferLove[2] = { GetString("ZONE_ROGSHIRE"), 1, -590, 26, -5885, 120 }						-- 羅格鎮, 蘿拉
	TransferLove[3] = { GetString("ZONE_VARANAS")..GetString("ZONE_VARANAS ADMINISTRATION"), 2, 5495, 50, -3030, 235 }	-- 凡瑞娜絲行政區, 諾薇
	TransferLove[4] = { GetString("ZONE_VARANAS")..GetString("ZONE_VARANAS CENTRAL SQUARE"), 2, 4700, 104, -1920, 235 }	-- 凡瑞娜絲中央廣場區, 娜薇
	TransferLove[5] = { GetString("ZONE_VARANAS")..GetString("ZONE_VARANAS EAST WING"), 2, 4453, 53, -10, 235 }		-- 凡瑞娜絲城下東區, 笛薇
	TransferLove[6] = { GetString("ZONE_VARANAS")..GetString("ZONE_VARANAS WEST WING"), 2, 2885, 56, -770, 235 }		-- 凡瑞娜絲城下西區, 芭薇
	TransferLove[7] = { GetString("ZONE_VARANAS").."chenmenco", 2, 2730, 53, 955, 235 }					-- 凡瑞娜絲城門口, 黎薇
	TransferLove[8] = { GetString("ZONE_ARGENFALL"), 4, -5350, 562, 3330, 75 }						-- 銀瀑村, 亞紗
	TransferLove[9] = { GetString("ZONE_HAROLFE TRADING POST"), 5, -13975, 758, -855, 325 }				-- 哈洛夫交易站, 艾亞亞

	local TransferPlace = TransferDialog( OwnerID(), TransferLove )

	elseif ( DialogStatus == 2 ) then
	local TransferZone = {}
	TransferZone[0] = { GetString("SO_EXIT") }							-- 離開對話
	TransferZone[1] = { GetString("ZONE_WAILING MOUNTAINS") , 1 , -3781 , 216 , -8534 , 0 }			-- 開墾聚落
	TransferZone[2] = { GetString("ZONE_ROGSHIRE") , 1 , -572 , 24 , -5869 , 0 }				-- 羅格鎮
	TransferZone[3] = { GetString("ZONE_VARANAS") , 2 , 4745 , 116 , -1955 , 0 }				-- 凡瑞娜絲城
	TransferZone[4] = { GetString("ZONE_ASLAN") , 4 , -2765 , -37 , 9253 , 0 }				-- 艾索蘭斜谷
	TransferZone[5] = { GetString("ZONE_ARGENFALL") , 4 , -5373 , 578 , 3404 , 0 }				-- 銀瀑村
	TransferZone[6] = { GetString("ZONE_HYBORA HIGHLANDS") , 5 , -14062 , 757 , -894 , 0 }			-- 哈洛夫交易站

	local TransferPlace = TransferDialog( OwnerID(), TransferZone )

	end

end

function TransferDialog( Player, TransferLocation )
	local n = 0
	local DialogStatus = 0

	DialogCreate( Player , EM_LuaDialogType_Select , "Go TO Where ?" )
	for i = 0, table.getn( TransferLocation ) do
		DialogSelectStr( Player , TransferLocation[i][1] )
	end

	if( DialogSendOpen( Player ) == false ) then 
		ScriptMessage( Player , Player , 1 , GetString("SYS_FIXEQ_DATA_ERROR") , 0 )	--資料送出有問題
		return 0
	end

	while 1 do
		sleep( 1 )
		n = n + 1
		DialogStatus = DialogGetResult( Player )
		if n > 300 then -- 防無窮迴圈，300 = 三十秒
			ScriptMessage( Player , Player , 0, "無窮迴圈或閒置過久", 0 )
			DialogClose( Player )
			break
		else
			--ScriptMessage( Player , Player , 0, "合法迴圈", 0 )
		end
		

		if ( DialogStatus == 0 ) or ( DialogStatus == -1 ) then
			DialogClose( OwnerID() )
			break
		elseif ( DialogStatus ~= -2 ) then
			--DialogStatus = DialogStatus + 1
			DialogClose( Player )
			ChangeZone( Player , TransferLocation[DialogStatus][2] , 0 , TransferLocation[DialogStatus][3], TransferLocation[DialogStatus][4] , TransferLocation[DialogStatus][5] , TransferLocation[DialogStatus][6]  )
			break
		end
	end
end