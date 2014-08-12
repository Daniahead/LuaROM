--停止噪音

-------------------------------------------------------------------------------------------------------------
--大型機械110148
function LuaI_110148()
	SetPlot( OwnerID() , "touch" , "LuaS_110148_1" , 50 );
end
-------------------------------------------------------------------------------------------------------------
function LuaS_110148_1()
	local result = "";
	if CheckAcceptQuest( OwnerID() ,420165 ) == true and CheckFlag( OwnerID()  , 540789 ) == false then
		if CountBodyItem( OwnerID(), 200696 ) >= 1 then
			BeginCastBar( OwnerID(), GetString("CASTBAR_NAME_04") , 20 , ruFUSION_ACTORSTATE_CRAFTING_BEGIN , ruFUSION_ACTORSTATE_CRAFTING_END , 0 );	-- 停止機械運作
			while 1 do
				sleep( 2 );
				local CastBarStatus = CheckCastBar( OwnerID() );

				if ( CastBarStatus ~= 0 ) then 
					if ( CastBarStatus > 0) then -- 成功
						result = "OKOK"
						EndCastBar( OwnerID() , CastBarStatus )
						break;
					elseif ( CastBarStatus < 0 ) then -- 失敗
						result = "DAME"
						EndCastBar( OwnerID() , CastBarStatus )
						break;
					end
				end
			end

			if ( result == "OKOK" ) then
				ScriptMessage( OwnerID(), OwnerID(), 0, GetString("ST_110148_1") , 0 );	-- 你使用炸藥粉末，停止了大型機械的運作！
				SetFlag( OwnerID()  , 540789 , 1 );
				DelBodyItem ( OwnerID() , 200696, 1 )	;
				CastSpell( TargetID() , TargetID() , 491002 )	-- 大爆炸
				Hide( TargetID() );   --隱藏大型機械
				Sleep( 10 )
				local Destory_Machine = Createobjbyobj( 110670 , TargetID() , 1  ); 
				sleep( 300 );
				Delobj( Destory_Machine );
				Sleep( 10 )
				Show( TargetID() ,0);    --顯示大型機械
			end
			
		else
			ScriptMessage( OwnerID(), OwnerID(), 0, GetString("ST_110148_2") , 0 );	-- 你沒有可以停止機械運作的物品！
		end
	end
	if CheckFlag( OwnerID()  , 540789 ) == true then
		say( OwnerID() , GetString("ST_110148_3") )	-- 已經可以回去獵人營地向科內利烏斯回報了。
	end 
end
-------------------------------------------------------------------------------------------------------------
--Function LuaI_110148()
--	SetPlot( OwnerID(), "touch", "LuaQ_110148_0",40 );    --設定大型機械觸碰劇情
--end
-------------------------------------------------------------------------------------------------------------
--Function LuaQ_110148_0()

--	if CheckAcceptQuest( OwnerID(), 420165 ) ==true and CountBodyItem( OwnerID(), 200696) >= 1 then
--		BeginPlot( TargetID(), "LuaQ_110148_1", 0 );    --檢查任務與任務物品炸藥
--	end

--end

--------------------------------------------------------------------------------------------------------------
--Function LuaQ_110148_1()

--	--CastSpell( OwnerID(), OwnerID(), X爆炸法術特效);
--	Hide( OwnerID() );   --隱藏運作中的機械
--	Local machine =  Createobjbyobj( 110422, OwnerID(), 1  );   --產生被摧毀的機械
--	Sleep( 600 );
--	Delobj( machine );    --刪除被摧毀的機械
--	Show( OwnerID() ,0);    --顯示運作中的機械 

--end