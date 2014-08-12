--製甲_加賀大叔
function LuaS_111353_S1_0()

--控制對話選項--
	if ( ReadRoleValue( OwnerID() , EM_RoleValue_SkillMax_MakeArmor  ) > 0) then --如果會製甲
		SetSpeakDetail( OwnerID(), GetString ( "YU_111353_S1_1" )   );              --#告訴他他看的懂了不用再學

	else  --如果不會製甲
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110390_1") , "LuaS_111353_S1_1", 0 );--/*我想學習製甲。
	end

end

function LuaS_111353_S1_1()

	SetSpeakDetail( OwnerID(), GetString("YU_111353_S1_2" )  );--/*學習製甲。
	AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SO_IKNOW") , "LuaS_111353_S1_2", 0 );--

end

function LuaS_111353_S1_2()

	CloseSpeak( OwnerID())	
	Beginplot( OwnerID() ,"LuaFunc_MAKEARMOR_Dialog", 0 )


end






--打鐵_加賀大叔
function LuaS_111353_S2_0()

	if ( ReadRoleValue( OwnerID() , EM_RoleValue_SkillMax_BlackSmith ) > 0) then --如果會打鐵
		SetSpeakDetail( OwnerID(), GetString ( "YU_111353_S2_1" )   );              --#告訴他他看的懂了不用再學

	else  --如果不會打鐵
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110409_1") , "LuaS_111353_S2_1", 0 );	--/*我真的很想學打鐵。
	end


function LuaS_111353_S2_1()

	SetSpeakDetail( OwnerID(), GetString("YU_111353_S2_2")   );--

	AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SO_IKNOW") , "LuaS_111353_S2_2", 0 );--
	
end

function LuaS_111353_S2_2()

	CloseSpeak( OwnerID())	
	Beginplot( OwnerID() ,"LuaFunc_BLACKSMITH_Dialog", 0 )


end




--木工_加賀大叔
function LuaS_111353_S3_0()
 

	if ( ReadRoleValue( OwnerID() , EM_RoleValue_SkillMax_Carpenter  ) > 0) then --如果會木工
		SetSpeakDetail( OwnerID(), GetString ( "YU_111353_S3_1" )   );              --#告訴他他看的懂了不用再學

	else  --如果不會木工
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110412_1" ), "LuaS_111353_S3_1", 0 );	--/*我想學習木工。
	end

function LuaS_111353_S3_1()

	SetSpeakDetail( OwnerID(), GetString("YU_111353_S3_2" )  );
	AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SO_IKNOW") , "LuaS_111353_S3_2", 0 );--
end

function LuaS_111353_S3_2()

	CloseSpeak( OwnerID())	
	Beginplot( OwnerID() ,"LuaFunc_CARPENTER_Dialog", 0 )

end





--裁縫_加賀大叔
function LuaS_111353_S4_0()

	if ( ReadRoleValue( OwnerID() , EM_RoleValue_SkillMax_Tailor  ) > 0) then --如果會裁縫
		SetSpeakDetail( OwnerID(), GetString ( "YU_111353_S4_1" )   );              --#告訴他他看的懂了不用再學

	else  --如果不會裁縫
		AddSpeakOption( OwnerID(), TargetID( ), GetString("SO_110417_1") , "LuaS_111353_S4_1", 0 );	--/*我想學習裁縫。
	end


function LuaS_111353_S4_1()

	SetSpeakDetail( OwnerID(), GetString("YU_111353_S4_2" )  );--

	AddSpeakOption( OwnerID(), TargetID( ), GetString ( "SO_IKNOW") , "LuaS_111353_S4_2", 0 );--

end

function LuaS_111353_S4_2()

	CloseSpeak( OwnerID())	
	Beginplot( OwnerID() ,"LuaFunc_TAILOR_Dialog", 0 )

end
