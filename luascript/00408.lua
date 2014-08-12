function LuaI_110541() 
	LoadQuestOption( OwnerID() );
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110541_1") , "LuaS_110541_1", 0 ); --/城下西區介紹
end

function LuaS_110541_1() 
	SetSpeakDetail( OwnerID(), GetString("ST_110541_1") )
	--/你現在來到的這個區域叫做城下西區，除了我們奧爾登打鐵舖之外，還聚集了一些木工屋、製甲屋、煉金店、魔法商店等等。
	--/打鐵舖：有打鐵器具可以從事打鐵的工作，能製造一些鐵製的武器。也有專門的教師，提供打鐵技能的學習與升階。
	--/木工屋：有木工器具可以從事木工的工作，能製造一些木製的武器。也有專門的教師，提供木工技能的學習與升階。
	--/製甲屋：有製甲器具可以從事製甲的工作，能製造鎧甲、鎖甲、皮甲等防具。也有專門的教師，提供製甲技能的學習與升階。
	--/煉金店：有煉金器具可以從事煉金的工作，能製造煉金的藥水。也有專門的教師，提供煉金技能的學習與升階。
	--/魔法商店：販賣一些魔法商品，以及一些基礎的符文。
	--/另外，凡瑞娜絲城警備隊的總部與座騎場也在這城下西區內，座騎場有座騎可以租賃。若你想接受一些委託任務的話，任務告示板就在警備隊的門口。
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACKTALK") , "LuaI_110541", 0 ); --/我想回到剛剛的對話
end

function LuaS_dindin_leave() 
	CloseSpeak( OwnerID() ); 
end

function LuaI_110542() 
	LoadQuestOption( OwnerID() );
  	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110542_1") , "LuaS_110542_1", 0 );--/城下東區介紹
end

function LuaS_110542_1() 
	SetSpeakDetail( OwnerID(), GetString("ST_110542_1") )
	--/城下東區同樣是相當具有活力的區域喔！這區域內有裁縫屋、烹飪屋、採集屋與雜貨店。
	--/裁縫屋：有裁縫器具可以從事裁縫的工作，能製造一些布衣、法袍等防具。也有專門的教師，提供裁縫技能的學習與升階。
	--/烹飪屋：有烹飪器具可以從事烹飪的工作，能製造一些食物、甜點等補給品。也有專門的教師，提供烹飪技能的學習與升階。
	--/採集屋：有專門的教師，提供挖礦、伐木、採藥等技能的學習與升階，並且販賣一些採集品的精鍊配方。
	--/雜貨店：販賣一些工作用的零件、耗材與工具。
	--/我代表城下東區所有的店家歡迎你，希望你能常光臨我們這裡！
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACKTALK") , "LuaI_110542", 0 ); --/我想回到剛剛的對話
end

function LuaI_110540() 
	LoadQuestOption( OwnerID() );
  	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110540_1") , "LuaS_110540_1", 0 );--/武器屋介紹
end

function LuaS_110540_1() 
	SetSpeakDetail( OwnerID(), GetString("ST_110540_1") )
	--/當今這個時代，冒險者使用的武器比較流行由自己親手鑄造，或是從世界各地去發現並取得，越來越少人向我們武器店購買了。
	--/所以現在我們武器屋所販賣的武器，是以提供團體所需的制式武器為主，一般來說樣式與能力都較為普通。
	--/不過，如果你手頭上還沒有順手的武器的話，倒是可以看看有沒有你需要的。
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACKTALK") , "LuaI_110540", 0 ); --/我想回到剛剛的對話
end

function LuaI_110021() 
	LoadQuestOption( OwnerID() );
  	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110021_1") , "LuaS_110021_1", 0 );--/防具屋介紹
end

function LuaS_110021_1() 
	SetSpeakDetail( OwnerID(), GetString("ST_110021_1")   );
	--/我們防具屋的定位與武器屋類似，大多數的商品是提供給團體使用，樣式與能力比較一般。
	--/不過，如果你身上的裝備還有欠缺的部分的話，當然也歡迎你跟我們購買，保證同樣堅固耐用！
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACKTALK") , "LuaI_110021", 0 ); --/我想回到剛剛的對話
end

function LuaI_110023() 
	LoadQuestOption( OwnerID() );
--  	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_WHATHOME") , "LuaS_110023_1", 0 );--/什麼是房屋？
end

function LuaS_110023_1() 
	SetSpeakDetail( OwnerID(), GetString("SO_HOMEINTRO") )	--房屋是指每人都可以申請購買的一個私人空間…
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACKTALK") , "LuaI_110023", 0 ); --/我想回到剛剛的對話
end

function LuaI_110049() 
	LoadQuestOption( OwnerID() )
  	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110049_1") , "LuaS_110049_1", 0 );--/交易所介紹
end

function LuaS_110049_1() 
	SetSpeakDetail( OwnerID(), GetString("ST_110049_1") )
	--/交易所是提供冒險者物品交流的地方。
	--/如果你在旅行的過程中得到有價值的武器、裝備、符文或其他物品，你可以拿到我們交易所來販賣；同樣地，如果你需要這些東西，也可來我們交易所尋找。
	--/這邊的商品都是由冒險者提供的，雖然不敢保證價格一定便宜，但是種類繁多，如果多來逛逛的話，還是常常會找到物廉價美的東西喔～
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACKTALK") , "LuaI_110049", 0 ); --/我想回到剛剛的對話
end

function LuaI_110167() 

	LoadQuestOption( OwnerID() )

	-- 七夕活動追加
	local hour = GetSystime(1)
	-- CheckBuff( OwnerID() ,501666 ) == true 
	if ( hour >= 18 and hour < 20 ) and ( CheckBuff( OwnerID() , 501666 ) == true or CheckFlag( OwnerID() , 541327 ) == true ) then	-- 冒險協會密語包裹
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SC_111307_12") , "LuaS_110167_6", 0 )	-- 完成任務-護送密語包裹
	elseif ( CountBodyItem( OwnerID() , 202696 ) >= 1 ) and ( CheckBuff( OwnerID() , 501666 ) == true or CheckFlag( OwnerID() , 541327 ) == true ) then	-- 冒險協會密語包裹
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SC_111307_12") , "LuaS_110167_6", 0 )	-- 完成任務-護送密語包裹
	end

	if CheckFlag( OwnerID()  , 540820 ) == true then
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110167_3") , "LuaS_110167_3", 0 )	-- 轉職後的注意事項！
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110167_4") , "LuaS_110167_4", 0 )	-- 我如何回到開墾聚落？
	end
  	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110167_1") , "LuaS_110167_1", 0 );--/轉職介紹
  	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110167_2") , "LuaS_110167_2", 0 );--/生活技能介紹
--  	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110167_5") , "LuaS_110167_5", 0 );--/我要兌獎

end

function LuaS_110167_1() 
	SetSpeakDetail( OwnerID(), GetString("ST_110167_1") )
	--/經過這段時間的歷練之後，想必你對目前職業的特性有了一定程度的瞭解了吧？
	--/往後的冒險生涯你將面臨更多的危險，當然你選擇繼續深入研究你所擁有的職業。或者，你也可以試著學習其他的職業，兩種職業搭配得宜的話，有時可以發出意想不到的威力。
	--/不過，想要學習其他職業的技能的話，必須先達到該職業導師的要求，目前我身邊就有騎士、戰士、盜賊、遊俠、法師、祭司等六個職業導師。
	--/如果你對某個職業有興趣的話，就去找他們談談吧！
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACKTALK") , "LuaI_110167", 0 ); --/我想回到剛剛的對話
end

function LuaS_110167_2() 
	SetSpeakDetail( OwnerID(), GetString("ST_110167_2") )
	--/我們冒險者，大部分的時候是武器、裝備與補給品的消耗者，但同時也可以是個優秀的生產者。
	--/透過生活技能的學習，我們可以親手製造這些武器、裝備與補給品，或是採集到製造這些產品的原料。
	--/由我們親手製造的產品，通常會比一般野外冒險所得，具有更多的符文空間，這些符文空間鑲嵌入符文之後，便能得到符文所帶來的力量。
	--/而且若是技術與運氣都達到了頂點的話，還會做出精品級的產品，不僅符文空間更多，原始威力也比一般的產品強大。
	--/凡瑞娜絲城的城下區，集合了各種生活技能的專家們，我想他們都會很樂意提供他們的知識。建議你可以先嘗試每種生活技能，找出你最喜歡的項目再深入去研究。
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACKTALK") , "LuaI_110167", 0 ); --/我想回到剛剛的對話
end

function LuaS_110167_3() 
	SetSpeakDetail( OwnerID(), GetString("ST_110167_3") )
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACKTALK") , "LuaI_110167", 0 ); --/我想回到剛剛的對話
end

function LuaS_110167_4() 
	SetSpeakDetail( OwnerID(), GetString("ST_110167_4") )
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACKTALK") , "LuaI_110167", 0 ); --/我想回到剛剛的對話
end
