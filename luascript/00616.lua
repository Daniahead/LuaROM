function LuaS_110816_0()
--控制對話內容--
	if ( ReadRoleValue(OwnerID(), EM_RoleValue_SkillMax_Herblism ) >= 80 )  then --檢查有大師以上資格的話
		SetSpeakDetail( OwnerID(), GetString ( "ST_110816_5" )   );--#你應該已經能接觸到這個自然的奧秘了吧？我衷心地替你感到高興。
	elseif ( ReadRoleValue( OwnerID() , EM_RoleValue_Skill_Herblism ) == 60 ) then  --等級60提示要玩家去黑曜石要塞
		SetSpeakDetail( OwnerID(), GetString ( "ST_110816_4" )   );--#你真不簡單，連海柏女士都在誇獎你呢！不過接下來要更上一層，就得去找尋傳說中的採藥大師，現在沒有人知道他在哪裡，只有黑曜石要塞好像還有一些他的傳言。
	elseif ReadRoleValue( OwnerID() , EM_RoleValue_Skill_Herblism ) >= 40  then --等級大於40則叫玩家去找另一個NPC
		SetSpeakDetail( OwnerID(), GetString ( "ST_110816_3" )   );--#你真的很優秀，雖然海柏女士有點嘮叨，但她的知識遠勝於我，我希望你能跟她好好學習。
	elseif(    ReadRoleValue( OwnerID() , EM_RoleValue_Skill_Herblism ) == 20 ) then  --等級等於20時判斷是否可接任務
		--###技能達到進階標準時加入任務###--
		if LuaFunction_CheckWorkQuest( 1 ) == true and LuaFunction_CheckLimitJob( 40 ) < 6  then
			LoadQuestOption( OwnerID() );
		else --告知玩家所學工作技能超過了
			SetSpeakDetail( OwnerID(), GetString ( "ST_110816_2" )   );--#你似乎對其他的工作技能比較有興趣，但如果你願意空閒出一點精神來學習，我還是很樂意教你工匠級的採藥知識。
		end
		--################################--
	else --0~40級的對話
		SetSpeakDetail( OwnerID(), GetString("ST_110816_0")   );--/*我是採藥師娜塔，我很樂意與你分享關於藥草的知識。
	end

--控制對話選項--
	if( ReadRoleValue ( OwnerID(), EM_RoleValue_SkillMax_Herblism ) >= 40) then
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_DEGRADE_DIALOG" ), "LuaS_110816_2", 0 ) --/*我想放棄目前的資格
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_DEGRADE_SAY"), "LuaS_DEGRADE", 0 ); --/*為何有時要降低資格？
	end 

	if ( CheckFlag( OwnerID(), 540333) == true ) then --如果會採藥
		AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SO_GATHER_SAY") , "LuaS_GATHER_SAY", 0 );  --#我要如何才能快速地找到採集目標？
		AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SO_AFTER_GATHER_HERB") , "LuaS_AFTER_GATHER_HERB", 0 ); --#請告訴我提煉的事情。	
	else  --如果不會採藥
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110816_1") , "LuaS_110816_1", 0 );	--/*我想學習採藥。
	end

--常態對話選項--
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_FORMULA_STORE") , "Lua_110816_RecipeList_Touch", 0 )  --/*我想看看你賣的配方。--讓不會的人也能看看能做什麼東西	
	AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SO_LIVING_SAY") , "LuaS_LIVING_SAY", 0 );--#什麼是生活技能？

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110816_1()

	SetSpeakDetail( OwnerID(), GetString("ST_110816_1" )  );
	--/*我很高興你願意學習這些知識，採藥是一門需要耐心以及細心的工作，你看起來就感覺很合適。
	--/*採藥時，藥鏟是不可或缺的，這把「克難的小鏟子」就當是我送你的見面禮吧！
	--/*當你把它裝備起來以後，左鍵點擊你所找到的藥草便會開始採集。
	--/*城外面有一些零星的藥草叢，去試試看吧！
	
	AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SO_IKNOW") , "LuaS_110816_3", 0 );--
end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110816_2()

	SetSpeakDetail( OwnerID(), GetString("ST_DEGRADE_WARN" )  );
	--/*我必須提醒你，一但放棄目前的資格，你將失去該資格所獲得的等級，你確定要放棄嗎？
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_YES"), "LuaS_DEGRADE_HERBLISM", 0 ); --/*確定。
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_GETVOC_NO"), "LuaS_110816_0", 0 ); --/*我再考慮看看。

end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110816_3()

	CloseSpeak( OwnerID())
	Beginplot( OwnerID() ,"LuaFunc_HERBLISM_Dialog", 0 )

end
--------------------------------------------------------------------------------------------------------------------------
