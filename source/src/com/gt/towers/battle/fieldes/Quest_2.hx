package com.gt.towers.battle.fieldes;class Quest_2 extends FieldData{	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasStart, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	576.45,	1060.95,	1,	-1,	"1,2,3",	true,	-3	) );		places.push( new PlaceData( 1,	340.95,	1599.6,	11,	0,	"0",	true,	-3	) );		places.push( new PlaceData( 2,	860.75,	1441.55,	1,	0,	"0",	true,	-11	) );		places.push( new PlaceData( 3,	571.95,	456.05,	1,	1,	"0",	true,	-3	) );		// create images		images.push( new ImageData( "tree-0"	,	-33.9,	712.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-51.8,	905,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-33.9,	818.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-0.6,	806.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-0.6,	912.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-33.3,	821.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-28.55,	414.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-46.45,	607.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-52.6,	1116.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-74.15,	1293.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-74.15,	1221.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-46.45,	1361.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-46.45,	1342.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-51.8,	976.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-28.55,	520.9,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	563.35,	979.35,	0.913772583007813,	0.403274536132813,	-0.403289794921875,	0.913742065429688,	44.45,	201.5) );		images.push( new ImageData( "road-v"	,	560.85,	1108.05,	0.827590942382813,	-0.561355590820313,	0.561355590820313,	0.827590942382813) );		images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	704,	6,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-0"	,	713.15,	1597.75,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "bush-7"	,	709.3,	391.4,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	933.7,	718.05,	2.25,	0,	0,	2.25,	35.55,	28) );		images.push( new ImageData( "rock-0"	,	732.75,	734.9,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "rock-3"	,	481.1,	1546.4,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "hole-1"	,	826.75,	979.35,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28.5) );		images.push( new ImageData( "building-plot"	,	734.5,	1382.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	627.55,	1220.7,	1,	0,	0,	1) );		images.push( new ImageData( "chair-1"	,	338.8,	557.5,	2.24998474121094,	0,	0,	2.24998474121094,	45,	25) );		images.push( new ImageData( "road-v"	,	454.4,	1220.7,	0.913772583007813,	0.403274536132813,	-0.403289794921875,	0.913742065429688,	44.45,	201.5) );		images.push( new ImageData( "road-v"	,	527.45,	618.05,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	527.45,	456.05,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	460.95,	393.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	25.4,	813.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	25.4,	795.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	64.05,	878.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	0,	915.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	64.05,	964.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	122,	1021.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	122,	949.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	125.05,	806.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	42.5,	1141.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	42.5,	1070.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	190.8,	724.5,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	715.6,	867.5,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "bush-0"	,	919,	1067.1,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "tree-0"	,	70.2,	1209.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	70.2,	1191,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	108.85,	1273.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	44.8,	1310.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	108.85,	1360.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	166.8,	1416.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	166.8,	1345.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	216.8,	1202.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	87.3,	1537.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	87.3,	1465.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	30.15,	407.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	30.15,	388.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	68.8,	471.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	4.75,	508.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	68.8,	558.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	126.75,	614.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	126.75,	543,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-13.15,	701.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	65.75,	686,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	91.15,	245.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-28.55,	232.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	91.15,	227.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	91.15,	317.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	129.8,	400,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	239.95,	238.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	202.75,	333.9,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	786.3,	560,	2.25,	0,	0,	2.25,	35.55,	28) );		images.push( new ImageData( "bush-0"	,	910.5,	370.5,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "tree-0"	,	-19.3,	1210.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-40.85,	1387.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-40.85,	1315.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-13.15,	1454.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-13.15,	1436.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-18.5,	1070.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	4.75,	614.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	4.75,	325.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	209.3,	964.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	190.8,	471.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	413.35,	724.5,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	527.45,	119.8,	2.25,	0,	0,	2.25,	35.55,	28) );		images.push( new ImageData( "building-plot"	,	223.9,	1528.25,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	467.15,	985.95,	1,	0,	0,	1) );	}}