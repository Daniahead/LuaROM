function Hsiang_GiveItemPlot_Auto()
	SetPlot( OwnerID() , "Touch" , "Hsiang_GiveItemPlot_Open" , 150 );
	SetPlot( OwnerID() , "give" , "Hsiang_GiveItemPlot_Give" , 150 );
end

function Hsiang_GiveItemPlot_Open()
	OpenPlotGive( OwnerID() , 0 , 4 );
end

function Hsiang_GiveItemPlot_Give(  ItemID1 , Count1 , ItemID2 , Count2 , ItemID3 , Count3 , ItemID4 , Count4 )
	
	Say( OwnerID() , "ItemID1=" .. ItemID1.. "   Count1=" .. Count1 );
	Say( OwnerID() , "ItemID2=" .. ItemID2 .. "   Count2=" .. Count2 );
	Say( OwnerID() , "ItemID3=" .. ItemID3 .. "   Count3=" .. Count3 );
	Say( OwnerID() , "ItemID4=" .. ItemID4 .. "   Count4=" .. Count4 );	
	return 1
end