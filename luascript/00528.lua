function LuaI_Enter_Mirror()
	SetPlot( OwnerID() , "Range" , "Enter_Mirror" ,  65 )
end

function Enter_Mirror()
	ChangeZone( OwnerID() , 101 , -1 , 725 , -146 , 940 , 290 )
end

function LuaI_Outer_Mirror()
	SetPlot( OwnerID() , "Collision" , "Outer_Mirror" ,  0 )
end

function Outer_Mirror()
	ChangeZone( OwnerID() , 4 , 0 , -3905 , 385 , -840 , 175 )
end
