function LuaYU_111353_0()

	LoadQuestOption( OwnerID() )
	AddSpeakOption( OwnerID(), TargetID( ), GetString("YU_111353_DIALOG1") , "LuaYU_111353_1", 0 ) --�����ѤH���L�h
	AddSpeakOption( OwnerID(), TargetID( ), GetString("YU_111353_DIALOG6") , "LuaYU_111353_2", 0 ) --���󭷨�����


end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function LuaYU_111353_1()
	SetSpeakDetail( OwnerID(), GetString("YU_111353_D1")   )--�����ѤH���L�h����
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACK") , "LuaS_111376_0", 0 ) --�^��W�@��
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function LuaYU_111353_2()
	SetSpeakDetail( OwnerID(), GetString("YU_111353_D6")   )--���󭷨����Ǥ���
	AddSpeakOption( OwnerID(), TargetID( ), GetString("YU_111353_DIALOG2") , "LuaYU_111353_3", 0 ) --���󭷨����Ǫ��]��
	AddSpeakOption( OwnerID(), TargetID( ), GetString("YU_111353_DIALOG3") , "LuaYU_111353_4", 0 ) --�p����o�}�����S�����
	AddSpeakOption( OwnerID(), TargetID( ), GetString("YU_111353_DIALOG4") , "LuaYU_111353_5", 0 ) --�����]��
	AddSpeakOption( OwnerID(), TargetID( ), GetString("YU_111353_DIALOG5") , "LuaYU_111353_6", 0 ) --����Ͳ��t��
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACK") , "LuaS_111376_0", 0 ) --�^��W�@��
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function LuaYU_111353_3()
	SetSpeakDetail( OwnerID(), GetString("YU_111353_D2")   )--���󭷨����Ǫ��]��
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACK") , "LuaS_111376_0", 0 ) --�^��W�@��
end


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function LuaYU_111353_4()
	SetSpeakDetail( OwnerID(), GetString("YU_111353_D3")   )--����S�����
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACK") , "LuaS_111376_0", 0 ) --�^��W�@��
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function LuaYU_111353_5()
	SetSpeakDetail( OwnerID(), GetString("YU_111353_D4")   )--�����]��
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACK") , "LuaS_111376_0", 0 ) --�^��W�@��
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function LuaYU_111353_6()
	SetSpeakDetail( OwnerID(), GetString("YU_111353_D5")   )--����Ͳ��t��
	AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_BACK") , "LuaS_111376_0", 0 ) --�^��W�@��
end


