function Init_RoleValue_ENUM2()
-- �˳Ʀ�m�C�|
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

--��ܤ�������
EM_LuaDialogType_YesNo = 0
EM_LuaDialogType_Select =1
EM_LuaDialogType_Input=2

-- int GetItemInfo( int GItemID , int PGType , int Pos , int ValueType )
--�]�q����
EM_ItemPacketType_Body = 0
EM_ItemPacketType_Bank = 1
EM_ItemPacketType_EQ = 2

--���~�����C�|
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
-- �}Client�ݤ���
Value = 0;
EM_ClientMenuType_Bag			= Value; Value = Value + 1;	--�I�]
EM_ClientMenuType_Skill			= Value; Value = Value + 1;	--�ޯ��
EM_ClientMenuType_EQ			= Value; Value = Value + 1;	--EQ����
EM_ClientMenuType_Quest			= Value; Value = Value + 1;	--������x
EM_ClientMenuType_FriendList		= Value; Value = Value + 1;	--�B�ͦC��
EM_ClientMenuType_CardBook		= Value; Value = Value + 1;	--�d��
EM_ClientMenuType_LifeSkill		= Value; Value = Value + 1;	--�ͬ��ޯ�
EM_ClientMenuType_Guild			= Value; Value = Value + 1;	--���|����
EM_ClientMenuType_GuildList		= Value; Value = Value + 1;	--���|�C��
EM_ClientMenuType_GuildBillboard		= Value; Value = Value + 1;	--���|�d���O
EM_ClientMenuType_Loading		= Value; Value = Value + 1;	--Loading�e��
EM_ClientMenuType_SetGuildFlag                        = Value; Value = Value + 1;	--�]�w���|�X����

--���t�C�|
Value = 0;
EM_RelationType_Stranger		= Value; Value = Value + 1;	--���ͤH(���i�ϥ� )
EM_RelationType_Friend		= Value; Value = Value + 1;	--�n��( ���i�ϥ� )
EM_RelationType_Enemy		= Value; Value = Value + 1;	--���H( ���i�ϥ� )
EM_RelationType_Student		= Value; Value = Value + 1;	--�ǥ�
EM_RelationType_Teacher		= Value; Value = Value + 1;	--�Ѯv
EM_RelationType_Wife		= Value; Value = Value + 1;	--�d�l
EM_RelationType_Husband		= Value; Value = Value + 1;	--����
EM_RelationType_Lover		= Value; Value = Value + 1;	--���H
EM_RelationType_Brother		= Value; Value = Value + 1;	--�S��
EM_RelationType_Sister		= Value; Value = Value + 1;	--�j�f
EM_RelationType_BestFriend		= Value; Value = Value + 1;	--����
EM_RelationType_BadCompany	= Value; Value = Value + 1;	--�l��

--�ޯ�]�w
Value = 0;
EM_SkillValueType_Unarmed	= Value; Value = Value + 1;	--Unarmed�Ť�
EM_SkillValueType_Blade             	= Value; Value = Value + 1;	-- �C
EM_SkillValueType_Dagger            	= Value; Value = Value + 1;	--�P��
EM_SkillValueType_Wand             	 = Value; Value = Value + 1;	--�v��
EM_SkillValueType_Axe              	 = Value; Value = Value + 1;	--��
EM_SkillValueType_Bludgeon          	= Value; Value = Value + 1;	--��Ҵ�
EM_SkillValueType_Claymore          	= Value; Value = Value + 1;	--����C
EM_SkillValueType_Staff             	= Value; Value = Value + 1;	--��
EM_SkillValueType_2H_Axe            	= Value; Value = Value + 1;	--�����
EM_SkillValueType_2H_Hammer         	= Value; Value = Value + 1;	--������
EM_SkillValueType_Polearm		= Value; Value = Value + 1;	--�j(����)
EM_SkillValueType_Bow		= Value; Value = Value + 1;	--���{�Z���}
EM_SkillValueType_CossBow	= Value; Value = Value + 1;	--���{�Z���Q�r�}
EM_SkillValueType_Gun		= Value; Value = Value + 1;	--���{�Z���j
EM_SkillValueType_Define		= Value; Value = Value + 1;	--���m
EM_SkillValueType_BlackSmith	= Value; Value = Value + 1;	--���K
EM_SkillValueType_Carpenter	= Value; Value = Value + 1;	--��u
EM_SkillValueType_MakeArmor	= Value; Value = Value + 1;	--�s��
EM_SkillValueType_Tailor		= Value; Value = Value + 1;	--���_
EM_SkillValueType_Cook		= Value; Value = Value + 1;	--�i��
EM_SkillValueType_Alchemy		= Value; Value = Value + 1;	--�Ҫ�
EM_SkillValueType_Mining		= Value; Value = Value + 1;	--���q
EM_SkillValueType_Lumbering	= Value; Value = Value + 1;	--���
EM_SkillValueType_Herblism		= Value; Value = Value + 1;	--����
EM_SkillValueType_Fishing		= Value; Value = Value + 1;	--����
EM_SkillValueType_Plant		= Value; Value = Value + 1;	--�ش�

--�{���ϥήɶ��X��
EM_TimeFlagEffect_HonorParty		= 0  --�a�A�ն�
EM_TimeFlagEffect_BankBag25_49	=1	--�Ȧ�I�]�}��
EM_TimeFlagEffect_BankBag50_74	=2	--�Ȧ�I�]�}��
EM_TimeFlagEffect_BankBag75_99	=3	--�Ȧ�I�]�}��

--�����ϥήɶ��X�С]�����ϥαq99�����^�Ρ^
EM_TimeFlagEffect_OOXX			= 99	-- OOXX�ϥ�
end