--�إߩФl
function Sys_BuildHouse( )
	local Ret = BuildHouse( OwnerID() , 0 );
	if( Ret == false ) then
		Tell( OwnerID() , TargetID() , "�إߩЫΥ���" );
	end
end

--�}�Ұ��[�ЫΪ�����
function Sys_HouseVisit_Auto()
	SetPlot( OwnerID() , "Touch" , "Sys_HouseVisit_Open" , 50 );
end

function Sys_HouseVisit_Open()
	local Obj = Role:new( OwnerID() );
	local Ret = SaveReturnPos( OwnerID() , Obj:ZoneID() , Obj:X() , Obj:Y() , Obj:Z() , Obj:Dir() );
	if( Ret == false ) then
		Tell( OwnerID() , TargetID() , "���B����]�w�^���I" );
		return;
	end
	OpenVisitHouse( false );--�}�Ұ��[����
end

function Sys_HouseVisit_MyHouse_Open()
	local Obj = Role:new( OwnerID() );
	local Ret = SaveReturnPos( OwnerID() , Obj:ZoneID() , Obj:X() , Obj:Y() , Obj:Z() , Obj:Dir() );
	if( Ret == false ) then
		Tell( OwnerID() , TargetID() , "���B����]�w�^���I" );
		return;
	end
	OpenVisitHouse( true ); --�^�ۤv�Ы�
end
