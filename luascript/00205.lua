function MagicPlot_500733()
local Obj = Role:new( OwnerID() )
local TargetObj = Role:new( TargetID() )
Local Dir , Dx , Dz


Dir = TargetObj:Dir() + 180
if Dir > 360 then 
	Dir = Dir - 360;
end

Dir = ( 360 - Dir ) / 57.2958

Dx = math.cos( Dir ) * 15
Dz = math.sin( Dir ) * 15

SetPos( OwnerID() , TargetObj:X() + Dx , TargetObj:Y() , TargetObj:Z()+Dz , TargetObj:Dir() );

end