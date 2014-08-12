--露易絲．卡本特-Z-2入門級木工導師
function Lua_110412_RecipeList_Init()

--	SetPlot( OwnerID() , "Touch" , "Lua_110412_RecipeList_Touch" , 60 );
	
AddRecipe( OwnerID(), 550271 ); --細木弓
AddRecipe( OwnerID(), 550290 ); --鏡莎花
AddRecipe( OwnerID(), 550302 ); --長杖
AddRecipe( OwnerID(), 550327 ); --木製短杖
AddRecipe( OwnerID(), 550257 ); --簡易弩
AddRecipe( OwnerID(), 550271 ); --堅木弓
AddRecipe( OwnerID(), 550304 ); --見習法杖
AddRecipe( OwnerID(), 550329 ); --魔力短杖
AddRecipe( OwnerID(), 550258 ); --石弩
AddRecipe( OwnerID(), 550291 ); --巫魂圖騰
AddRecipe( OwnerID(), 550275 ); --硬短弓
AddRecipe( OwnerID(), 550305 ); --月之杖
AddRecipe( OwnerID(), 550782 ); --魔柳錫杖
AddRecipe( OwnerID(), 550261 ); --連弩
AddRecipe( OwnerID(), 550308 ); --莎迪斯
AddRecipe( OwnerID(), 550761 ); --巫醫筆記
AddRecipe( OwnerID(), 550277 ); --戰弓
AddRecipe( OwnerID(), 550262 ); --尖尾弩
AddRecipe( OwnerID(), 550333 ); --高級權杖
AddRecipe( OwnerID(), 550311 ); --巫術法杖
AddRecipe( OwnerID(), 550294 ); --魔女之髮
AddRecipe( OwnerID(), 550278 ); --綠矮人角弓
AddRecipe( OwnerID(), 550313 ); --羽之杖
AddRecipe( OwnerID(), 550335 ); --占卜權杖
AddRecipe( OwnerID(), 550264 ); --彩蝶之弩
AddRecipe( OwnerID(), 550764 ); --毒蛇藤
AddRecipe( OwnerID(), 550314 ); --聖沐法杖
AddRecipe( OwnerID(), 550281 ); --勁羽弓
AddRecipe( OwnerID(), 550266 ); --鋼牙弩
AddRecipe( OwnerID(), 550336 ); --魔骨權杖
AddRecipe( OwnerID(), 550315 ); --惡靈之勾
AddRecipe( OwnerID(), 550297 ); --獅鷲獸的翅膀
AddRecipe( OwnerID(), 550283 ); --精準之弓
AddRecipe( OwnerID(), 550318 ); --光陰之杖
AddRecipe( OwnerID(), 550337 ); --神鳥權杖
AddRecipe( OwnerID(), 550267 ); --翼弩
AddRecipe( OwnerID(), 550767 ); --巫醫魁儡
AddRecipe( OwnerID(), 550320 ); --奇蹟法杖


end

function Lua_110412_RecipeList_Touch()
	closeSpeak( OwnerID() )
	GetRecipeList( OwnerID(), TargetID() );	 -- GetRecipeList( Player, NPC );
	
end