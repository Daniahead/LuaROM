function LuaS_NewFamous_0()
	SetSpeakDetail ( OwnerID(), GetString ("ST_NEWFAMOUS_0")   )--�����@��

	if CountBodyItem( OwnerID(), 201838)>0 then
		AddSpeakOption ( OwnerID(), TargetID( ), GetString("ST_NEWFAMOUS_1") , "LuaS_NewFamous_1", 0 ) --�o�̬O�ʹ����L�A�ڧƱ�o��@�ӲŦX�ԥ\���ٸ��C
	end	

	if CountBodyItem( OwnerID(), 201839)>0 then
		AddSpeakOption ( OwnerID(), TargetID( ), GetString("ST_NEWFAMOUS_2") , "LuaS_NewFamous_2", 0 ) --�o�̬O�H�����L�A�ڧƱ�o��@�ӲŦX�ԥ\���ٸ��C
	end

	if CountBodyItem( OwnerID(), 201840)>0 then
		AddSpeakOption ( OwnerID(), TargetID( ), GetString("ST_NEWFAMOUS_3") , "LuaS_NewFamous_3", 0 ) --�o�̬O�@�߾��L�A�ڧƱ�o��@�ӲŦX�ԥ\���ٸ��C
	end

	if CountBodyItem( OwnerID(), 201841)>0 then
		AddSpeakOption ( OwnerID(), TargetID( ), GetString("ST_NEWFAMOUS_4") , "LuaS_NewFamous_4", 0 ) --�o�̬O�^�i���L�A�ڧƱ�o��@�ӲŦX�ԥ\���ٸ��C
	end

	if CountBodyItem( OwnerID(), 201842)>0 then
		AddSpeakOption ( OwnerID(), TargetID( ), GetString("ST_NEWFAMOUS_5") , "LuaS_NewFamous_5", 0 ) --�o�̬Oí�T���L�A�ڧƱ�o��@�ӲŦX�ԥ\���ٸ��C
	end
end