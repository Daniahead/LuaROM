--/*���p���y�I�k�@��
function LuaN_100776()
	while 1 do
	local NPC = {}
		if ReadRoleValue( OwnerID(), EM_RoleValue_AttackTargetID ) == 0 then 
		sleep(80)
		NPC = SearchRangeNPC(OwnerID() , 150 )
			for i=1 , table.getn(NPC) do
				if ReadRoleValue(NPC[i] , EM_RoleValue_OrgID) == 100729 then
					CastSpell( OwnerID() , NPC[i] , 491263 )
					break
				end
			end
		else
		sleep(30)
		end
	end
end
----------------------------------------------------/*�q��ۨ��ŧ�ۯ�
function LuaQ_421077_end()
	ScriptMessage( OwnerID(), OwnerID(), 0, GetString("ST_421077_END"), 0 ); --/*��ۨ�����ۯ��Q�A�ŤU�A��ۨ��]�ӱY���C
end