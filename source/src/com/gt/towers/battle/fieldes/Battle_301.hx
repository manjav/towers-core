package com.gt.towers.battle.fieldes;class Battle_301 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	340,	1210,	31,	-1,	"1,6,5",	true,	-3	) );		places.push( new PlaceData( 1,	740,	1395,	1,	-1,	"0,2,6",	true,	-3	) );		places.push( new PlaceData( 2,	340,	1520,	11,	0,	"1",	true,	-3	) );		places.push( new PlaceData( 3,	340,	525,	1,	-1,	"4,7,5",	true,	-3	) );		places.push( new PlaceData( 4,	740,	710,	31,	-1,	"3,5,6",	true,	-3	) );		places.push( new PlaceData( 5,	340,	835,	42,	-1,	"0,3,4,6",	true,	-3	) );		places.push( new PlaceData( 6,	740,	1085,	42,	-1,	"0,1,4,5",	true,	-3	) );		places.push( new PlaceData( 7,	740,	400,	11,	1,	"3",	true,	-3	) );#if flash		// images		images.push( new ImageData( "rock-1"	,	905.3,	781.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	928.25,	799.15,	1,	0,	0,	1,	54.5,	56) );		images.push( new ImageData( "road-v"	,	294.35,	460.35,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	701.7,	654.95,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	294.35,	831.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	502.65,	-15.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	427.6,	26.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	690.95,	-4.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	592.7,	231.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	574.2,	129.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	29,	280.35,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	352.55,	895.65,	0.5,	-0.866012573242188,	0.866012573242188,	0.5) );		images.push( new ImageData( "hole-2"	,	483.75,	307.25,	1,	0,	0,	1,	51,	34) );		images.push( new ImageData( "road-v"	,	369.55,	538.25,	0.5,	-0.866012573242188,	0.866012573242188,	0.5) );		images.push( new ImageData( "road-v"	,	713.05,	336.8,	0.370773315429688,	0.9287109375,	-0.9287109375,	0.370773315429688) );		images.push( new ImageData( "road-v"	,	699,	650.2,	0.370773315429688,	0.9287109375,	-0.9287109375,	0.370773315429688) );		images.push( new ImageData( "road-v"	,	734.6,	1010.5,	0.370773315429688,	0.9287109375,	-0.9287109375,	0.370773315429688) );		images.push( new ImageData( "road-v"	,	369.55,	1244.1,	0.5,	-0.866012573242188,	0.866012573242188,	0.5) );		images.push( new ImageData( "road-v"	,	734.6,	1327.15,	0.370773315429688,	0.9287109375,	-0.9287109375,	0.370773315429688) );		images.push( new ImageData( "road-v"	,	687.5,	1004.5,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	229,	1133.85,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	229,	774.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	237.15,	450.35,	1.0927734375,	0,	0,	1,	111,	63) );		images.push( new ImageData( "building-plot"	,	643.75,	336.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	629,	1307.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	188.4,	1247.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	159.7,	650.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	170.05,	940.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	66.4,	781.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-37.7,	726.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-55.6,	919.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-37.7,	832.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-37.7,	1013.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-32.35,	429.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-50.25,	621.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-23.1,	1237.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-42.6,	1125.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-16.95,	1316.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	85.9,	863.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-32.35,	535.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	38.7,	627.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	70.75,	984.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	53.4,	1083.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	58.7,	1167,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	99.75,	1367.05,	0.998184204101563,	-0.0602264404296875,	0.0602264404296875,	0.998184204101563) );		images.push( new ImageData( "tree-0"	,	96.75,	1247.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	48.15,	388.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	119.15,	435.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	61.95,	535.25,	1.04344177246094,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	61.95,	700.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	130.6,	1102.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1.8,	1426.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	85.9,	1671.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	632.05,	998.05,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	229,	1445.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	927.65,	690.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	950.8,	882.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	927.65,	796.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	778.4,	1148.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	933.7,	397.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	915.1,	585.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	908.95,	1094.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	885.6,	1227.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	915.1,	1348.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	50.7,	1579.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	974.25,	1004.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	933,	498.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	868.3,	982.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	950.8,	1426.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	974.25,	1187.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	799.95,	57.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	360.35,	107.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	192.75,	185.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	251.45,	177.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	251.45,	159.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	290.1,	241.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	106.3,	121.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	604.8,	-4.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	478.2,	96.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	151,	280.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	776.6,	160.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	854.1,	442.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	819.25,	1416.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	187,	557.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	885.6,	1475.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	702.85,	1528.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	851,	1587.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	465.2,	1473.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	593.85,	1655.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	422.3,	1655.65,	1,	0,	0,	1,	19.25,	174.6) );		images.push( new ImageData( "tree-0"	,	495.8,	1559.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	593.85,	1559.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	587.2,	1454.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	324.75,	1650.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	205.75,	1611.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	121.15,	1499.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	90,	208.85,	1,	0,	0,	1) );		images.push( new ImageData( "rock-3"	,	868.3,	1245.6,	1,	0,	0,	1) );		images.push( new ImageData( "chair-1"	,	576.9,	1227.45,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	832.7,	1120.15,	1,	0,	0,	1) );		images.push( new ImageData( "bush-6"	,	233.4,	919.35,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	842.25,	588.3,	1,	0,	0,	1) );		images.push( new ImageData( "bush-2"	,	907.65,	382.1,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	202.4,	1564.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	324.75,	-30.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	907.65,	38.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	297.4,	47.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	963.1,	138.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	393.65,	201.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-12.25,	107.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	71.3,	26.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	194.9,	38.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	667.5,	129.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	842.25,	179,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	157.15,	833.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	160.75,	1013.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	629,	635.35,	1,	0,	0,	1) );		images.push( new ImageData( "rock-5"	,	713.9,	515.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	478.2,	179,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	902.7,	231.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	963.1,	285.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	804.75,	719.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	810.75,	828,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	841.8,	880.1,	1,	0,	0,	1) );#end	}}