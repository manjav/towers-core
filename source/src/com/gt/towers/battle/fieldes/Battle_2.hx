package com.gt.towers.battle.fieldes;class Battle_2 extends FieldData{	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")	{		super(index, name, times, introNum, startNum, endNum);		// places		places.push( new PlaceData( 0,	850,	1500,	11,	0,	"3",	true,	-3	) );		places.push( new PlaceData( 1,	230,	420,	11,	1,	"2",	true,	-3	) );		places.push( new PlaceData( 2,	705,	650,	1,	-1,	"1,4",	true,	-3	) );		places.push( new PlaceData( 3,	375,	1270,	1,	-1,	"0,4",	true,	-3	) );		places.push( new PlaceData( 4,	538.8,	957.05,	1,	-1,	"2,3",	true,	-3	) );#if flash		// images		images.push( new ImageData( "tree-0"	,	863.55,	668.05,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	642,	669.7,	0.8829345703125,	0.469451904296875,	-0.697708129882813,	1.31224060058594,	44.65,	201.45) );		images.push( new ImageData( "road-v"	,	247.4,	474,	0.4539794921875,	-0.890960693359375,	0.993560791015625,	0.506240844726563,	44.55,	201.55) );		images.push( new ImageData( "road-v"	,	387.45,	1320.3,	0.4539794921875,	-0.890960693359375,	0.993560791015625,	0.506240844726563,	44.55,	201.45) );		images.push( new ImageData( "rock-0"	,	292.95,	903.5,	0.331222534179688,	0.797470092773438,	-1.08367919921875,	0.450103759765625,	42.6,	32.95) );		images.push( new ImageData( "bush-7"	,	360.45,	789.65,	2.25,	0,	0,	2.25) );		images.push( new ImageData( "tree-0"	,	528.75,	1089.35,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "bush-7"	,	769.15,	826.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	500.75,	337.35,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "building-plot"	,	734.5,	1416.45,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	264,	1187.6,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	877,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	594,	569.15,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	117.45,	337.65,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	500.4,	209.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	113.85,	724.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	911.75,	1052.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	341.9,	1580.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	911.75,	1148.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	282,	1492.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	138.15,	1548.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	150.4,	1400.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	80.3,	801.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	946.05,	584.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	933.7,	720.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	887.4,	482.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	64.05,	1454.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	911.75,	801.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	341.9,	1409.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	851,	166.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	960,	142.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	192.55,	100.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	17.15,	1548.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	93.55,	66.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	80.3,	1630.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	225.95,	1623.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	232.9,	212.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	960,	254.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	946.05,	382.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	960,	1353.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	17.15,	1714.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	17.15,	659.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	185.35,	1700.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	919.75,	54.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	851,	-11.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	960,	-45.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	721,	11.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-1.3,	-32.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	810.75,	79.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	778.4,	254.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	701.75,	100.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	612,	54.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-15.45,	771.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	76.35,	468.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	4.85,	906.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-28.7,	494.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	17.15,	1014.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	497.75,	-45.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	606.75,	-45.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	470.45,	66.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	294.35,	30.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-15.45,	234.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	374.9,	-25.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	138.15,	1013.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	215.75,	-25.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	113.85,	-25.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-15.45,	66.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	303,	1700.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-44.95,	1436.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	4.85,	1342.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	0,	1118.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	126.15,	1128.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-1.3,	1237.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	106.75,	1241.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	782.5,	1024.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	802.75,	1118.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	887.4,	1278.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	891.5,	928.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	123.9,	606.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	673.5,	203.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	587.15,	150,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	584.1,	254.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	334.95,	123.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	215.75,	585.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	47.6,	150,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	138.15,	166.05,	1,	0,	0,	1) );#end	}}