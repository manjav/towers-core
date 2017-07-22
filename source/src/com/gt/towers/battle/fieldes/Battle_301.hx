package com.gt.towers.battle.fieldes;class Battle_301 extends FieldData{	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasStart, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	340,	1210,	1,	-1,	"1,6,5",	true,	-3	) );		places.push( new PlaceData( 1,	740,	1395,	31,	-1,	"0,2,6",	true,	-3	) );		places.push( new PlaceData( 2,	340,	1520,	1,	0,	"1",	true,	-3	) );		places.push( new PlaceData( 3,	340,	525,	31,	-1,	"5,4,7",	true,	-3	) );		places.push( new PlaceData( 4,	740,	710,	1,	-1,	"3,6,5",	true,	-3	) );		places.push( new PlaceData( 5,	340,	835,	41,	-1,	"0,3,4,6",	true,	-3	) );		places.push( new PlaceData( 6,	740,	1085,	41,	-1,	"0,1,4,5",	true,	-3	) );		places.push( new PlaceData( 7,	740,	400,	1,	1,	"3",	true,	-3	) );		// create images		images.push( new ImageData( "rock-1"	,	899.6,	846.7,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	777.25,	1331.75,	-0.394500732421875,	0.918869018554688,	-0.918869018554688,	-0.394500732421875) );		images.push( new ImageData( "road-v"	,	734.6,	1010.5,	0.370773315429688,	0.9287109375,	-0.9287109375,	0.370773315429688) );		images.push( new ImageData( "road-v"	,	768.5,	660,	-0.394500732421875,	0.918869018554688,	-0.918869018554688,	-0.394500732421875) );		images.push( new ImageData( "road-v"	,	300.35,	479.25,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	701.7,	654.95,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	294.35,	831.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	512.2,	9.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	465.2,	9.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	654.6,	17.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	587.2,	9.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	532.2,	67,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	29,	280.35,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	352.55,	895.65,	0.5,	-0.866012573242188,	0.866012573242188,	0.5) );		images.push( new ImageData( "background-0-l"	,	0,	-11.65,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	-11.65,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	0,	1535.8,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1644.95,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "hole-2"	,	450.35,	275.45,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );		images.push( new ImageData( "road-v"	,	713.05,	336.8,	0.370773315429688,	0.9287109375,	-0.9287109375,	0.370773315429688) );		images.push( new ImageData( "road-v"	,	699,	650.2,	0.370773315429688,	0.9287109375,	-0.9287109375,	0.370773315429688) );		images.push( new ImageData( "road-v"	,	734.6,	1327.15,	0.370773315429688,	0.9287109375,	-0.9287109375,	0.370773315429688) );		images.push( new ImageData( "road-v"	,	687.5,	1004.5,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	229,	1133.85,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	229,	774.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	229,	450.35,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	643.75,	336.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	629,	1307.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	188.4,	1247.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	159.7,	650.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	170.05,	940.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	66.4,	781.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-37.7,	726.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-55.6,	919.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-37.7,	832.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-4.4,	820.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-4.4,	926.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-37.1,	835.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-32.35,	429.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-50.25,	621.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-56.4,	1130.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-77.95,	1307.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-77.95,	1236.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-50.25,	1375.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-50.25,	1357.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-55.6,	990.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-32.35,	535.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	21.6,	828,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	21.6,	809.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	60.25,	892.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-3.8,	929.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	70.75,	984.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	38.7,	1155.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	38.7,	1084.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	66.4,	1223.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	66.4,	1205.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	41,	1325.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	26.35,	421.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	26.35,	403.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	65,	485.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	0.95,	522.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	62.35,	572.4,	1.04344177246094,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-16.95,	715.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	61.95,	700.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-23.1,	1224.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-44.65,	1401.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-44.65,	1329.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-22.3,	1084.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	0.95,	628.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	0.95,	340.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	632.05,	998.05,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	229,	1445.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1031.75,	744.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	927.65,	690.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	909.75,	882.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	927.65,	796.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	960.95,	783.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	960.95,	889.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	928.25,	799.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	933,	392.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	915.1,	585.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	908.95,	1094.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	887.4,	1271.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	887.4,	1199.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	915.1,	1338.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	915.1,	1320.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	909.75,	954.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	933,	498.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	986.95,	791.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	986.95,	773,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1025.6,	855.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	961.55,	892.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1036.1,	948.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1004.05,	1119.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1004.05,	1047.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1031.75,	1186.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1031.75,	1168.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	927.65,	653.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	991.7,	384.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	991.7,	366.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1030.35,	449.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	966.3,	486.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1030.35,	535.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	948.4,	678.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1027.3,	663.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	942.25,	1187.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	920.7,	1364.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	920.7,	1293.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	943.05,	1047.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	966.3,	592.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	966.3,	303.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	976.1,	1267.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	905.3,	232,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	715.6,	89,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	471.2,	138.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	360.35,	107.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	192.75,	185.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	251.45,	177.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	251.45,	159.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	290.1,	241.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	226.05,	96.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	593.85,	89,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	512.45,	-54,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	471.2,	67,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	151,	280.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	776.6,	160.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	854.1,	442.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	797.4,	1402.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	187,	557.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	882.05,	1507.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	617,	1507.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	765.55,	1573.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	433.05,	1454.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	460.75,	1522.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	460.75,	1504,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	466.35,	1548.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	466.35,	1476.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	521.75,	1450.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	324.75,	1614.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	251.45,	1571.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	105.05,	1416.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	90,	351.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	90,	208.85,	1,	0,	0,	1) );		images.push( new ImageData( "rock-3"	,	868.3,	1245.6,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	630.55,	903.2,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	709.35,	1458.3,	1,	0,	0,	1) );		images.push( new ImageData( "rock-4"	,	565.8,	575.4,	1,	0,	0,	1) );		images.push( new ImageData( "chair-1"	,	576.9,	1227.45,	1,	0,	0,	1) );		images.push( new ImageData( "chair-0"	,	503.4,	1383.5,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	832.7,	1120.15,	1,	0,	0,	1) );		images.push( new ImageData( "bush-6"	,	230.15,	911.45,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	842.25,	588.3,	1,	0,	0,	1) );		images.push( new ImageData( "bush-2"	,	907.65,	382.1,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	202.4,	1564.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	410.2,	-4.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	410.2,	67,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	360.35,	132.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	544.9,	132.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	411.55,	179.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	314.75,	9.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	336.8,	26.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	293.35,	89.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	643.55,	138.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	572.8,	159.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	436.75,	916,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	399.75,	971,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	157.15,	833.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	160.75,	1013.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	629,	635.35,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	357.75,	882.65,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	353.75,	968.5,	1,	0,	0,	1) );		images.push( new ImageData( "hole-2"	,	402.6,	1348,	1,	0,	0,	1) );		images.push( new ImageData( "hole-0"	,	608.95,	1179.8,	1,	0,	0,	1) );		images.push( new ImageData( "rock-6-"	,	604.8,	777.9,	1,	0,	0,	1) );		images.push( new ImageData( "rock-3"	,	428.35,	1197.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	804.75,	719.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	810.75,	828,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	841.8,	880.1,	1,	0,	0,	1) );	}}