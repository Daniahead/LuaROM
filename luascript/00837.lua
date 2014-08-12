--路伯爾．卡特-Z-2專業級伐木導師
function Lua_110415_RecipeList_Init()

--	SetPlot( OwnerID() , "Touch" , "Lua_110415_RecipeList_Touch" , 60 );
	
AddRecipe( OwnerID(),550051 );--配方-輕木材
AddRecipe( OwnerID(),550052 );--配方-柳木材
AddRecipe( OwnerID(),550053 );--配方-楓木材
AddRecipe( OwnerID(),550054 );--配方-橡木材
AddRecipe( OwnerID(),550055 );--配方-青斑松材
AddRecipe( OwnerID(),550056 );--配方-冬青木材
AddRecipe( OwnerID(),550057 );--配方-紫杉木材
AddRecipe( OwnerID(),550058 );--配方-塔斯林魔木材
AddRecipe( OwnerID(),550059 );--配方-龍巢巨木材
--AddRecipe( OwnerID(),550060 );--配方-古靈橡樹材
AddRecipe( OwnerID(),550061 );--配方-輕木條
AddRecipe( OwnerID(),550062 );--配方-柳木條
AddRecipe( OwnerID(),550063 );--配方-楓木條
AddRecipe( OwnerID(),550064 );--配方-橡木條
AddRecipe( OwnerID(),550065 );--配方-青斑松條
AddRecipe( OwnerID(),550066 );--配方-冬青木條
AddRecipe( OwnerID(),550067 );--配方-紫杉木條
AddRecipe( OwnerID(),550068 );--配方-塔斯林魔木條
AddRecipe( OwnerID(),550069 );--配方-龍巢巨木條
--AddRecipe( OwnerID(),550070 );--配方-古靈橡樹條


end

function Lua_110415_RecipeList_Touch()
	closeSpeak( OwnerID() )
	GetRecipeList( OwnerID(), TargetID() );	 -- GetRecipeList( Player, NPC );
	
end