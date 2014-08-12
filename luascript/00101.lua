function LuaQuestComplete_420088()

	Say( OwnerID(), "5 秒後開始施法動作" );
	sleep( 50 );

	CastSpell( OwnerID(), OwnerID(), 490098 );
	sleep( 50 );

	Say( OwnerID(), "完成了! 我成功的淨化這塊大便了!" );
	-- 打開角色旗標, 讓下一個任務可以被接受
	SetScriptFlag( TargetID(), 420088, 1 );
end