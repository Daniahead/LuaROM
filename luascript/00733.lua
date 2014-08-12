function LuaQ_421295_BeforeClick()
	SetPlot( OwnerID() , "touch" , "LuaQ_421295_Afterclick" , 50 );
end
function LuaQ_421295_Afterclick()
local n = 0
local resultZ=""
if CountBodyItem(OwnerID() ,202497 ) == 40  then
BeginCastBar(OwnerID(),GetString("SC_421295_0") ,30, ruFUSION_ACTORSTATE_CRAFTING_BEGIN , ruFUSION_ACTORSTATE_CRAFTING_END,0 );
while 1 do
		n = n + 1
		if n > 60 then -- 防無窮迴圈，60 = 半分鐘
			--ScriptMessage( OwnerID(), OwnerID(), 0, "無窮迴圈", 0 )
			break
		else
			--ScriptMessage( OwnerID(), OwnerID(), 0, "合法迴圈", 0 )
		end
	sleep( 2 );
	local CastBarStatus = CheckCastBar( OwnerID() );
       if ( CastBarStatus ~= 0 ) then 
       if ( CastBarStatus > 0) then -- 成功
    resultZ = "OKOK"
      EndCastBar( OwnerID() , CastBarStatus )
          break;
elseif ( CastBarStatus < 0 ) then -- 失敗
	resultZ = "DAME"
	EndCastBar( OwnerID() , CastBarStatus )
				break;
			end
                                     end
                         end
  	   if (resultZ=="OKOK") then
		DelBodyItem(OwnerID(),202497,40)
		ScriptMessage( OwnerID(), OwnerID(), 0, GetString("SC_421295_1") , 0 )
	                local Obj = Role:new( OwnerID() ) 		
		local BaseX = Obj :X()		
	 	local BaseY = Obj :Y();		
	 	local BaseZ = Obj :Z();		
		local BaseDir = Obj:Dir();		
                                local NewObjGUID = kk;
	 	kk= CreateObj(100035, BaseX-50, BaseY, BaseZ, BaseDir, 1 )
                                local NewObjGUID = kk1;
                                kk1= CreateObj(100035, BaseX+30, BaseY, BaseZ-30, BaseDir, 1 )
                                local NewObjGUID = kk2;
                                kk2= CreateObj(100035, BaseX+30, BaseY, BaseZ+30, BaseDir, 1 )
		AddtoPartition( kk, 0 )
                               	AddtoPartition( kk1, 0 )
                               	AddtoPartition( kk2, 0 )
                               	SetAttack( kk , OwnerID())
                                SetAttack( kk1 , OwnerID())
                               SetAttack( kk2 , OwnerID())
                              sleep(60)
		while true do
			if ReadRoleValue(kk, EM_RoleValue_AttackTargetID ) ~= 0 and CheckID(kk) == true or
			   ReadRoleValue(kk1, EM_RoleValue_AttackTargetID ) ~= 0 and CheckID(kk1) == true or
	   		   ReadRoleValue(kk2, EM_RoleValue_AttackTargetID ) ~= 0 and CheckID(kk2) == true then  --檢查是否離開戰鬥
			else
			if CheckID(kk) == true  then
				DelObj(kk)
			end
			if CheckID(kk1) == true  then
				DelObj(kk1)
			end
			if CheckID(kk2) == true  then
				DelObj(kk2)
			end
			break		
		end
		Sleep( 60 )	-- 六秒檢查一次	
	end
                end
            end
       end

