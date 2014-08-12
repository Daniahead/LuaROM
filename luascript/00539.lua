function JobChangeCombo()
	Beginplot( OwnerID() ,"JobChangeLove", 0 )
end

function JobChangeLove()
	local JobList = { "SYS_CLASSNAME_GM", "SYS_CLASSNAME_WARRIOR", "SYS_CLASSNAME_RANGER", "SYS_CLASSNAME_THIEF", "SYS_CLASSNAME_MAGE", "SYS_CLASSNAME_AUGUR", "SYS_CLASSNAME_KNIGHT", "SO_EXIT" }
	--{ "管理者", "戰士", "遊俠", "影行者", "法師", "祭司", "騎士", "離開" }

	local n = 0
	local DialogStatus = 0

	local Player = OwnerID()

	DialogCreate( Player , EM_LuaDialogType_Select , "What Job Do You Change ?" )
	DialogSelectStr( Player , "Change Main Job!!" )
	DialogSelectStr( Player , "Change Sub Job!!" )
	DialogSelectStr( Player , "Change Main & Sub Job!!" )
	DialogSelectStr( Player , GetString("SO_EXIT") )

	if( DialogSendOpen( Player ) == false ) then 
		ScriptMessage( Player , Player , 1 , GetString("SYS_FIXEQ_DATA_ERROR") , 0 )	--資料送出有問題
		return 0
	end
	while 1 do
		sleep( 1 )
		n = n + 1
		DialogStatus = DialogGetResult( Player )
		if n > 600 then -- 防無窮迴圈，600 = 一分鐘
			ScriptMessage( Player , Player , 0, "無窮迴圈或閒置過久", 0 )
			DialogClose( Player )
			break
		else
			--ScriptMessage( Player , Player , 0, "合法迴圈", 0 )
		end

		if ( DialogStatus == 3 ) or ( DialogStatus == -1 ) then
			DialogClose( Player )
			break
		elseif ( DialogStatus == 2 ) then
			BeginPlot(OwnerID() , "Sys_ChangeJob" , 0 )
			DialogClose( Player )
			break
		elseif  ( DialogStatus == 0 ) then
			local JobChange = JobChangeDialog( JobList, "Main" )
			DialogClose( Player )
			break
		elseif ( DialogStatus == 1 ) then
			local JobChange = JobChangeDialog( JobList, "Sub" )
			DialogClose( Player )
			break
		end
	end



end

function JobChangeDialog( JobList, MorS )
	local n = 0
	local DialogStatus = 0

	local Player = OwnerID()

	DialogCreate( Player , EM_LuaDialogType_Select , "What Job Do You Change ?" )
	for i = 1, table.getn( JobList ) do
		DialogSelectStr( Player , GetString(JobList [i]) )
	end
	if( DialogSendOpen( Player ) == false ) then 
		ScriptMessage( Player , Player , 1 , GetString("SYS_FIXEQ_DATA_ERROR") , 0 )	--資料送出有問題
		return 0
	end
	while 1 do
		sleep( 1 )
		n = n + 1
		DialogStatus = DialogGetResult( Player )
		if n > 600 then -- 防無窮迴圈，600 = 一分鐘
			ScriptMessage( Player , Player , 0, "無窮迴圈或閒置過久", 0 )
			DialogClose( Player )
			break
		else
			--ScriptMessage( Player , Player , 0, "合法迴圈", 0 )
		end

		if ( DialogStatus == 7 ) or ( DialogStatus == -1 ) then
			DialogClose( Player )
			break
		elseif  ( DialogStatus ~= -2 ) then
			--Say( Player , "Change Job to "..JobList [i] )
			if ( MorS == "Main" ) then
				WriteRoleValue( Player , EM_RoleValue_VOC , DialogStatus )
			elseif ( MorS == "Sub" ) then
				WriteRoleValue( Player , EM_RoleValue_VOC_SUB , DialogStatus )
			end
			DialogClose( Player )
			break
		end
	end

end