function TEST_nana_01( )
                -- OwnerID()	 �O�@�� NPC
	-- TargetID()	������Ȫ����a�ζ���

	-- FlagID		���|�X�l�s�եN��
	-- Flag		���|�X�l�N��

 	local FlagID	= 0;
	local FlagCount = GetMoveFlagCount ( FlagID ) - 1;

	Say( OwnerID(), "Flag Count:" .. FlagCount );

	local Flag		= 8;

	while 1 do

		-- DEBUG ��
		local Owner = Role:new( OwnerID() ) 
		Say( OwnerID(), "X: " .. Owner:X() .. ", Y:" .. Owner:Z()   );

		if( NPC_MoveToFlag( OwnerID() ,FlagID , Flag , 0 ) == true ) then
			
			-- ���ե�
			Say( OwnerID(), "���B�B���F�I" .. Flag );

			-- ��F�ƥ��I 1
			if( Flag == 3 ) then
				Say( OwnerID(), "�ڬO�T����" );
			end

			-- �ˬd�O���O����I�F
			if( Flag == 5 ) then

				-- �������~
				S_GiveItem( 200033, 1 );
				
							
				S_ResetObj(  OwnerID() );

				break;
			end

			Flag = Flag+1;

		end

		sleep( 1 );

	end

end