--���f�D�}��-Z-2�M�~�ű��ľɮv
function Lua_110414_RecipeList_Init()

--	SetPlot( OwnerID() , "Touch" , "Lua_110414_RecipeList_Touch" , 60 );
	
AddRecipe( OwnerID(), 550101 ); --�t��-�s�]�����
AddRecipe( OwnerID(), 550102 ); --�t��-���߯��
AddRecipe( OwnerID(), 550103 ); --�t��-�W�����
AddRecipe( OwnerID(), 550104 ); --�t��-�㺸�����
AddRecipe( OwnerID(), 550105 ); --�t��-�Ǧ�����
AddRecipe( OwnerID(), 550106 ); --�t��-�ڨF�۸����
AddRecipe( OwnerID(), 550107 ); --�t��-��۱ا�
AddRecipe( OwnerID(), 550108 ); --�t��-�o�H�x��
AddRecipe( OwnerID(), 550109 ); --�t��-�s������
--AddRecipe( OwnerID(), 550110 ); --�t��-�Ҫ��ڷ���
AddRecipe( OwnerID(), 550111 ); --�t��-�s�]�����
AddRecipe( OwnerID(), 550112 ); --�t��-���߯��
AddRecipe( OwnerID(), 550113 ); --�t��-�W�����
AddRecipe( OwnerID(), 550114 ); --�t��-�㺸�����
AddRecipe( OwnerID(), 550115 ); --�t��-�Ǧ�����
AddRecipe( OwnerID(), 550116 ); --�t��-�ڨF�۸����
AddRecipe( OwnerID(), 550117 ); --�t��-��۱إ�
AddRecipe( OwnerID(), 550118 ); --�t��-�o�H�x��
AddRecipe( OwnerID(), 550119 ); --�t��-�s����
--AddRecipe( OwnerID(), 550120 ); --�t��-�Ҫ��ڥ�


end

function Lua_110414_RecipeList_Touch()
	closeSpeak( OwnerID() )
	GetRecipeList( OwnerID(), TargetID() );	 -- GetRecipeList( Player, NPC );
	
end