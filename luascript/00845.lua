--凡城_煉金_110406_瑪莉
function Lua_110406_RecipeList_Init()

--	SetPlot( OwnerID() , "Touch" , "Lua_110406_RecipeList_Touch" , 60 );
AddRecipe( OwnerID(), 550703 ); --療傷藥
AddRecipe( OwnerID(), 550705 ); --靈感藥水
AddRecipe( OwnerID(), 550707 ); --安撫香粉
AddRecipe( OwnerID(), 550709 ); --巫藥
AddRecipe( OwnerID(), 550711 ); --幸運聖水
AddRecipe( OwnerID(), 550713 ); --生命之泉
AddRecipe( OwnerID(), 550715 ); --魔力之泉
AddRecipe( OwnerID(), 550717 ); --特級採集藥水一號
AddRecipe( OwnerID(), 550719 ); --特級採集藥水二號
AddRecipe( OwnerID(), 550721 ); --特級採集藥水三號
AddRecipe( OwnerID(), 550723 ); --強效療傷藥
AddRecipe( OwnerID(), 550725 ); --強效靈感藥水
AddRecipe( OwnerID(), 550727 ); --刺激香水
AddRecipe( OwnerID(), 550729 ); --聖力藥水
AddRecipe( OwnerID(), 550730 ); --火元素親和藥水
end

function Lua_110406_RecipeList_Touch()
	closeSpeak( OwnerID() )
	GetRecipeList( OwnerID(), TargetID() );	 -- GetRecipeList( Player, NPC );
	
end
