--黑曜_伐木_110815_優瑟
function Lua_110815_RecipeList_Init()
--	SetPlot( OwnerID() , "Touch" , "Lua_110815_RecipeList_Touch" , 60 );
AddRecipe( OwnerID(), 550051 ); --配方-輕木材
AddRecipe( OwnerID(), 550052 ); --配方-柳木材
AddRecipe( OwnerID(), 550053 ); --配方-楓木材
AddRecipe( OwnerID(), 550054 ); --配方-橡木材
AddRecipe( OwnerID(), 550055 ); --配方-青斑松材
AddRecipe( OwnerID(), 550056 ); --配方-冬青木材
AddRecipe( OwnerID(), 550057 ); --配方-紫杉木材
AddRecipe( OwnerID(), 550058 ); --配方-塔斯林魔木材
AddRecipe( OwnerID(), 550059 ); --配方-龍巢巨木材
AddRecipe( OwnerID(), 550060 ); --配方-古靈橡樹材
AddRecipe( OwnerID(), 550061 ); --配方-輕木條
AddRecipe( OwnerID(), 550062 ); --配方-柳木條
AddRecipe( OwnerID(), 550063 ); --配方-楓木條
AddRecipe( OwnerID(), 550064 ); --配方-橡木條
AddRecipe( OwnerID(), 550065 ); --配方-青斑松條
AddRecipe( OwnerID(), 550066 ); --配方-冬青木條
AddRecipe( OwnerID(), 550067 ); --配方-紫杉木條
AddRecipe( OwnerID(), 550068 ); --配方-塔斯林魔木條
AddRecipe( OwnerID(), 550069 ); --配方-龍巢巨木條
AddRecipe( OwnerID(), 550070 ); --配方-古靈橡樹條
AddRecipe( OwnerID(), 550186 ); --配方-風鈴木木材
AddRecipe( OwnerID(), 550187 ); --配方-地藤根木材
AddRecipe( OwnerID(), 550188 ); --配方-千年木木材
AddRecipe( OwnerID(), 550189 ); --配方-龍鬚根木材
AddRecipe( OwnerID(), 550190 ); --配方-聖木木材
AddRecipe( OwnerID(), 550191 ); --配方-妖精木材
AddRecipe( OwnerID(), 550192 ); --配方-遠古木材
AddRecipe( OwnerID(), 550193 ); --配方-風鈴木木條
AddRecipe( OwnerID(), 550194 ); --配方-地藤根木條
AddRecipe( OwnerID(), 550195 ); --配方-千年木木條
AddRecipe( OwnerID(), 550196 ); --配方-龍鬚根木條
AddRecipe( OwnerID(), 550197 ); --配方-聖木木條
AddRecipe( OwnerID(), 550198 ); --配方-妖精木條
AddRecipe( OwnerID(), 550199 ); --配方-遠古木條
AddRecipe( OwnerID(), 550200 ); --配方-風鈴木木板
AddRecipe( OwnerID(), 550201 ); --配方-地藤根木板
AddRecipe( OwnerID(), 550202 ); --配方-千年木木板
AddRecipe( OwnerID(), 550203 ); --配方-龍鬚根木板
AddRecipe( OwnerID(), 550204 ); --配方-聖木木板
AddRecipe( OwnerID(), 550205 ); --配方-妖精木板
AddRecipe( OwnerID(), 550206 ); --配方-遠古木板
end

function Lua_110815_RecipeList_Touch()
	closeSpeak( OwnerID() )
	GetRecipeList( OwnerID(), TargetID() );	 -- GetRecipeList( Player, NPC );
	
end