function yuyu_flag_00()                                                                                                 

                BeginPlot( OwnerID() , "yuyu_flag_01" , 0 )                                               --���]�@�����ê���|���Ұ�function               

end

function yuyu_flag_01()                                                                                                 


	local X = Rand( 10 )                                                                                       --Rand(�H���X�l���ƶq)

		local CCC = CreateObjByFlag( 100044, 580100 , X , 1 );             --�ѷӫ��w���󪺦�m�Ӳ��ͪ���@(���ͪ�����ID�A�X�lID�A�H�����X���A���ͪ��ƶq)
		AddToPartition( CCC , 0 )                                                             --�[�i�R�x(�[�J�� , �R�x�h��)

	setplot(CCC , "dead","yuyu_flag_01",0 )			      --���w XXX(�t�@�a��X�{��) ���榺�`�@��


end