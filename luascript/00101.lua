function LuaQuestComplete_420088()

	Say( OwnerID(), "5 ���}�l�I�k�ʧ@" );
	sleep( 50 );

	CastSpell( OwnerID(), OwnerID(), 490098 );
	sleep( 50 );

	Say( OwnerID(), "�����F! �ڦ��\���b�Ƴo���j�K�F!" );
	-- ���}����X��, ���U�@�ӥ��ȥi�H�Q����
	SetScriptFlag( TargetID(), 420088, 1 );
end