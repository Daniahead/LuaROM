--建立房子
function Sys_BuildHouse( )
	local Ret = BuildHouse( OwnerID() , 0 );
	if( Ret == false ) then
		Tell( OwnerID() , TargetID() , "建立房屋失敗" );
	end
end

--開啟參觀房屋的介面
function Sys_HouseVisit_Auto()
	SetPlot( OwnerID() , "Touch" , "Sys_HouseVisit_Open" , 50 );
end

function Sys_HouseVisit_Open()
	local Obj = Role:new( OwnerID() );
	local Ret = SaveReturnPos( OwnerID() , Obj:ZoneID() , Obj:X() , Obj:Y() , Obj:Z() , Obj:Dir() );
	if( Ret == false ) then
		Tell( OwnerID() , TargetID() , "此處不能設定回傳點" );
		return;
	end
	OpenVisitHouse( false );--開啟參觀介面
end

function Sys_HouseVisit_MyHouse_Open()
	local Obj = Role:new( OwnerID() );
	local Ret = SaveReturnPos( OwnerID() , Obj:ZoneID() , Obj:X() , Obj:Y() , Obj:Z() , Obj:Dir() );
	if( Ret == false ) then
		Tell( OwnerID() , TargetID() , "此處不能設定回傳點" );
		return;
	end
	OpenVisitHouse( true ); --回自己房屋
end
