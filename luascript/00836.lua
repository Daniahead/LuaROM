--海柏．迪格-Z-2專業級採藥導師
function Lua_110414_RecipeList_Init()

--	SetPlot( OwnerID() , "Touch" , "Lua_110414_RecipeList_Touch" , 60 );
	
AddRecipe( OwnerID(), 550101 ); --配方-山魔楊草束
AddRecipe( OwnerID(), 550102 ); --配方-野漿草束
AddRecipe( OwnerID(), 550103 ); --配方-苦葉草束
AddRecipe( OwnerID(), 550104 ); --配方-艾爾香草束
AddRecipe( OwnerID(), 550105 ); --配方-暮色蘭束
AddRecipe( OwnerID(), 550106 ); --配方-巴沙石葉草束
AddRecipe( OwnerID(), 550107 ); --配方-月石斛束
AddRecipe( OwnerID(), 550108 ); --配方-罪人掌束
AddRecipe( OwnerID(), 550109 ); --配方-龍葵溶束
--AddRecipe( OwnerID(), 550110 ); --配方-曼陀蘿溶束
AddRecipe( OwnerID(), 550111 ); --配方-山魔楊草汁
AddRecipe( OwnerID(), 550112 ); --配方-野漿草汁
AddRecipe( OwnerID(), 550113 ); --配方-苦葉草汁
AddRecipe( OwnerID(), 550114 ); --配方-艾爾香草汁
AddRecipe( OwnerID(), 550115 ); --配方-暮色蘭汁
AddRecipe( OwnerID(), 550116 ); --配方-巴沙石葉草汁
AddRecipe( OwnerID(), 550117 ); --配方-月石斛汁
AddRecipe( OwnerID(), 550118 ); --配方-罪人掌汁
AddRecipe( OwnerID(), 550119 ); --配方-龍葵汁
--AddRecipe( OwnerID(), 550120 ); --配方-曼陀蘿汁


end

function Lua_110414_RecipeList_Touch()
	closeSpeak( OwnerID() )
	GetRecipeList( OwnerID(), TargetID() );	 -- GetRecipeList( Player, NPC );
	
end