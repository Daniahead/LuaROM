function TEST_nana_01( )
                -- OwnerID()	 保護的 NPC
	-- TargetID()	執行任務的玩家或隊伍

	-- FlagID		路徑旗子群組代瑪
	-- Flag		路徑旗子代瑪

 	local FlagID	= 0;
	local FlagCount = GetMoveFlagCount ( FlagID ) - 1;

	Say( OwnerID(), "Flag Count:" .. FlagCount );

	local Flag		= 8;

	while 1 do

		-- DEBUG 用
		local Owner = Role:new( OwnerID() ) 
		Say( OwnerID(), "X: " .. Owner:X() .. ", Y:" .. Owner:Z()   );

		if( NPC_MoveToFlag( OwnerID() ,FlagID , Flag , 0 ) == true ) then
			
			-- 測試用
			Say( OwnerID(), "抓到咕咕雞了！" .. Flag );

			-- 到達事件點 1
			if( Flag == 3 ) then
				Say( OwnerID(), "我是三號雞" );
			end

			-- 檢查是不是到終點了
			if( Flag == 5 ) then

				-- 給予物品
				S_GiveItem( 200033, 1 );
				
							
				S_ResetObj(  OwnerID() );

				break;
			end

			Flag = Flag+1;

		end

		sleep( 1 );

	end

end