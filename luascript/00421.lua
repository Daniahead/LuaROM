function LuaI_100281()
--	say(OwnerID() ,"OK" )
	local List = SearchRangeNPC( OwnerID() , 300 );
	local Owner = Role:new( OwnerID() );
	local Obj
	for i = 0 , 100 , 1 do
		if List[i] == -1 then 
			break;
		end		
		Obj = Role:New( List [i] )
		if Obj:OrgID() == 100103 or Obj:OrgID() == 100281 then
			if Obj:IsAttack( ) == false and Obj:IsDead() == 0 then
				Obj:SetAttack( Owner:AttackTargetID() )
			end
		end
	end
end

function LuaI_100281_org()
	setplot( OwnerID() , "Dead" , "LuaI_100281_dead" , 0 )
end

function LuaI_100281_dead()
	Local Player = LuaFunc_PartyData(TargetID())

	for i = 1 , Player[0] , 1 do
		if CheckAcceptQuest( Player[i] ,420196 ) == true or CheckCompleteQuest(Player[i] ,420196) == true then 
			if CheckCompleteQuest(Player[i] ,420197) == false and CountBodyItem( Player[i] ,200657 ) == 0 then
				GiveBodyItem( Player[i] ,200657,1 )
			end
		end
	end
	return true
end