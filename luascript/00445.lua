function LuaI_ReflectionEnter()
	SetPlot( OwnerID() , "Collision" , "Enter_Reflection" , 0 );
end

function Enter_Reflection()
	--if CheckFlag( OwnerID()  , 540781 ) == true then
		ScriptMessage( OwnerID(), OwnerID(), 0, "�A��L�]�k�پ��A�i�J�F�褧�ӫ��I" , 0 );
		ChangeZone( OwnerID() , 10 , -1, 1334, 320, 2911, 163);
	--else
		--ScriptMessage( OwnerID(), OwnerID(), 0, "�A�Q�@�h�]�k�پ��צ��A�L�k�A�e�i�I" , 0 );
	--end

end

function LuaI_ReflectionOut()
	SetPlot( OwnerID() , "Collision" , "Out_Reflection" , 0 );
end

function Out_Reflection()

	--ScriptMessage( OwnerID(), OwnerID(), 0, "�A��L�]�k�پ��A�i�J�F�褧�ӫ��I" , 0 );
	ChangeZone( OwnerID() , 4 , 0, -3838, 371, -830, 163);

end