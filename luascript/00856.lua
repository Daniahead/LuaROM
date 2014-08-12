function yuyu_flag_00()                                                                                                 

                BeginPlot( OwnerID() , "yuyu_flag_01" , 0 )                                               --先設一個隱藏物件會先啟動function               

end

function yuyu_flag_01()                                                                                                 


	local X = Rand( 10 )                                                                                       --Rand(隨機旗子的數量)

		local CCC = CreateObjByFlag( 100044, 580100 , X , 1 );             --參照指定物件的位置來產生物件　(產生的物件ID，旗子ID，隨機的旗號，產生的數量)
		AddToPartition( CCC , 0 )                                                             --加進舞台(加入者 , 舞台層級)

	setplot(CCC , "dead","yuyu_flag_01",0 )			      --指定 XXX(另一地方出現者) 執行死亡劇情


end