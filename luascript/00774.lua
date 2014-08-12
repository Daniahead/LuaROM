-------------------------------------------------------┣钵才ゅ

function LuaI_202683_0() 
	ClearBorder( OwnerID() )
	AddBorderPage( OwnerID(), GetQuestDetail( 421339, 1  ) )
	ShowBorder( OwnerID(), 421339, GetObjNameByGUID(GetUseItemGUID(OwnerID())), "ScriptBorder_Texture_Paper" )	
end

----------------------------------------------------------皗獹才ゅ酬风疭
function luaI_202686_Effect()
             	--ScriptMessage( OwnerID(), OwnerID(), 1 , GetString("SC__0") , 1) --#才ゅ祇笵眏
	--ScriptMessage( OwnerID(), OwnerID(), 0 , GetString("SC__0") , 1) --#才ゅ祇笵眏
	local Obj = Role:new( OwnerID() ) 
	local BaseX = Obj :X()
	local BaseY = Obj :Y()
	local BaseZ = Obj :Z()
	local BaseDir = Obj:Dir()
	local KingRest  = CreateObj(100738, BaseX, BaseY, BaseZ, BaseDir -180, 1 )	
	AddtoPartition( KingRest , 0 )
	SetAttack( KingRest , TargetID())      
	BeginPlot( KingRest , "LuaN_100873_act" , 0 )	
end

function LuaN_100873_act()
	--while 1 do	
	for i = 0 , 50 , 1 do
		local MaxHP = ReadRoleValue( OwnerID() , EM_RoleValue_MaxHP )
		local NowHP = ReadRoleValue( OwnerID() , EM_RoleValue_HP )
		local HPPercent =( NowHP / MaxHP)*100
		local n = 0
		sleep(30)
		Say( OwnerID(),  HPPercent ) 	
		--n = n + 1
		--if n > 20 then -- ň礚絘癹伴
			--ScriptMessage( OwnerID() , OwnerID() , 0 , "礚絘癹伴", 0 )
			--break
		--end
		if HPPercent <= 60 and HPPercent >= 30 then
			--ScriptMessage( OwnerID() , OwnerID() , 1 , "Berserk Mode!", 0 )
			Say( OwnerID(),  "Berserk Mode!" ) 
		end
	end
	--end
end