function LuaQ_421129()	-- 背包的主人
	ClearBorder( OwnerID() )
	AddBorderPage( OwnerID() , GetQuestDetail( 421129 , 1 ) )
	ShowBorder( OwnerID() , 421129 , GetObjNameByGUID( 421129 ) , "ScriptBorder_Texture_Paper" )
end

function LuaQ_421134()	-- 謎樣的谷地礦石
	ClearBorder( OwnerID() )
	AddBorderPage( OwnerID() , GetQuestDetail( 421134 , 1 ) )
	ShowBorder( OwnerID() , 421134 , GetObjNameByGUID( 421134 ) , "ScriptBorder_Texture_Paper" )
end

function LuaQ_421135()	-- 新手鐵匠的身世
	ClearBorder( OwnerID() )
	AddBorderPage( OwnerID() , GetQuestDetail( 421135 , 1 ) )
	ShowBorder( OwnerID() , 421135 , GetObjNameByGUID( 421135 ) , "ScriptBorder_Texture_Paper" )
end

function LuaQ_421272()	-- 失蹤人口
	ClearBorder( OwnerID() )
	AddBorderPage( OwnerID() , GetQuestDetail( 421272, 1 ) )
	ShowBorder( OwnerID() , 421272, GetObjNameByGUID( 202430 ) , "ScriptBorder_Texture_Paper" )
end