--���`_���q_110814_���w
function Lua_110814_RecipeList_Init()

--	SetPlot( OwnerID() , "Touch" , "Lua_110814_RecipeList_Touch" , 60 );
AddRecipe( OwnerID(), 550001 ); --�t��-���ɬ�
AddRecipe( OwnerID(), 550002 ); --�t��-����
AddRecipe( OwnerID(), 550003 ); --�t��-���K��
AddRecipe( OwnerID(), 550004 ); --�t��-���ɬ�
AddRecipe( OwnerID(), 550005 ); --�t��-���
AddRecipe( OwnerID(), 550006 ); --�t��-�ջȬ�
AddRecipe( OwnerID(), 550007 ); --�t��-���K��
AddRecipe( OwnerID(), 550008 ); --�t��-���Ȭ�
AddRecipe( OwnerID(), 550009 ); --�t��-�`�W���Ȭ�
--AddRecipe( OwnerID(), 550010 ); --�t��-�Ť���`��
AddRecipe( OwnerID(), 550011 ); --�t��-���ɶ�
AddRecipe( OwnerID(), 550012 ); --�t��-����
AddRecipe( OwnerID(), 550013 ); --�t��-���K��
AddRecipe( OwnerID(), 550014 ); --�t��-���ɶ�
AddRecipe( OwnerID(), 550015 ); --�t��-���
AddRecipe( OwnerID(), 550016 ); --�t��-�ջȶ�
AddRecipe( OwnerID(), 550017 ); --�t��-���K��
AddRecipe( OwnerID(), 550018 ); --�t��-���ȶ�
AddRecipe( OwnerID(), 550019 ); --�t��-�`�W���ȶ�
--AddRecipe( OwnerID(), 550020 ); --�t��-�Ť���`��
AddRecipe( OwnerID(), 550151 ); --�t��-���K�Ь�
AddRecipe( OwnerID(), 550152 ); --�t��-�ŦB�۬�
AddRecipe( OwnerID(), 550153 ); --�t��-�j������
AddRecipe( OwnerID(), 550154 ); --�t��-���Q������
AddRecipe( OwnerID(), 550155 ); --�t��-�̴����|��
AddRecipe( OwnerID(), 550156 ); --�t��-�H��������
AddRecipe( OwnerID(), 550157 ); --�t��-����������
AddRecipe( OwnerID(), 550158 ); --�t��-���K�ж�
AddRecipe( OwnerID(), 550159 ); --�t��-�ŦB�۶�
AddRecipe( OwnerID(), 550160 ); --�t��-�j������
AddRecipe( OwnerID(), 550161 ); --�t��-���Q������
AddRecipe( OwnerID(), 550162 ); --�t��-�̴����|��
--AddRecipe( OwnerID(), 550163 ); --�t��-�H��������
--AddRecipe( OwnerID(), 550164 ); --�t��-����������
end

function Lua_110814_RecipeList_Touch()
	closeSpeak( OwnerID() )
	GetRecipeList( OwnerID(), TargetID() );	 -- GetRecipeList( Player, NPC );
	
end