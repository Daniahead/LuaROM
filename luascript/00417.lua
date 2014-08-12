function ExpBall_LV1()

	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("EXP_BALL_LV1")  , 0 );
	AddRoleValue( OwnerID() , EM_RoleValue_EXP , 200 );
	return true;

end

function ExpBall_LV2()

	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("EXP_BALL_LV2"), 0 );
	AddRoleValue( OwnerID() , EM_RoleValue_EXP , 500 );
	return true;

end