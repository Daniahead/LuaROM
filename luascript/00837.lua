--���B���D�d�S-Z-2�M�~�ť��ɮv
function Lua_110415_RecipeList_Init()

--	SetPlot( OwnerID() , "Touch" , "Lua_110415_RecipeList_Touch" , 60 );
	
AddRecipe( OwnerID(),550051 );--�t��-�����
AddRecipe( OwnerID(),550052 );--�t��-�h���
AddRecipe( OwnerID(),550053 );--�t��-�����
AddRecipe( OwnerID(),550054 );--�t��-����
AddRecipe( OwnerID(),550055 );--�t��-�C���Q��
AddRecipe( OwnerID(),550056 );--�t��-�V�C���
AddRecipe( OwnerID(),550057 );--�t��-�������
AddRecipe( OwnerID(),550058 );--�t��-�𴵪L�]���
AddRecipe( OwnerID(),550059 );--�t��-�s�_�����
--AddRecipe( OwnerID(),550060 );--�t��-�j�F����
AddRecipe( OwnerID(),550061 );--�t��-�����
AddRecipe( OwnerID(),550062 );--�t��-�h���
AddRecipe( OwnerID(),550063 );--�t��-�����
AddRecipe( OwnerID(),550064 );--�t��-����
AddRecipe( OwnerID(),550065 );--�t��-�C���Q��
AddRecipe( OwnerID(),550066 );--�t��-�V�C���
AddRecipe( OwnerID(),550067 );--�t��-�������
AddRecipe( OwnerID(),550068 );--�t��-�𴵪L�]���
AddRecipe( OwnerID(),550069 );--�t��-�s�_�����
--AddRecipe( OwnerID(),550070 );--�t��-�j�F����


end

function Lua_110415_RecipeList_Touch()
	closeSpeak( OwnerID() )
	GetRecipeList( OwnerID(), TargetID() );	 -- GetRecipeList( Player, NPC );
	
end