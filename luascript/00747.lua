function LuaI_111301_0()

	SetPlot( OwnerID() , "touch" , "LuaI_111301_1" , 40 )                                      --�]�wĲ�I�@��
                
end

function LuaI_111301_1()

	BeginPlot( TargetID() , "LuaI_111301_2" , 0 )                                                   --�R�O���w����I�s Script
end

function LuaI_111301_2()
	local Angel = ReadRoleValue( targetID(), EM_RoleValue_Dir ) + 180                --�N���󪺭��V�]�w���P���a��180�ת��ŧi
	   SetDir( OwnerID(), Angel)                                                                                --���wowner�����V
	   sleep(10)                                                                                                            --����1��
                   Say( TargetID() , GetString("SC_YUYUTEST_0") )                                         --TargetID���ԭz��
                   PlayMotion( TargetID() , ruFUSION_ACTORSTATE_EMOTE_SPEAK )        --��t�ʧ@(�t��)
                   sleep( 50 )

	   Say( OwnerID() , GetString("SC_YUYUTEST_1") ) 
                   PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_SPEAK )
  	   sleep( 30 )

                   Say( OwnerID() , GetString("SC_YUYUTEST_2") ) 
                   PlayMotion( OwnerID() , ruFUSION_ACTORSTATE_EMOTE_LAUGH  )     --��t�ʧ@(�j��)

                   sleep( 30 )

                 Hide( OwnerID() )                                                                                                --���ê���
	
                 local ID = CreateObj(100878 , 61.1 , 58.1 , -7063.1 , 32 , 1)	              --�гy���⪫��A�ŧi�N����"ID�]���N�W�١^"
	 if Lua~=nil then                                                                                                    --�䤣��SCRIPT�N�]�o�ӭ�
		BeginPlot( ID , lua, 0 )
	end
	AddToPartition( ID ,    0 )	                                                                              --�Ϯ���������X�{
	local Angel = ReadRoleValue( targetID(), EM_RoleValue_Dir ) + 180                --�N���󪺭��V�]�w���P���a��180�ת��ŧi
	   SetDir( ID , Angel)                                                                                --���wowner�����V
	SetAttack( ID , TargetID() )	                                                                              --�U�O����
	BeginPlot( ID , "LuaS_Discowood_CheckPeace", 0 )	                              --�B�榹�@���G�p�G�����԰��K�K
	BeginPlot( ID , "LuaS_Discowood_Check_HP", 0 )	                              --�B�榹�@���G�Ǫ���֩�50�H�K�K

	while true do
		sleep(20)
		if CheckID(ID)==false then                                                                   --�p�G�Ǫ����b�F�A���`�F
			Show(OwnerID() , 0)                                                            --�Ϯ���������X�{
			break
		end
	end
	BeginPlot( OwnerID() , "LuaI_111301_3", 0 )	                                             --�@���G�D�ǡK�K                         

	return ID
end

function LuaS_Discowood_CheckPeace()                                                                             --�@���G�p�G�����԰��K�K

	while true do
		sleep(35)
		AttackTarget = ReadRoleValue(OwnerID() , EM_RoleValue_AttackTargetID )    --�w�q�����ؼ�
		if AttackTarget == 0 then                                                                                       --�p�G�ؼЮ���(���`�����}�԰�)
			DelObj(OwnerID())                                                                               --�Ǫ�����
			break
		end
	end	
end

function LuaS_Discowood_Check_HP()                                                                               --�@���G�Ǫ���֩�50�H�K�K

	local HP = 0                                                                                                          --�ŧi HP �o�Ӽƭ�
	local MaxHP = ReadRoleValue( OwnerID() , EM_RoleValue_MaxHP )              --�ŧi�Ǫ����̤jHP
	local helfHP = MaxHP * 0.5                                                                                 --�ŧi helfHP ����̤jHP���@�b

	while true do
		sleep(35)
		HP = ReadRoleValue( OwnerID() , EM_RoleValue_HP )                    -- �ˬd����ثeHP���ݶq
			                                                                                            -- ���եΡA�n�Ǫ��ۤv���L�{�b�ҳѪ���q    SAY( OwnerID() , HP )
		if HP < helfHP then                                                                              -- �YHP�C��h�֦�q
			DelObj(OwnerID())                                                              -- �h�N�Ӫ���R��
			break
		end	
	end


end

function LuaI_111301_3()                                                                                                 --�@���G�D�ǡK�K


                   sleep( 20 )
                   PlayMotion( TargetID() , ruFUSION_ACTORSTATE_EMOTE_SURRENDER )        --��t�ʧ@(�D��)
                   sleep( 20 )
                   Say( TargetID() , GetString("SC_YUYUTEST_3") )                                         --TargetID���ԭz��
                   sleep( 50 )
end
