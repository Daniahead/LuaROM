function LuaI_MSG_PUBLIC()
	local hour = 0
	local min = 0
	while 1 do
		hour = GetSystime(1)
		min = GetSystime(2)

		if GetSystime(1) == 11 and  GetSystime(2) == 30 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_1") )  --�z�s�s�ù���������ǱN�b 30 ������}�ҡC
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_1") ) --�Z��R���س]���ʱN��30������}�l�C
		end 
		if GetSystime(1) == 11 and  GetSystime(2) == 50 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_2") )  --�z�s�s�ù���������ǱN�b 10 ������}�ҡC
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_2") ) --�Z��R���س]���ʱN��10������}�l�C
		end 
		if GetSystime(1) == 11 and  GetSystime(2) == 55 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_3") ) --�z�s�s�ù���������ǱN�b 5 ������}�ҡC
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_3") ) --�Z��R���س]���ʱN��5������}�l�C
		end 
		if GetSystime(1) == 12 and  GetSystime(2) == 0 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_4") ) --�z�s�s�ù���������Ǥw�}�ҡA�N�� 1 �p�ɫ������J�f�C
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_4") ) --�Z��R���س]���ʤw�}�l�A�ЦV�Z��R���������߻�ǳ��W�C
		end 
		if GetSystime(1) == 12 and  GetSystime(2) == 50 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_5") ) --�Z��R���س]���ʱN��10�����ᵲ���A�Х������̺ɳt�^��Z��R�����C
		end
		if GetSystime(1) == 13 and  GetSystime(2) == 0 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_6") ) --�Z��R���س]���ʤw�g�����C
		end 

		if GetSystime(1) == 17 and  GetSystime(2) == 30 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_1") )  --�z�s�s�ù���������ǱN�b 30 ������}�ҡC

		end 
		if GetSystime(1) == 17 and  GetSystime(2) == 50 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_2") ) --�z�s�s�ù���������ǱN�b 10 ������}�ҡC
		end 
		if GetSystime(1) == 17 and  GetSystime(2) == 55 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_3") ) --�z�s�s�ù���������ǱN�b 5 ������}�ҡC
		end 
		if GetSystime(1) == 18 and  GetSystime(2) == 0 then
			RunningMsg( OwnerID() , 2 ,  GetString("SAY_WINDMILL_4") )-- �z�s�s�ù���������Ǥw�}�ҡA�N�� 1 �p�ɫ������J�f�C
		end 
		if GetSystime(1) == 19 and  GetSystime(2) == 30 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_1") ) --�Z��R���س]���ʱN��30������}�l�C
		end 
		if GetSystime(1) == 19 and  GetSystime(2) == 50 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_2") ) --�Z��R���س]���ʱN��10������}�l�C
		end 
		if GetSystime(1) == 19 and  GetSystime(2) == 55 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_3") ) --�Z��R���س]���ʱN��5������}�l�C
		end 
		if GetSystime(1) == 20 and  GetSystime(2) == 0 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_4") ) --�Z��R���س]���ʤw�}�l�A�ЦV�Z��R���������߻�ǳ��W�C
		end 
		if GetSystime(1) == 20 and  GetSystime(2) == 50 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_5") ) --�Z��R���س]���ʱN��10�����ᵲ���A�Х������̺ɳt�^��Z��R�����C
		end
		if GetSystime(1) == 21 and  GetSystime(2) == 0 then
			RunningMsg( OwnerID() , 2 ,  GetString("QUESTPK_MSG_MINE_KILLER_6") ) --�Z��R���س]���ʤw�g�����C
		end 		

		if  ( hour == 21 and min  == 40 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("BLOODYGALLERY_OPEN_1") )	-- ��{�j�Y�̪������s�}�l�������ʡC
		end 
		if  ( hour == 21 and min  == 50 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("BLOODYGALLERY_OPEN_2") )	-- ��{�j�Y�̪������s�}�l�������ʡA�ǰe���ɧY�N�}�ҡC
		end 
		if  ( hour == 22 and min  == 0 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("BLOODYGALLERY_OPEN_3") )	-- ��{�j�Y�����ɶ}�ҡA�����s�@��ӥX�I�I
		end 
		if  ( hour == 0 and min  == 0 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("BLOODYGALLERY_OPEN_4") )	-- ��{�j�Y�������s�l���F�������A��^�_�A�ǰe���ɤw�g�����I�I
		end 

		if  ( hour == 17 and min  == 50 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("SC_LOVE_ACTION_1") )		-- �R�N���٫O�@��ʱN��10������}�l�C
		end
		if  ( hour == 18 and min  == 0 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("SC_LOVE_ACTION_2") )		-- �R�N���٫O�@��ʤw�}�l�A�ЦV�Z��R�����F�Ϫ�ù�K���W�C
		end
		if  ( hour == 19 and min  == 50 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("SC_LOVE_ACTION_3") )		-- �R�N���٫O�@��ʱN��10�����ᵲ���A�Х������̾��t�����C
		end
		if  ( hour == 20 and min  == 0 ) then
			RunningMsg( OwnerID() , 2 ,  GetString("SC_LOVE_ACTION_4") )		-- �R�N���٫O�@��ʤw�g�����C
		end

--		if (hour > 10  or hour < 23) and (min == 55) then
--			RunningMsg( OwnerID() , 2 ,  GetString("SC_111284_1") )	-- �t�����媺���ұN�b��������}��
--		end

--		if (hour > 11) and (min == 0) then
--			RunningMsg( OwnerID() , 2 ,  GetString("SC_111284_2") )	-- �Q�����t�����媺���a�Ч�������U�I
--		end

--		if (hour > 11) and (min == 40) then
--			RunningMsg( OwnerID() , 2 ,  GetString("SC_111284_10") )	-- �t�����媺���Ҥw����
--		end
		sleep( 300 )

	end

end