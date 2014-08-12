function LuaI_420592()	--魔力之源初始劇情
	CastSpell( OwnerID(),OwnerID(),490100)  -- 出生後幫自己上特效魔法
	SetPlot( OwnerID() , "touch" , "LuaI_420592_01" , 40 );

end
function LuaI_420592_01()

	local resultZ = "";

if CountBodyItem( OwnerID() , 201251 ) == 1 then			--/* 判斷是否有古符文
	if CountBodyItem( OwnerID() , 201249 ) >= 5 then  --/* 判斷是否有五顆封印野生拔忽的魔法晶球
	BeginCastBar( OwnerID(), GetString("EM_420592_0") , 30 , ruFUSION_ACTORSTATE_CRAFTING_BEGIN , ruFUSION_ACTORSTATE_CRAFTING_END , 0 );
		while 1 do
			sleep( 2 );
			local CastBarStatus = CheckCastBar( OwnerID() );

		if ( CastBarStatus ~= 0 ) then 
			if ( CastBarStatus > 0) then -- 成功
				resultZ = "OKOK"
				EndCastBar( OwnerID() , CastBarStatus )
				break;
			elseif ( CastBarStatus < 0 ) then -- 失敗
				resultZ = "DAME"
				EndCastBar( OwnerID() , CastBarStatus )
				break;
			end
		end
	end
	if ( resultZ == "OKOK" ) then
		DelBodyItem ( OwnerID() , 201249 , 5 )		--/* 刪除五顆封印野生拔忽的魔法晶球
		DelBodyItem ( OwnerID() , 201251 , 1 )		--/* 刪除古符文

		ScriptMessage( OwnerID(), OwnerID(), 0, GetString("ST_201251_1") , 0 )	--你召喚了拔忽王的亡靈！！！

			local Obj = Role:new( OwnerID() ) 
			local BaseX = Obj :X()
			local BaseY = Obj :Y();
			local BaseZ = Obj :Z();
			local BaseDir = Obj:Dir();
			local kk = CreateObj(100366, BaseX, BaseY, BaseZ, BaseDir -180, 1 )	
			AddtoPartition( kk , 0 )
			SetAttack( kk , TargetID())
			sleep(60)
		while 1 do
				if ReadRoleValue( kk , EM_RoleValue_AttackTargetID ) ~= 0 and CheckID(kk ) == true then  --檢查是否離開戰鬥
					sleep(60)	-- 六秒檢查一次	
				else
					if CheckID( kk ) == true then
					DelObj( kk )
					end 
					sleep( 300 )
					break		
				end
				sleep(1)
		end
	end
	else
		ScriptMessage( OwnerID(), OwnerID(), 0, GetString("ST_201251_2") , 0 )	--無法召喚，你沒有足夠的召喚物品！
	end
end
end