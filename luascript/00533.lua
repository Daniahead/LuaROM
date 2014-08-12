function Hsiang_MoveTest()
	MoveToFlagEnabled(OwnerId() , false )
	WaitMoveTo( OwnerID() , 0 , 0 , 0 )
	Say( OwnerID() , "TEST" ..i )
	return

end

function Hsiang_DeadCount()
	Say(OwnerID() , "**Sys_NPC_DeadCount = "..Sys_NPC_DeadCount )
end

function Hsiang_FamousTest( )
	
	local Famouse1 = ReadRoleValue( OwnerID() , EM_RoleValue_Famous )
	Say( OwnerID() , "Fammous" .. Famouse1 );

	Famouse1 = Famouse1 + 10;
	WriteRoleValue( OwnerID() , EM_RoleValue_Famous ,  Famouse1  )


	Famouse1 = ReadRoleValue( OwnerID() , EM_RoleValue_Famous )
	Say( OwnerID() , "Fammous" .. Famouse1 );

end

function Hsiang_FollowTest_Init()
	SetPlot( OwnerID() , "Touch" , "Hsiang_FollowTest" , 50 );
end

function Hsiang_FollowTest()
	SetFollow( TargetID() , OwnerID() ) 
end

function Hsiang_DesignLogTest()
	DesignLog( OwnerID() , 10 , "1234¤ý¤K" )
end

function Hsinag_SetReviveTest()
	ClearCampRevicePoint();
	SetCampRevicePoint( 0 , 1 , -1658 ,132, -5840, "Sys_Bank_Open" );
end

function Hsiang_SendMailTest()
	SendMail( "B0001" , "TEST" ,"Mail Test" );

end

function Hsiang_DelObjTest( x )
	DelObj(X)
end



function Hsiang_SetRelationTest( OID , TID )
	SetRelation(  OID , TID , EM_RelationType_Wife , 3.5 , EM_RelationType_Husband , 3.5 )
end

function Hsiang_GetRelationTest( OID , TID )
	Tell( OwnerID() , "RelationID =" ..  GetRelation( OID,TID ) );
end

function Hsiang_GetRelationLvTest( OID , TID )
	Tell( OwnerID() , "RelationLv =" ..  GetRelationLv( OID,TID ) );
end

function Hsiang_SetRelationLvTest( OID , TID, Lv )
	SetRelationLv( OID , TID , Lv )
end

function Hisnag_GiveBodyTest( x )
	GiveBodyItem( OwnerID() , x, 3 )
end


function Hsiang_SetValue(Type , Value )
	SetValue( OwnerID() , Type , Value )
end

function Hsiang_SetHonorParty(Value)
	WriteRoleValue( OwnerID() ,EM_RoleValue_TimeFlag , Value )
end

function Hsiang_SetBoxEnergy(Value)
	WriteRoleValue( OwnerID() ,EM_RoleValue_BoxEnergy , Value )
end

function Hsiang_LoopTest()
	for i = 0 , 10 , 1 do
		Sleep( 10 )
		Say( OwnerID() , i );
	end
end	






















