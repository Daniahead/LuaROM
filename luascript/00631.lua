function LuaI_110889()
	SetPlot( OwnerID() , "touch" , "Kuro_110889_Walk" , 20 )
end

function Kuro_110889_Walk()

	if ( CheckAcceptQuest( OwnerID() , 420752 ) == true ) and ( CountBodyItem( OwnerID() , 201647 ) >= 1 ) then
		ScriptMessage( OwnerID() , OwnerID() , 0 , GetString("ST_420752_2") , 0 )
		DelBodyItem( OwnerID() , 201647 , 1 )
		GiveBodyItem( OwnerID() , 201648 , 1 )
	else
		ScriptMessage( OwnerID() , OwnerID() , 0 , GetString("ST_420752_1") , 0 )
	end

		local RND =  Rand( 5 ) + 1	-- 產生 1~5 的亂數
		    if ( RND == 0 ) then
			SetPosByFlag( TargetID() , 580076 , 0 )
			Hide( TargetID() )
		elseif ( RND == 1 ) then
			SetPosByFlag( TargetID() , 580076 , 1 )
			Hide( TargetID() )
		elseif ( RND == 2 ) then
			SetPosByFlag( TargetID() , 580076 , 2 )
			Hide( TargetID() )
		elseif ( RND == 3 ) then
			SetPosByFlag( TargetID() , 580076 , 3 )
			Hide( TargetID() )
		elseif ( RND == 4 ) then
			SetPosByFlag( TargetID() , 580076 , 4 )
			Hide( TargetID() )
		elseif ( RND == 5 ) then
			SetPosByFlag( TargetID() , 580076 , 5 )
			Hide( TargetID() )
		end
		Sleep( 600 )
		Show( TargetID() , 0 )

end