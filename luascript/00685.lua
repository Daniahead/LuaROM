function OpenBagMessage( Player , Message, Area )

	local PlayerName = GetName( Player )
	local MessageString = ReplaceString( GetString(Message), "PlayerName" , PlayerName )
	RunningMsg( Player , Area , MessageString ) 
	-- 恭喜PlayerName，通過公測紀念座騎包獲得永久座騎雪貂。
end

function ReplaceString( AllString , OriginalString , Replacestring )
	local i , j = string.find( AllString , OriginalString )
	if i==nil or j==nil then
		return AllString
	end
	local TempString = string.sub( AllString , 1 , i - 1 )..Replacestring..string.sub( AllString , j + 1 , -1 )
	return TempString
end

function HorseBag_Forever( Option )
	local PlayerID = OwnerID()
	local PackageID = 202076		-- 永久座騎雪貂包
	local NeedSpace = 1
	local NeedSpaceStatus  = Check_Bag_Space( PlayerID , NeedSpace  )

	if ( Option == "CHECK" ) then
		if ( NeedSpaceStatus  == false ) then
			return false
		elseif ( CountBodyItem( PlayerID , PackageID ) >= 1 ) then
			return true
		end
	elseif ( Option == "USE" ) then
		if GiveBodyItem( PlayerID , 201130 , 1 ) then	-- 永久騎乘雪貂
			OpenBagMessage( PlayerID , "MSG_OPENBAG_01", 2 )
		end
	end
end
function HorseBag_OneMonth( Option )
	local PlayerID = OwnerID()
	local PackageID = 202094		-- 一個月座騎棕馬包
	local NeedSpace = 1
	local NeedSpaceStatus  = Check_Bag_Space( PlayerID , NeedSpace  )

	if ( Option == "CHECK" ) then
		if ( NeedSpaceStatus  == false ) then
			return false
		elseif ( CountBodyItem( PlayerID , PackageID ) >= 1 ) then
			return true
		end
	elseif ( Option == "USE" ) then
		if GiveBodyItem( PlayerID , 201698 , 1 ) then	-- 一個月座騎棕馬
			OpenBagMessage( PlayerID , "MSG_OPENBAG_02", 2 )
		end
	end
end

