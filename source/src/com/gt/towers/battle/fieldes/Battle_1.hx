package com.gt.towers.battle.fieldes;class Battle_1 extends FieldData{	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")	{		super(index, name, times, introNum, startNum, endNum);	/*	// places		places.push( new PlaceData( 0,	680,	1170,	1,	0,	"1",	true,	0	) );		places.push( new PlaceData( 1,	400,	650,	1,	1,	"0",	true,	1	) );*/#if flash		// images		/*images.push( new ImageData( "tree-0"	,	996.4,	138.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	741,	-73.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	481.5,	-20,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	1010.9,	491.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	761,	81.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	893.95,	187.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	1039.05,	789,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	962.9,	282.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	1020.1,	618.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	1025,	914.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	647.8,	40.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	850,	297.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	755.8,	209.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	504.5,	123.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	628.4,	149.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	933.4,	394.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	996.4,	-61.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	912.05,	25.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1102.05,	50.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	618.5,	-137.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	886.6,	-140.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	1165.1,	206.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	761,	-240.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1025,	-240.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	489.15,	-132.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1145.1,	-128.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	1186.55,	333.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	1056.1,	357.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	1166.5,	463.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	1166.5,	703.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	1166.5,	852,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	1179.5,	599,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-34.25,	1669.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	221.1,	1881.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	480.65,	1828.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	-2.9,	1365.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	221,	1747.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	114.55,	1670,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	-30.55,	1068.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	19.4,	1546.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	-37.9,	1211.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	-42.35,	915.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	360.35,	1816.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	158.2,	1559.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	252.25,	1647.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	503.6,	1733.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	379.65,	1707.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	75.1,	1462.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-34.25,	1869.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	70.2,	1803.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-139.8,	1757.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	343.55,	1946.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	95.6,	1969.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	-183,	1622.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	201.45,	2048.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	472.9,	2072.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-62.9,	2048.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	492.85,	1962,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-182.95,	1936.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	-204.45,	1496.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	-74.05,	1471.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	-184.1,	1365.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	-184.35,	1125.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	-182.95,	978.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	-170.95,	1258.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-34.3,	138.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	221.1,	-73.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	-2.8,	491.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	221.1,	81.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	114.15,	187.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	-30.95,	789,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	19.2,	282.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	-38,	618.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	360.3,	40.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	158.1,	297.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	252.3,	209.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	379.7,	149.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	74.7,	394.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-34.3,	-61.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	70.05,	25.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-139.95,	50.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	343.6,	-137.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	95.5,	-140.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	-183,	206.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	201.1,	-240.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	479.95,	-264.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-62.9,	-240.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-183,	-128.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	-204.45,	333.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	-74,	357.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	-184.4,	463.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	-184.4,	703.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	-184.4,	852,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	-171.4,	599,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	996.35,	1669.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	741,	1881.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	1011,	1365.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	761.1,	1747.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	893.55,	1670,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	1038.65,	1068.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	962.7,	1546.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	1020,	1211.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	647.75,	1816.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	849.9,	1559.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	755.85,	1647.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	628.45,	1707.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	933,	1462.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	996.35,	1869.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	911.9,	1803.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1101.9,	1757.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	618.55,	1946.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	886.5,	1969.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	1165.1,	1622.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	760.65,	2048.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1025,	2048.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1145.05,	1936.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	1186.55,	1496.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	1056.15,	1471.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	1166.2,	1365.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	1166.45,	1125.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	1165.05,	978.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	1179.05,	1258.6,	1,	0,	0,	1) );*/#end	}}