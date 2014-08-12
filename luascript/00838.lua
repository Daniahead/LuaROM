--邁恩．迪格-Z-2專業級挖礦導師
function Lua_110416_RecipeList_Init()

--	SetPlot( OwnerID() , "Touch" , "Lua_110416_RecipeList_Touch" , 60 );
	
	AddRecipe( OwnerID(), 550001 ); --配方-黃銅砂
	AddRecipe( OwnerID(), 550002 ); --配方-錫砂
	AddRecipe( OwnerID(), 550003 ); --配方-赤鐵砂
	AddRecipe( OwnerID(), 550004 ); --配方-紫銅砂
	AddRecipe( OwnerID(), 550005 ); --配方-闇晶砂
	AddRecipe( OwnerID(), 550006 ); --配方-白銀砂
	AddRecipe( OwnerID(), 550007 ); --配方-巫鐵砂
	AddRecipe( OwnerID(), 550008 ); --配方-祕銀砂
	AddRecipe( OwnerID(), 550009 ); --配方-深淵水銀砂
	--AddRecipe( OwnerID(), 550010 ); --配方-符文黑曜砂
	AddRecipe( OwnerID(), 550011 ); --配方-黃銅塊
	AddRecipe( OwnerID(), 550012 ); --配方-錫塊
	AddRecipe( OwnerID(), 550013 ); --配方-赤鐵塊
	AddRecipe( OwnerID(), 550014 ); --配方-紫銅塊
	AddRecipe( OwnerID(), 550015 ); --配方-闇晶塊
	AddRecipe( OwnerID(), 550016 ); --配方-白銀塊
	AddRecipe( OwnerID(), 550017 ); --配方-巫鐵塊
	AddRecipe( OwnerID(), 550018 ); --配方-祕銀塊
	AddRecipe( OwnerID(), 550019 ); --配方-深淵水銀塊
	--AddRecipe( OwnerID(), 550020 ); --配方-符文黑曜塊


end

function Lua_110416_RecipeList_Touch()
	closeSpeak( OwnerID() )
	GetRecipeList( OwnerID(), TargetID() );	 -- GetRecipeList( Player, NPC );
	
end
