--------------------------------------------------------------------------------------------------------------------------
function LuaQ_110030()

	local Armor5 = CreateObjByFlag( 100096 , 580025 , 4  , 1 )		-- �@����s��
	BeginPlot( Armor5 , "LuaQ_110030_Sui" , 0)
	SetAttack( Armor5 , TargetID() )
	AddToPartition( Armor5 , 0 )

	local Armor4 = CreateObjByFlag( 100096 , 580025 , 3  , 1 )		-- �@����s��
	BeginPlot( Armor4 , "LuaQ_110030_Sui" , 0)
	SetAttack( Armor4 , TargetID() )
	AddToPartition( Armor4 , 0 )

	local Armor3 = CreateObjByFlag( 100095 , 580025 , 2  , 1 )		-- �w���s��
	BeginPlot( Armor3 , "LuaQ_110030_Sui" , 0)
	SetAttack( Armor3 , TargetID() )
	AddToPartition( Armor3 , 0 )

	local Armor2 = CreateObjByFlag( 100094 , 580025 , 1  , 1 )		-- �y���s��
	BeginPlot( Armor2 , "LuaQ_110030_Sui" , 0)
	SetAttack( Armor2 , TargetID() )
	AddToPartition( Armor2 , 0 )

	local Armor1 = CreateObjByFlag( 100097 , 580025 , 0  , 1 )		-- �K�ҡE�J���̾| (���ͪ���ID , ���ͺX�lID , �X�l��mID , ���ͼƶq)
	BeginPlot( Armor1 , "LuaQ_110030_Sui" , 0)
	SetAttack( Armor1 , TargetID() )
	AddToPartition( Armor1 , 0 )

	return true
end

function LuaQ_110030_Sui()
	LuaFunc_Obj_Suicide(300)
end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110030_0()
	if CheckFlag( OwnerID(),540746) == true then
		LoadQuestOption( OwnerID() )
	else
		SetSpeakDetail( OwnerID(), GetString("ST_110030_0")   );
		--/*�ѰڡI�A�O��ڤ@�˳Q�x�b�o�̪��y�H�ܡH
		if CheckAcceptQuest( OwnerID(), 420222 ) then
			AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110030_1") , "LuaS_110030_1", 0 ); --/*�ڬO���U�ӱϧA���C
		end
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110030_0") , "LuaS_110030_EXIT", 0 ); --/*�������
	end


end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110030_1()

	CloseSpeak( OwnerID() );	--������ܵ���
	SetPlot( TargetID() , "Touch" , " LuaFunc_Obj_BUSY " , 40 )
	Say( TargetID(),GetString("SAY_110030_1") ) --/*�O���p�n��A�ӱϧڪ��ܡH
	sleep(20)
	Say( TargetID(),GetString("SAY_110030_2") ) --/*�u�O�Ӧn�F��ڭ̻������}�o�̡I
	sleep(20)
	Say( TargetID(),GetString("SAY_110030_3") ) --/*�~���]�\�٦��ǳ��~�A�d�U�n�p�ߡI�I
	MoveToFlagEnabled( TargetID(), false );
	SetRoleCamp( TargetID , "SNPC" ) --�]�wNPC���}�笰�i�Q�Ǫ�����
	BeginPlot( TargetID() , "LuaP_110030_0" , 30 ) 
	-- �C 6 ��j�M�@��NPC�O�_�٦s�b
	while 1 do
		sleep(60)
		if CheckID( TargetID() ) then
			if CheckFlag( OwnerID(),540746) == true then 
				break
			end
		else
			LuaFunc_ResetObj( TargetID() )
			break
		end
	end 


end
--------------------------------------------------------------------------------------------------------------------------
function LuaS_110030_EXIT()

	CloseSpeak( OwnerID() );	--������ܵ���
end
--------------------------------------------------------------------------------------------------------------------------
function LuaP_110030_0()

	local FlagID	= 580025;	-- FlagID	���|�X�l�s�եN��
	local FlagCount = GetMoveFlagCount ( FlagID ) - 1;
	local Flag	= 0;	-- Flag		���|�X�l�N��
	local Owner	= Role:new( OwnerID() ) 	-- OwnerID()	�O�@�� NPC	
	local DBID	= ReadRoleValue( TargetID() , EM_RoleValue_DBID ) 	

	Say( OwnerID(), "�X�l�`�ơG" .. FlagCount );

	while 1 do		
		-- DEBUG ��
		Say( OwnerID(), " X: " .. Owner:X() .. ", Y:" .. Owner:Z()   );
		if( LuaFunc_MoveToFlag( OwnerID(), FlagID , Flag ,0 ) == true and LuaFunc_PlayerCheck( TargetID() , DBID) == true ) then
			-- ���ե�
			Say( OwnerID(), "Everbody say " .. Flag );
			-- ��F�ƥ��I 1			
			if( Flag == 0 ) then
			
				Say(OwnerID(),GetString("SAY_110030_4")) --/*�o�Ӭ}�ެO�K�ҡE�J���̾|���_�ޡA�ڭ̱o�b���å�^�ӫe�k�X�h�C
				sleep( 30 )				
			end
			
			-- ��F�ƥ��I 2
			
			if( Flag == 1 ) then
			
				Say(OwnerID(),GetString("SAY_110030_5")) --/*�p���I�A�����j��s�Ҥ����D����ɭԷ|�X�{�C
				sleep( 30 )				
			end
	
			-- ��F�ƥ��I 3
			
			if( Flag == 2 ) then
				PlayMotion( OwnerID(),ruFUSION_ACTORSTATE_HURT_NORMAL)	
				Say(OwnerID(),GetString("SAY_110030_6")) --/*�z�I��ӬO�ߤl......�~���ڤF�I
				sleep( 30 )			
			END
			
			--��F�ƥ��I4
			
			if( Flag == 3 ) then 
			
				Say(OwnerID(),GetString("SAY_110030_7")) --/*�ڷQ�ڭ����ӧְk�X�K�ҡE�J���̾|���դO�d��F�C
				sleep( 30 )					
			end
				
			--��F�ƥ��I5
			if( Flag == 4 ) then 

				Say(OwnerID(),GetString("SAY_110030_8")) --/*�N��A���S��ť�줰���n��
			
				sleep(50)

				local IronArmor = CreateObjByFlag ( 100204 , FlagID , 6 , 1 )
				local Guard1 = CreateObjByFlag ( 100056 , FlagID , 7 , 1 )
				local Guard2 = CreateObjByFlag ( 100056 , FlagID , 8 , 1 )
				AddToPartition( IronArmor,0 )
				AddToPartition( Guard1 ,0 )
				AddToPartition( Guard2 ,0 )
				BeginPlot(IronArmor,"LuaQ_100097_Sui",0)
				BeginPlot(Guard1 ,"LuaQ_100097_Sui",0)
				BeginPlot(Guard2 ,"LuaQ_100097_Sui",0)
				Say(OwnerID(),GetString("SAY_110030_9")) --/*�O�K�ҡE�J���̾|�I�I�֫O�@�ڡ�֧֡I
				SetAttack( IronArmor , TargetID() )
				SetAttack( Guard1 , OwnerID() )
				SetAttack( Guard2 , OwnerID() )
				sleep(10)
				while 1 do
					if CheckID(IronArmor) == false and Owner:IsAttack() == false then
						break
					else 
						sleep(30)
					end
					sleep( 30 )
				end
					
			end	
			-- �ˬd�O���O����I�F
			if( Flag == 5 ) then
				
				Say(OwnerID(),GetString("SAY_110030_10")) --/*�I��ש�k�X�ӤF�C
				--�����j��	
				break;
				
			end		
			--�i���U�@��FLAG
			Flag = Flag+1;		
		end
	
		-- ����O���� 	
		sleep( 1 );
	end
	SetRoleCamp( OwnerID() , "NPC" )  --�]�wNPC���}��^�줣�|�Q����
	SetPlot( OwnerID() , "Touch" , "" , 40 )
	SetFlag( TargetID() ,540746,1)
	sleep( 600 )
	Say( OwnerID(),GetString("SAY_110030_11")) --/*���ڦ^�h�o�I�A���I
	LuaFunc_ResetObj( OwnerID() )
end
----------------------------------------------------------------------
function LuaQ_100097_Sui() 
	LuaFunc_Obj_Suicide(300)
end	
---------------------------------------------------------------------