--�s��_�[�P�j��
function LuaS_111353_S1_0()

--�����ܿﶵ--
	if ( ReadRoleValue( OwnerID() , EM_RoleValue_SkillMax_MakeArmor  ) > 0) then --�p�G�|�s��
		SetSpeakDetail( OwnerID(), GetString ( "YU_111353_S1_1" )   );              --#�i�D�L�L�ݪ����F���ΦA��

	else  --�p�G���|�s��
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110390_1") , "LuaS_111353_S1_1", 0 );--/*�ڷQ�ǲ߻s�ҡC
	end

end

function LuaS_111353_S1_1()

	SetSpeakDetail( OwnerID(), GetString("YU_111353_S1_2" )  );--/*�ǲ߻s�ҡC
	AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SO_IKNOW") , "LuaS_111353_S1_2", 0 );--

end

function LuaS_111353_S1_2()

	CloseSpeak( OwnerID())	
	Beginplot( OwnerID() ,"LuaFunc_MAKEARMOR_Dialog", 0 )


end






--���K_�[�P�j��
function LuaS_111353_S2_0()

	if ( ReadRoleValue( OwnerID() , EM_RoleValue_SkillMax_BlackSmith ) > 0) then --�p�G�|���K
		SetSpeakDetail( OwnerID(), GetString ( "YU_111353_S2_1" )   );              --#�i�D�L�L�ݪ����F���ΦA��

	else  --�p�G���|���K
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110409_1") , "LuaS_111353_S2_1", 0 );	--/*�گu���ܷQ�ǥ��K�C
	end


function LuaS_111353_S2_1()

	SetSpeakDetail( OwnerID(), GetString("YU_111353_S2_2")   );--

	AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SO_IKNOW") , "LuaS_111353_S2_2", 0 );--
	
end

function LuaS_111353_S2_2()

	CloseSpeak( OwnerID())	
	Beginplot( OwnerID() ,"LuaFunc_BLACKSMITH_Dialog", 0 )


end




--��u_�[�P�j��
function LuaS_111353_S3_0()
 

	if ( ReadRoleValue( OwnerID() , EM_RoleValue_SkillMax_Carpenter  ) > 0) then --�p�G�|��u
		SetSpeakDetail( OwnerID(), GetString ( "YU_111353_S3_1" )   );              --#�i�D�L�L�ݪ����F���ΦA��

	else  --�p�G���|��u
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110412_1" ), "LuaS_111353_S3_1", 0 );	--/*�ڷQ�ǲߤ�u�C
	end

function LuaS_111353_S3_1()

	SetSpeakDetail( OwnerID(), GetString("YU_111353_S3_2" )  );
	AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SO_IKNOW") , "LuaS_111353_S3_2", 0 );--
end

function LuaS_111353_S3_2()

	CloseSpeak( OwnerID())	
	Beginplot( OwnerID() ,"LuaFunc_CARPENTER_Dialog", 0 )

end





--���__�[�P�j��
function LuaS_111353_S4_0()

	if ( ReadRoleValue( OwnerID() , EM_RoleValue_SkillMax_Tailor  ) > 0) then --�p�G�|���_
		SetSpeakDetail( OwnerID(), GetString ( "YU_111353_S4_1" )   );              --#�i�D�L�L�ݪ����F���ΦA��

	else  --�p�G���|���_
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110417_1") , "LuaS_111353_S4_1", 0 );	--/*�ڷQ�ǲߵ��_�C
	end


function LuaS_111353_S4_1()

	SetSpeakDetail( OwnerID(), GetString("YU_111353_S4_2" )  );--

	AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SO_IKNOW") , "LuaS_111353_S4_2", 0 );--

end

function LuaS_111353_S4_2()

	CloseSpeak( OwnerID())	
	Beginplot( OwnerID() ,"LuaFunc_TAILOR_Dialog", 0 )

end
