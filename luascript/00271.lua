--�����

-------------------------------------------------------------------------------------------------------------
--�j������110148
function LuaI_110148()
	SetPlot( OwnerID() , "touch" , "LuaS_110148_1" , 50 );
end
-------------------------------------------------------------------------------------------------------------
function LuaS_110148_1()
	local result = "";
	if CheckAcceptQuest( OwnerID() ,420165 ) == true and CheckFlag( OwnerID()  , 540789 ) == false then
		if CountBodyItem( OwnerID(), 200696 ) >= 1 then
			BeginCastBar( OwnerID(), GetString("CASTBAR_NAME_04") , 20 , ruFUSION_ACTORSTATE_CRAFTING_BEGIN , ruFUSION_ACTORSTATE_CRAFTING_END , 0 );	-- �������B�@
			while 1 do
				sleep( 2 );
				local CastBarStatus = CheckCastBar( OwnerID() );

				if ( CastBarStatus ~= 0 ) then 
					if ( CastBarStatus > 0) then -- ���\
						result = "OKOK"
						EndCastBar( OwnerID() , CastBarStatus )
						break;
					elseif ( CastBarStatus < 0 ) then -- ����
						result = "DAME"
						EndCastBar( OwnerID() , CastBarStatus )
						break;
					end
				end
			end

			if ( result == "OKOK" ) then
				ScriptMessage( OwnerID(), OwnerID(), 0, GetString("ST_110148_1") , 0 );	-- �A�ϥά��į����A����F�j�����񪺹B�@�I
				SetFlag( OwnerID()  , 540789 , 1 );
				DelBodyItem ( OwnerID() , 200696, 1 )	;
				CastSpell( TargetID() , TargetID() , 491002 )	-- �j�z��
				Hide( TargetID() );   --���äj������
				Sleep( 10 )
				local Destory_Machine = Createobjbyobj( 110670 , TargetID() , 1  ); 
				sleep( 300 );
				Delobj( Destory_Machine );
				Sleep( 10 )
				Show( TargetID() ,0);    --��ܤj������
			end
			
		else
			ScriptMessage( OwnerID(), OwnerID(), 0, GetString("ST_110148_2") , 0 );	-- �A�S���i�H�������B�@�����~�I
		end
	end
	if CheckFlag( OwnerID()  , 540789 ) == true then
		say( OwnerID() , GetString("ST_110148_3") )	-- �w�g�i�H�^�h�y�H��a�V�줺�Q�Q���^���F�C
	end 
end
-------------------------------------------------------------------------------------------------------------
--Function LuaI_110148()
--	SetPlot( OwnerID(), "touch", "LuaQ_110148_0",40 );    --�]�w�j������Ĳ�I�@��
--end
-------------------------------------------------------------------------------------------------------------
--Function LuaQ_110148_0()

--	if CheckAcceptQuest( OwnerID(), 420165 ) ==true and CountBodyItem( OwnerID(), 200696) >= 1 then
--		BeginPlot( TargetID(), "LuaQ_110148_1", 0 );    --�ˬd���ȻP���Ȫ��~����
--	end

--end

--------------------------------------------------------------------------------------------------------------
--Function LuaQ_110148_1()

--	--CastSpell( OwnerID(), OwnerID(), X�z���k�N�S��);
--	Hide( OwnerID() );   --���ùB�@��������
--	Local machine =  Createobjbyobj( 110422, OwnerID(), 1  );   --���ͳQ�R��������
--	Sleep( 600 );
--	Delobj( machine );    --�R���Q�R��������
--	Show( OwnerID() ,0);    --��ܹB�@�������� 

--end