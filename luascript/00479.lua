function LuaS_110728_0()

	LoadQuestOption( OwnerID() )

--	AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_5"), "LuaS_110728_5", 0 ) 
--	AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_1"), "LuaS_110728_1", 0 ) 
	AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_6"), "LuaS_110728_6", 0 ) --�ڷQ�ǰe��Z��R������F��
	AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_7"), "LuaS_110728_7", 0 ) --�ڷQ�ǰe��Z��R���������s����
	AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_8"), "LuaS_110728_8", 0 ) --�ڷQ�ǰe��Z��R�������U�F��
	AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_10"), "LuaS_110728_10", 0 ) --�ڷQ�ǰe��Z��R���������X�f
	AddSpeakOption( OwnerID(), TargetID( ),GetString("SO_110561_11"), "LuaS_110755_11", 0 ) --�ڷQ�ǰe��Z��R����¾�~�j�U
	AddSpeakOption( OwnerID(), TargetID( ),GetString("SC_111339_12"), "LuaS_111339_12", 0 ) --�ڷQ�ǰe���̤����j�U

	if CheckFlag( OwnerID()  , 540001 ) == false then
		SetFlag( OwnerID()  , 540001 , 1 )
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110728_1()

	SetSpeakDetail( OwnerID(), GetString("ST_110561_1"));
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACKTALK") , "LuaS_110728_0", 0 ); 	--�ڷQ�^���誺���
--	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_EXIT") , "LuaS_110728_EXIT",  0 );	--���}

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110728_5()

	CloseSpeak( OwnerID() );	--������ܵ���

	local SHP = SaveHomePoint( OwnerID() );
	if (SHP == true) then
		CastSpell( OwnerID() , OwnerID() , 491008 )
		ScriptMessage( OwnerID(), OwnerID(), 2, GetString("ST_TRANSFER_8")  , C_SYSTEM )	--�e�������T���G�z�N�^�{�a�I�n�O�b�Z��R�������U��ϡI
		ScriptMessage( OwnerID(), OwnerID(), 0, GetString("ST_TRANSFER_8") , 0 )	--�z�N�^�{�a�I�n�O�b�Z��R�������U��ϡI
	else
		ScriptMessage( OwnerID(), OwnerID(), 2, GetString("ST_TRANSFER_FAIL")  , C_SYSTEM )	--�e�������T���G�^�{�a�I�n�O���ѡI
		ScriptMessage( OwnerID(), OwnerID(), 0, GetString("ST_TRANSFER_FAIL") , 0 )	--�^�{�a�I�n�O���ѡI
	end

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110728_6()

	CloseSpeak( OwnerID() );	--������ܵ���

	CastSpell( OwnerID() , OwnerID() , 491008 )
--	sleep( 5 )
	ChangeZone( OwnerID() , 2 , 0, 6372, 61, -3106, 50)	--�Z��R������F��

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110728_7()

	CloseSpeak( OwnerID() );	--������ܵ���

	CastSpell( OwnerID() , OwnerID() , 491008 )
--	sleep( 5 )
	ChangeZone( OwnerID() , 2 , 0,4745, 115, -1968, 51)	--�Z��R���������s����

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110728_8()

	CloseSpeak( OwnerID() );	--������ܵ���

	CastSpell( OwnerID() , OwnerID() , 491008 )
--	sleep( 5 )
	ChangeZone( OwnerID() , 2 , 0, 4472, 52, -35, 54)	--�Z��R�������U�F��

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110728_9()

	CloseSpeak( OwnerID() );	--������ܵ���

	CastSpell( OwnerID() , OwnerID() , 491008 )
--	sleep( 5 )
	ChangeZone( OwnerID() , 2 , 0, 2908, 56, -798, 51)	--�Z��R�������U���

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110728_10()

	CloseSpeak( OwnerID() );	--������ܵ���

	CastSpell( OwnerID() , OwnerID() , 491008 )
--	sleep( 5 )
	ChangeZone( OwnerID() , 2 , 0,2758,55,956,50)	--�Z��R���������X�f

end
--------------------------------------------------------------------------------------------------------------------------

function LuaS_110728_EXIT()
	CloseSpeak( OwnerID() );	--������ܵ���
end
--------------------------------------------------------------------------------------------------------------------------