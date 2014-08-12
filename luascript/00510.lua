function Init_RoleValue_ENUM2()
-- 裝備位置列舉
Value = 0;
EM_EQWearPos_Head       = Value; Value = Value + 1;
EM_EQWearPos_Gloves	= Value; Value = Value + 1;
EM_EQWearPos_Shoes	= Value; Value = Value + 1;
EM_EQWearPos_Clothes	= Value; Value = Value + 1;
EM_EQWearPos_Pants	= Value; Value = Value + 1;
EM_EQWearPos_Back		= Value; Value = Value + 1;
EM_EQWearPos_Belt		= Value; Value = Value + 1;
EM_EQWearPos_Shoulder	= Value; Value = Value + 1;
EM_EQWearPos_Necklace   = Value; Value = Value + 1;
EM_EQWearPos_Ammo       = Value; Value = Value + 1;
EM_EQWearPos_Bow        = Value; Value = Value + 1;
EM_EQWearPos_Ring1      = Value; Value = Value + 1;
EM_EQWearPos_Ring2      = Value; Value = Value + 1;
EM_EQWearPos_Earring1   = Value; Value = Value + 1;
EM_EQWearPos_Earring2   = Value; Value = Value + 1;
EM_EQWearPos_MainHand	= Value; Value = Value + 1;
EM_EQWearPos_SecondHand = Value; Value = Value + 1;
EM_EQWearPos_Manufactory= Value; Value = Value + 1;

--對話介面類型
EM_LuaDialogType_YesNo = 0
EM_LuaDialogType_Select =1
EM_LuaDialogType_Input=2

-- int GetItemInfo( int GItemID , int PGType , int Pos , int ValueType )
--包裹類型
EM_ItemPacketType_Body = 0
EM_ItemPacketType_Bank = 1
EM_ItemPacketType_EQ = 2

--物品類型列舉
Value = 0;
EM_ItemValueType_OrgObjID =  Value ; Value = Value + 1;
EM_ItemValueType_Inherent1=  Value ; Value = Value + 1;
EM_ItemValueType_Inherent2=  Value ; Value = Value + 1;
EM_ItemValueType_Inherent3=  Value ; Value = Value + 1;
EM_ItemValueType_Inherent4=  Value ; Value = Value + 1;
EM_ItemValueType_Inherent5=  Value ; Value = Value + 1;
EM_ItemValueType_Inherent6=  Value ; Value = Value + 1;
EM_ItemValueType_Rune1	=  Value ; Value = Value + 1;
EM_ItemValueType_Rune2	=  Value ; Value = Value + 1;
EM_ItemValueType_Rune3	=  Value ; Value = Value + 1;
EM_ItemValueType_Rune4	=  Value ; Value = Value + 1;
EM_ItemValueType_Level = Value;Value=Value+1;

--OpenClientMenu( OwnerID() , EM_ClientMenuType_Bag )
-- 開Client端介面
Value = 0;
EM_ClientMenuType_Bag			= Value; Value = Value + 1;	--背包
EM_ClientMenuType_Skill			= Value; Value = Value + 1;	--技能書
EM_ClientMenuType_EQ			= Value; Value = Value + 1;	--EQ介面
EM_ClientMenuType_Quest			= Value; Value = Value + 1;	--任物日誌
EM_ClientMenuType_FriendList		= Value; Value = Value + 1;	--朋友列表
EM_ClientMenuType_CardBook		= Value; Value = Value + 1;	--卡片
EM_ClientMenuType_LifeSkill		= Value; Value = Value + 1;	--生活技能
EM_ClientMenuType_Guild			= Value; Value = Value + 1;	--公會介面
EM_ClientMenuType_GuildList		= Value; Value = Value + 1;	--公會列表
EM_ClientMenuType_GuildBillboard		= Value; Value = Value + 1;	--公會留言板
EM_ClientMenuType_Loading		= Value; Value = Value + 1;	--Loading畫面
EM_ClientMenuType_SetGuildFlag                        = Value; Value = Value + 1;	--設定公會旗介面

--關系列舉
Value = 0;
EM_RelationType_Stranger		= Value; Value = Value + 1;	--莫生人(不可使用 )
EM_RelationType_Friend		= Value; Value = Value + 1;	--好友( 不可使用 )
EM_RelationType_Enemy		= Value; Value = Value + 1;	--仇人( 不可使用 )
EM_RelationType_Student		= Value; Value = Value + 1;	--學生
EM_RelationType_Teacher		= Value; Value = Value + 1;	--老師
EM_RelationType_Wife		= Value; Value = Value + 1;	--妻子
EM_RelationType_Husband		= Value; Value = Value + 1;	--先生
EM_RelationType_Lover		= Value; Value = Value + 1;	--情人
EM_RelationType_Brother		= Value; Value = Value + 1;	--兄弟
EM_RelationType_Sister		= Value; Value = Value + 1;	--姐妹
EM_RelationType_BestFriend		= Value; Value = Value + 1;	--摯友
EM_RelationType_BadCompany	= Value; Value = Value + 1;	--損友

--技能設定
Value = 0;
EM_SkillValueType_Unarmed	= Value; Value = Value + 1;	--Unarmed空手
EM_SkillValueType_Blade             	= Value; Value = Value + 1;	-- 劍
EM_SkillValueType_Dagger            	= Value; Value = Value + 1;	--匕首
EM_SkillValueType_Wand             	 = Value; Value = Value + 1;	--權杖
EM_SkillValueType_Axe              	 = Value; Value = Value + 1;	--斧
EM_SkillValueType_Bludgeon          	= Value; Value = Value + 1;	--鎚棍棒
EM_SkillValueType_Claymore          	= Value; Value = Value + 1;	--雙手劍
EM_SkillValueType_Staff             	= Value; Value = Value + 1;	--杖
EM_SkillValueType_2H_Axe            	= Value; Value = Value + 1;	--雙手斧
EM_SkillValueType_2H_Hammer         	= Value; Value = Value + 1;	--雙手鎚
EM_SkillValueType_Polearm		= Value; Value = Value + 1;	--槍(長矛)
EM_SkillValueType_Bow		= Value; Value = Value + 1;	--遠程武器弓
EM_SkillValueType_CossBow	= Value; Value = Value + 1;	--遠程武器十字弓
EM_SkillValueType_Gun		= Value; Value = Value + 1;	--遠程武器槍
EM_SkillValueType_Define		= Value; Value = Value + 1;	--防禦
EM_SkillValueType_BlackSmith	= Value; Value = Value + 1;	--打鐵
EM_SkillValueType_Carpenter	= Value; Value = Value + 1;	--木工
EM_SkillValueType_MakeArmor	= Value; Value = Value + 1;	--製甲
EM_SkillValueType_Tailor		= Value; Value = Value + 1;	--裁縫
EM_SkillValueType_Cook		= Value; Value = Value + 1;	--烹飪
EM_SkillValueType_Alchemy		= Value; Value = Value + 1;	--煉金
EM_SkillValueType_Mining		= Value; Value = Value + 1;	--挖礦
EM_SkillValueType_Lumbering	= Value; Value = Value + 1;	--砍材
EM_SkillValueType_Herblism		= Value; Value = Value + 1;	--採藥
EM_SkillValueType_Fishing		= Value; Value = Value + 1;	--釣魚
EM_SkillValueType_Plant		= Value; Value = Value + 1;	--種植

--程式使用時間旗標
EM_TimeFlagEffect_HonorParty		= 0  --榮譽組隊
EM_TimeFlagEffect_BankBag25_49	=1	--銀行背包開放
EM_TimeFlagEffect_BankBag50_74	=2	--銀行背包開放
EM_TimeFlagEffect_BankBag75_99	=3	--銀行背包開放

--企劃使用時間旗標（企劃使用從99號往回用）
EM_TimeFlagEffect_OOXX			= 99	-- OOXX使用
end