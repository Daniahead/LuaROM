-------------------------------------------------------�ǲ��Ť�

function LuaI_202683_0() 
	ClearBorder( OwnerID() )
	AddBorderPage( OwnerID(), GetQuestDetail( 421339, 1  ) )
	ShowBorder( OwnerID(), 421339, GetObjNameByGUID(GetUseItemGUID(OwnerID())), "ScriptBorder_Texture_Paper" )	
end

----------------------------------------------------------�{�G�Ť�l���q�S
function luaI_202686_Effect()
             	--ScriptMessage( OwnerID(), OwnerID(), 1 , GetString("SC__0") , 1) --#�Ť�o�X�@�D�j��
	--ScriptMessage( OwnerID(), OwnerID(), 0 , GetString("SC__0") , 1) --#�Ť�o�X�@�D�j��
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
		--if n > 20 then -- ���L�a�j��
			--ScriptMessage( OwnerID() , OwnerID() , 0 , "�L�a�j��", 0 )
			--break
		--end
		if HPPercent <= 60 and HPPercent >= 30 then
			--ScriptMessage( OwnerID() , OwnerID() , 1 , "Berserk Mode!", 0 )
			Say( OwnerID(),  "Berserk Mode!" ) 
		end
	end
	--end
end