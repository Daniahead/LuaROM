function LuaN_421413_0()
	Setplot(OwnerID(),"dead","LuaN_421413_1",0)
end

function LuaN_421413_1()
	local x = Rand(20)+1
	if x == 5 then		--/*機率5％
		local Obj = Role:new( TargetID() ) 
		local BaseX = Obj :X()
		local BaseY = Obj :Y();
		local BaseZ = Obj :Z();
		local BaseDir = Obj:Dir();
		local mm = CreateObj(100883, BaseX, BaseY, BaseZ, BaseDir -180, 1 )
		AddtoPartition( mm , 0 ) --讓MM顯現出來
		Beginplot( mm,"LuaN_421413_2",0)
		return true
	else
		return true
	end
end

function LuaN_421413_2()
	Setplot(OwnerID(),"dead","LuaN_421413_3",0)
end

function LuaN_421413_3()
	Hide(OwnerID())
	local Obj = Role:new( TargetID() ) 
	local BaseX = Obj :X()
	local BaseY = Obj :Y();
	local BaseZ = Obj :Z();
	local BaseDir = Obj:Dir();
	local kk = CreateObj(111336, BaseX, BaseY, BaseZ, BaseDir -180, 1 )

	local b=CheckAcceptQuest(OwnerID(),421413);
	if b == true then
	AddtoPartition( kk , 0 ) --讓KK顯現出來
	Beginplot( kk,"LuaN_421413_4",0)
	end
	return true
end
function LuaN_421413_4()
	sleep(600)
	DelObj(OwnerID())
end