function LuaS_110387_0()
--控制對話內容--
	if( ReadRoleValue ( OwnerID(), EM_RoleValue_SkillMax_Carpenter ) > 80) then --檢查上限大於80的話
		SetSpeakDetail( OwnerID(), GetString ( "ST_110387_5" )   );--#喔喔！這不是那個傳奇的木工大師嗎？沒想到你會特地來看我的發明呢！啊？不是啊？
	elseif ( ReadRoleValue(OwnerID(), EM_RoleValue_SkillMax_Carpenter  ) == 80 )then --檢查有大師資格的話
		SetSpeakDetail( OwnerID(), GetString ( "ST_110387_4" )   );--#你的木工技術真棒啊！我們或許可以談談關於發明的事......不，是關於木工的事情。
	elseif ( ReadRoleValue( OwnerID() , EM_RoleValue_Skill_Carpenter) == 60 ) then  --等級60提示要玩家去黑曜石要塞
		SetSpeakDetail( OwnerID(), GetString ( "ST_110387_3" )   );--#你的程度很有水準囉！專業的喔！我可以介紹你認識一個人，他是發明大師！跟他學......啊？抱歉，你是要往木工發展吧？這樣的話就是要到黑曜石要塞去，那裏有木工大師的消息，對了，你真的不想認識發明大師嗎？他叫做諾塞德，是我的好友......
	elseif ReadRoleValue( OwnerID() , EM_RoleValue_Skill_Carpenter ) < 40  then --等級小於40則叫玩家去找另一個NPC
		SetSpeakDetail( OwnerID(), GetString ( "ST_110387_2" )   );--#咦？你來找我學木工的嗎？該不會......唉！露易絲的迷糊病又犯了吧！很抱歉，她是我妹妹，從小就一直迷迷糊糊的，請不要在意，她或許只是忘記自己是入門木工導師，多跟她說幾次她還是會記起來的。
	elseif(    ReadRoleValue( OwnerID() , EM_RoleValue_Skill_Carpenter ) == 40 ) then  --等級等於40時判斷是否可接任務
		--###技能達到進階標準時加入任務###--
		if LuaFunction_CheckWorkQuest( 2 ) == true and LuaFunction_CheckLimitJob( 60 ) < 3  then
			LoadQuestOption( OwnerID() );
		else --告知玩家所學工作技能超過了
			SetSpeakDetail( OwnerID(), GetString ( "ST_110387_1" )   );--#唉呀！真是抱歉，你是來找我上課的嗎？咦？不是啊？你已經專精其他三樣技能了啊......我看你木工程度不錯，還以為你是來找學更多東西的呢！不過我還是可以教你雕刻喔！還是你喜歡新奇的東西？我正好有個新發明......
		end
		--################################--
	else --40~60級的對話
		SetSpeakDetail( OwnerID(), GetString("ST_110387_0")   );--/*木工工頭吉恩．卡本特，你好，想學習木工可以來找我，另外我的興趣是發明以及雕刻。
	end

--控制對話選項--
	if( ReadRoleValue ( OwnerID(), EM_RoleValue_SkillMax_Carpenter ) >= 40) then --擁有工匠以上資格則出現可以放棄資格的選項
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_DEGRADE_DIALOG") , "LuaS_110387_1", 0 ) --/*我想放棄目前的資格
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_DEGRADE_SAY"), "LuaS_DEGRADE", 0 ); --/*為何有時要降低資格？
	end 

--常態對話選項--
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_FORMULA_STORE") , "Lua_110387_RecipeList_Touch", 0 )  --/*我想看看你賣的配方。--讓不會的人也能看看能做什麼東西	
	AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SO_LIVING_SAY") , "LuaS_LIVING_SAY", 0 );--#什麼是生活技能？

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110387_1()

	SetSpeakDetail( OwnerID(), GetString("ST_DEGRADE_WARN")   );
	--/*我必須提醒你，一但放棄目前的資格，你將失去該資格所獲得的等級，你確定要放棄嗎？
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_YES"), "LuaS_DEGRADE_CARPENTER", 0 ); --/*確定。
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO"), "LuaS_110387_0", 0 ); --/*我再考慮看看。

end
--------------------------------------------------------------------------------------------------------------------------