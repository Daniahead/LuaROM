-- 血腥迴廊進入傳送點
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
			ScriptMessage( OwnerID() , OwnerID() , 1 , GetString("ST_BLOODY_01") , C_SYSTEM )		-- 你穿越一道神秘的光芒，傳來一股刺鼻的血腥味。
			local BloodPot = CountBodyItem( OwnerID() , 201963 ) 		-- 新鮮血瓶
			if DelBodyItem( OwnerID() , 201963 , BloodPot ) then		-- 新鮮血瓶刪除
				GiveBodyItem ( OwnerID() , 201964 , BloodPot )		-- 凝結血瓶
			end
		end
	elseif ( CheckBuff( OwnerID() , BuffID ) == true ) then
		if ChangeZone( OwnerID() , 107 , 0 , 2732 ,  61 ,  1430 , 270 ) then
			ScriptMessage( OwnerID() , OwnerID() , 1 , GetString("ST_BLOODY_01") , C_SYSTEM )		-- 你穿越一道神秘的光芒，傳來一股刺鼻的血腥味。
			local BloodPot = CountBodyItem( OwnerID() , 201963 ) 		-- 新鮮血瓶
			if DelBodyItem( OwnerID() , 201963 , BloodPot ) then		-- 新鮮血瓶刪除
				GiveBodyItem ( OwnerID() , 201964 , BloodPot )		-- 凝結血瓶
			end
		end
	else
		ScriptMessage( OwnerID() , OwnerID() , 1 , GetString("ST_BLOODY_04") , C_SYSTEM )		-- 你穿越一道神秘的光芒，但似乎沒有任何事情發生。
	end

end
function BloodyGallery_RunningMessage()

	local hour = 0
	local min = 0

	while true do
		hour = GetSystime(1)
		min = GetSystime(2)

		if  ( hour == 21 and min  == 40 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("BLOODYGALLERY_OPEN_1") )	-- 血腥迴廊裡的蝙蝠群開始蠢蠢欲動。
		end 
		if  ( hour == 21 and min  == 50 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("BLOODYGALLERY_OPEN_2") )	-- 血腥迴廊裡的蝙蝠群開始蠢蠢欲動，傳送結界即將開啟。
		end 
		if  ( hour == 22 and min  == 0 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("BLOODYGALLERY_OPEN_3") )	-- 血腥迴廊的結界開啟，蝙蝠群一湧而出！！
		end 
		if  ( hour == 0 and min  == 0 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("BLOODYGALLERY_OPEN_4") )	-- 血腥迴廊的蝙蝠群吸取了飽滿的鮮血回巢，傳送結界已經關閉！！
		end 

		Sleep( 500 )

	end
end

-- 血腥迴廊出去傳送點
function LuaI_Outer_BloodyGallery()
	SetPlot( OwnerID() , "Range" , "Outer_BloodyGallery" ,  20 )
end

function Outer_BloodyGallery()
	ChangeZone( OwnerID() , 2 , 0 , -151 , 37 , 2640 , 0 )
end
