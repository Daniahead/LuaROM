-- ��{�j�Y�i�J�ǰe�I
function LuaI_Enter_BloodyGallery()

	SetPlot( OwnerID() , "Range" , "Enter_BloodyGallery" ,  20 )
--	BeginPlot( OwnerID() , "BloodyGallery_RunningMessage" ,  0 )

end
function Enter_BloodyGallery()

	local hour = GetSystime(1)
	local min = GetSystime(2)
	local BuffID = 501637

	if  ( hour >= 22 and hour <= 23 ) then
		if ChangeZone( OwnerID() , 107 , 0 , 2732 ,  61 ,  1430 , 270 ) then
			ScriptMessage( OwnerID() , OwnerID() , 1 , GetString("ST_BLOODY_01") , C_SYSTEM )		-- �A��V�@�D���������~�A�ǨӤ@�Ѩ�󪺦�{���C
			local BloodPot = CountBodyItem( OwnerID() , 201963 ) 		-- �s�A��~
			if DelBodyItem( OwnerID() , 201963 , BloodPot ) then		-- �s�A��~�R��
				GiveBodyItem ( OwnerID() , 201964 , BloodPot )		-- ������~
			end
		end
	elseif ( CheckBuff( OwnerID() , BuffID ) == true ) then
		if ChangeZone( OwnerID() , 107 , 0 , 2732 ,  61 ,  1430 , 270 ) then
			ScriptMessage( OwnerID() , OwnerID() , 1 , GetString("ST_BLOODY_01") , C_SYSTEM )		-- �A��V�@�D���������~�A�ǨӤ@�Ѩ�󪺦�{���C
			local BloodPot = CountBodyItem( OwnerID() , 201963 ) 		-- �s�A��~
			if DelBodyItem( OwnerID() , 201963 , BloodPot ) then		-- �s�A��~�R��
				GiveBodyItem ( OwnerID() , 201964 , BloodPot )		-- ������~
			end
		end
	else
		ScriptMessage( OwnerID() , OwnerID() , 1 , GetString("ST_BLOODY_04") , C_SYSTEM )		-- �A��V�@�D���������~�A�����G�S������Ʊ��o�͡C
	end

end
function BloodyGallery_RunningMessage()

	local hour = 0
	local min = 0

	while true do
		hour = GetSystime(1)
		min = GetSystime(2)

		if  ( hour == 21 and min  == 40 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("BLOODYGALLERY_OPEN_1") )	-- ��{�j�Y�̪������s�}�l�������ʡC
		end 
		if  ( hour == 21 and min  == 50 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("BLOODYGALLERY_OPEN_2") )	-- ��{�j�Y�̪������s�}�l�������ʡA�ǰe���ɧY�N�}�ҡC
		end 
		if  ( hour == 22 and min  == 0 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("BLOODYGALLERY_OPEN_3") )	-- ��{�j�Y�����ɶ}�ҡA�����s�@��ӥX�I�I
		end 
		if  ( hour == 0 and min  == 0 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("BLOODYGALLERY_OPEN_4") )	-- ��{�j�Y�������s�l���F�������A��^�_�A�ǰe���ɤw�g�����I�I
		end 

		Sleep( 500 )

	end
end

-- ��{�j�Y�X�h�ǰe�I
function LuaI_Outer_BloodyGallery()
	SetPlot( OwnerID() , "Range" , "Outer_BloodyGallery" ,  20 )
end

function Outer_BloodyGallery()
	ChangeZone( OwnerID() , 2 , 0 , -151 , 37 , 2640 , 0 )
end
