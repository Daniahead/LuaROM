
function LuaS_NewFamous_4()
	local Npc=TargetID()
	local sub= voc_lv( ReadRoleValue(OwnerID() , EM_RoleValue_VOC_SUB ) , OwnerID() )
	local lv =ReadRoleValue(OwnerID(),EM_RoleValue_LV)

	local voc = ReadRoleValue(OwnerID(),EM_RoleValue_VOC)
	local voc_sub=ReadRoleValue(OwnerID() , EM_RoleValue_VOC_SUB )
	local base = 530297--二維基數
	local DubArray={
			{  0         ,  base      ,  base+1  ,  base+2  ,  base+3  ,  base+4  ,  base+5  , base+6   },
			{ base     , 0            ,  base+7  ,  base+8  ,  base+9  , base+10 , base+11 , base+12 },
			{ base+1 , base+7   , 0            , base+13 ,  base+14, base+15 , base+16 , base+17 },
			{ base+2 , base+8   , base+13 , 0            , base+18 , base+19 , base+20 , base+21 },
			{ base+3 , base+9   , base+14 , base+18 , 0            , base+22 , base+23 , base+24 },
			{ base+4 , base+10 , base+15 , base+19 , base+22 , 0            , base+25 , base+26 },
			{ base+5 , base+11 , base+16 , base+20 , base+23 , base+25 , 0            , base+27 },
			{ base+6 , base+12 , base+17 , base+21 , base+24 , base+26 , base+27 , 0            },
			}--戰士到德魯依的列表
	
	if sub then
		if ( sub > 29 ) and ( lv > 29 ) then
			if CountBodyItem( OwnerID(), DubArray[voc][voc_sub])==0 then
				CloseSpeak(OwnerID())
				Say(Npc,GetString("ST_NEWFAMOUS_0_2"))
				GiveBodyItem( OwnerID(), DubArray[voc][voc_sub], 1 )
				DelBodyItem(OwnerID(),201841,1)
			else
				SetSpeakDetail ( OwnerID(), GetString ( "ST_NEWFAMOUS_0_1" )   )--你已經有了啊
			end
		else
			LoadQuestOption(OwnerID())
		end
	else
		LoadQuestOption(OwnerID())
	end
end


function LuaS_NewFamous_5()
	local Npc=TargetID()
	local sub= voc_lv( ReadRoleValue(OwnerID() , EM_RoleValue_VOC_SUB ) , OwnerID() )
	local lv =ReadRoleValue(OwnerID(),EM_RoleValue_LV)

	local voc = ReadRoleValue(OwnerID(),EM_RoleValue_VOC)
	local voc_sub=ReadRoleValue(OwnerID() , EM_RoleValue_VOC_SUB )
	local base = 530325--二維基數
	local DubArray={
			{  0         ,  base      ,  base+1  ,  base+2  ,  base+3  ,  base+4  ,  base+5  , base+6   },
			{ base     , 0            ,  base+7  ,  base+8  ,  base+9  , base+10 , base+11 , base+12 },
			{ base+1 , base+7   , 0            , base+13 ,  base+14, base+15 , base+16 , base+17 },
			{ base+2 , base+8   , base+13 , 0            , base+18 , base+19 , base+20 , base+21 },
			{ base+3 , base+9   , base+14 , base+18 , 0            , base+22 , base+23 , base+24 },
			{ base+4 , base+10 , base+15 , base+19 , base+22 , 0            , base+25 , base+26 },
			{ base+5 , base+11 , base+16 , base+20 , base+23 , base+25 , 0            , base+27 },
			{ base+6 , base+12 , base+17 , base+21 , base+24 , base+26 , base+27 , 0            },
			}--戰士到德魯依的列表
	
	if sub then
		if ( sub > 34 ) and ( lv > 34 ) then
			if CountBodyItem( OwnerID(), DubArray[voc][voc_sub])==0 then
				CloseSpeak(OwnerID())
				Say(Npc,GetString("ST_NEWFAMOUS_0_2"))
				GiveBodyItem( OwnerID(), DubArray[voc][voc_sub], 1 )
				DelBodyItem(OwnerID(),201842,1)
			else
				SetSpeakDetail ( OwnerID(), GetString ( "ST_NEWFAMOUS_0_1" )   )--你已經有了啊
			end
		else
			LoadQuestOption(OwnerID())
		end
	else
		LoadQuestOption(OwnerID())
	end
end