package com.gt.towers.battle.fieldes;class Battle_305 extends FieldData{	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")	{		super(index, name, times, introNum, startNum, endNum);		// places		places.push( new PlaceData( 0,	340,	1210,	31,	-1,	"1,2,5",	true,	-3	) );		places.push( new PlaceData( 1,	740,	1395,	1,	-1,	"0,2,6",	true,	-3	) );		places.push( new PlaceData( 2,	340,	1520,	11,	0,	"0,1",	true,	-3	) );		places.push( new PlaceData( 3,	340,	525,	1,	-1,	"5,4,7",	true,	-3	) );		places.push( new PlaceData( 4,	740,	710,	31,	-1,	"3,7",	true,	-3	) );		places.push( new PlaceData( 5,	340,	835,	31,	-1,	"0,3,6",	true,	-3	) );		places.push( new PlaceData( 6,	740,	1085,	31,	-1,	"1,5",	true,	-3	) );		places.push( new PlaceData( 7,	740,	400,	11,	1,	"3,4",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-v"	,	354.8,	550.3,	0.500015258789063,	-0.865997314453125,	0.865997314453125,	0.500015258789063) );		images.push( new ImageData( "road-v"	,	294.35,	831.3,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	687.5,	685.95,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	352.55,	895.65,	0.5,	-0.866012573242188,	0.866012573242188,	0.5) );		images.push( new ImageData( "hole-2"	,	450.35,	275.45,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );		images.push( new ImageData( "road-v"	,	701.7,	340.2,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	713.05,	336.8,	0.370773315429688,	0.9287109375,	-0.9287109375,	0.370773315429688) );		images.push( new ImageData( "road-v"	,	366.15,	1241.25,	0.500015258789063,	-0.865997314453125,	0.865997314453125,	0.500015258789063) );		images.push( new ImageData( "road-v"	,	734.6,	1327.15,	0.370773315429688,	0.9287109375,	-0.9287109375,	0.370773315429688) );		images.push( new ImageData( "road-v"	,	687.5,	1004.5,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	300.9,	479.25,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	294.35,	1133.7,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	229,	1133.85,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	229,	774.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	229,	450.35,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	643.75,	336.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	629,	1307.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	188.4,	1247.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	159.7,	650.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	58.7,	892.5,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	632.05,	998.05,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	229,	1445.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	42,	1147.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	64.05,	743.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	933,	392.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	103,	1021.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	905.3,	232,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	290.1,	241.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	151,	280.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	187,	557.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	882.05,	1507.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	617,	1507.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	765.55,	1573.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	433.05,	1454.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	18.6,	1488.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	245.8,	1690.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	48.15,	1630.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	469.35,	1634.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	617,	1600.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	324.75,	1614.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	251.45,	1571.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	90,	208.85,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	709.35,	1458.3,	1,	0,	0,	1) );		images.push( new ImageData( "chair-1"	,	576.9,	1227.45,	1,	0,	0,	1) );		images.push( new ImageData( "chair-0"	,	503.4,	1383.5,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	832.7,	1120.15,	1,	0,	0,	1) );		images.push( new ImageData( "bush-6"	,	230.15,	911.45,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	842.25,	588.3,	1,	0,	0,	1) );		images.push( new ImageData( "bush-2"	,	907.65,	382.1,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	202.4,	1564.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	543.4,	770.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	456.8,	1088.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	157.15,	833.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	202.4,	962.05,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	629,	635.35,	1,	0,	0,	1) );		images.push( new ImageData( "hole-2"	,	402.6,	1348,	1,	0,	0,	1) );#end	}}