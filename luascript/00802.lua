---------------------------------- ��� ----------------------------------------

function LuaI_110073()
	
	PlayMotionEX( OwnerID(), ruFUSION_ACTORSTATE_CRAFTING_BEGIN,ruFUSION_ACTORSTATE_CRAFTING_LOOP) --�@���u�@
	BeginPlot( TargetID() , "LuaSS_110073_0" , 0 )
	sleep(30)
end

function LuaSS_110073_0()
	while 1 do
	Say(OwnerID(),GetString("SC_110073_0")) --���r�A�����F�I�����F�I 
	Sleep(2000)
	end
end

---------------------------------- ���R ----------------------------------------

function LuaI_110068()
	BeginPlot( TargetID() , "LuaSS_110068_0" , 0 )
end

function LuaSS_110068_0()
	while 1 do
	Say(OwnerID(),GetString("SC_110068_0")) --�ڸӫ�����Ǻ��A�ѧڪ��߷N�O�H...
	Sleep(1830)
	end
end

---------------------------------- �j�� ----------------------------------------
function LuaI_110077()
	BeginPlot( TargetID() , "LuaSS_110077_0" , 0 )
end

function LuaSS_110077_0()
	while 1 do
	Say(OwnerID(),GetString("SC_110077_0")) --�Q��~�ڤ@��C�i�H����d�U�ӼĤH�A�{�b�K.������ڪ��y�n�h���
	Sleep(2900)
	end
end

---------------------------------- �i�S ----------------------------------------
function LuaI_110490()
	BeginPlot( TargetID() , "LuaSS_110490_0" , 0 )
end

function LuaSS_110490_0()
	while 1 do
	Say(OwnerID(),GetString("SC_110490_0")) --
	Sleep(1730)
	end
end

---------------------------------- �մ��d ----------------------------------------

function LuaI_110076()
	BeginPlot( TargetID() , "LuaSS_110076_0" , 0 )
end

function LuaSS_110076_0()
	while 1 do
	Say(OwnerID(),GetString("SC_110076_0")) --���S���e�e�H�B���U�ߪ��u�@�O�H
	Sleep(3430)
	end
end

---------------------------------- ��w ----------------------------------------

function LuaI_110470()
	BeginPlot( TargetID() , "LuaSS_110470_0" , 0 )
end

function LuaSS_110470_0()
	while 1 do
	Say(OwnerID(),GetString("SC_110470_0")) --�ڬO�@�ӧּ֪����H��K�K���K�K���(��)  �Ӷ��U�s�^�a�Y���\��N�N�N��N�N�N��(��)
	Sleep(1800)
	end
end

---------------------------------- ��v ----------------------------------------

function LuaI_110078()
	
	SetPlot( OwnerID() , "range" , "LuaI_110078_1" , 150 )
end

function LuaI_110078_1()
	if (CheckCompleteQuest( TargetID(), 420083 )==true )then
	BeginPlot( TargetID() , "LuaS_110078_0" , 0 )
	end
end

function LuaS_110078_0()
	local herID = GetName( TargetID() )
	local String_2 = GetString("SC_110078_0")..herID..GetString("SC_110078_1")
	Sleep(20)
	Say(OwnerID(),GetString("String_2 ")) --
	Sleep(400)
end

---------------------------------- �u�w ----------------------------------------
function LuaI_110497()
	BeginPlot( TargetID() , "LuaSS_110497_0" , 0 )
end

function LuaSS_110497_0()
	while 1 do
	Say(OwnerID(),GetString("SC_110497_0")) --�Q�n�O���������n�����A�N�O�n�C�Ѧb�������U�A�u�@�u�@�u�@�C
	Sleep(59800)
	end
end

----------------------------------  �p�k�� ----------------------------------------

function LuaI_110009()
	BeginPlot( TargetID() , "LuaSS_110009_0" , 0 )
end

function LuaSS_110009_0()
	while 1 do	
	Say(OwnerID(),GetString("SC_110009_0")) --�Ӱl�ڧr��Ӱl�ڧr��Ӱl�ڧr��
	Sleep(1800)
	end
end

----------------------------------  ���B�S(��) ----------------------------------------

function LuaI_110269()
	BeginPlot( TargetID() , "LuaSS_110269_0" , 0 )
end

function LuaSS_110269_0()
	while 1 do
	Say(OwnerID(),GetString("SC_110269_0")) --�L�I�L�I
	Sleep(1800)
	end
end

----------------------------------  ����(��ת�) ----------------------------------------

function LuaI_110011()
	BeginPlot( TargetID() , "LuaSS_110011_0" , 0 )
end

function LuaSS_110011_0()
	while 1 do
	Say(OwnerID(),GetString("SC_110011_0")) --�s�A���סA�A��h�Ĭ����i�f���סA�֨ӶR���
	Sleep(2400)
	end
end

----------------------------------  ����(���ѥ]��) ----------------------------------------
function LuaI_110012()
	BeginPlot( TargetID() , "LuaSS_110012_0" , 0 )
end

function LuaSS_110012_0()
	while 1 do
	Say(OwnerID(),GetString("SC_110012_0")) --��X�l�A�����˭��Q�Q���ѥ]�A�U�ؤf���������
	Sleep(2590)
	end
end

----------------------------------  ���----------------------------------------
function LuaI_111352()
	BeginPlot( TargetID() , "LuaIS_111352_0" , 0 )
end

function LuaIS_111352_0()
	while 1 do
	Say(OwnerID(),GetString("SC_111352_5")) --�ڬO�@�ӧּ֪��u�۸֤H��K�K���K�K���(��)�Ӷ��U�s�^�a�Y���\��N�N�N��N�N�N��(��)
	Sleep(1800)
	end
end

----------------------------------  �̩Ԩ�----------------------------------------
function LuaI_110053()
	BeginPlot( TargetID() , "LuaIS_110053_0" , 0 )
end

function LuaIS_110053_0()
	while 1 do
	Say(OwnerID(),GetString("SC_110053_0")) --
	Sleep(4180)
	end
end



