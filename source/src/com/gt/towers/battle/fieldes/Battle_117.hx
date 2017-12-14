package com.gt.towers.battle.fieldes;class Battle_117 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	850,	1500,	101,	0,	"5,3",	true,	-1,	1	) );		places.push( new PlaceData( 1,	230,	420,	101,	1,	"2,6",	true,	-1,	1	) );		places.push( new PlaceData( 2,	705,	650,	1,	-1,	"4,5,1",	true,	-1,	1	) );		places.push( new PlaceData( 3,	375,	1270,	1,	-1,	"0,4,6",	true,	-1,	1	) );		places.push( new PlaceData( 4,	540,	960,	101,	-1,	"3,2",	true,	-1,	1	) );		places.push( new PlaceData( 5,	850,	1270,	1,	-1,	"0,2",	true,	-1,	1	) );		places.push( new PlaceData( 6,	230,	650,	1,	-1,	"1,3",	true,	-1,	1	) );#if flash		// images		images.push( new ImageData( "road-v"	,	251,	465.75,	0.500015258789063,	-0.865997314453125,	0.965713500976563,	0.557586669921875,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	804.35,	1269.95,	1,	0,	0,	0.53424072265625,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	206.5,	431.9,	1,	0,	0,	0.53424072265625,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	676.25,	620.25,	0.86602783203125,	0.499984741210938,	-0.499984741210938,	0.86602783203125) );		images.push( new ImageData( "road-v"	,	510.1,	903.1,	0.86602783203125,	0.499984741210938,	-0.499984741210938,	0.86602783203125) );		images.push( new ImageData( "road-v"	,	391,	1312,	0.500015258789063,	-0.865997314453125,	0.965713500976563,	0.557586669921875,	44.5,	201.5) );		images.push( new ImageData( "tree-0"	,	500.75,	337.35,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "building-plot"	,	731.4,	1438.95,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	264,	1207,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	427.85,	903.1,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	594,	587,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	119,	349.3,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	739,	1207,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	119,	587,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	481.05,	191.95,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "tree-0"	,	212,	1465.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	274.35,	1521.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	138.15,	1548.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	150.4,	1400.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	946.05,	584.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	933.7,	724.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	887.4,	482.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	505.45,	1511.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	851,	166.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	960,	142.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	192.55,	100.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	17.15,	1548.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	93.55,	66.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	80.3,	1630.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	225.95,	1623.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	232.9,	212.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	960,	254.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	946.05,	382.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	960,	1353.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	17.15,	1714.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	17.15,	659.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	185.35,	1700.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	919.75,	54.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	851,	-11.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	960,	-45.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	721,	11.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-1.3,	-32.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	810.75,	79.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	780.95,	189.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	701.75,	100.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	612,	54.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-15.45,	771.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	4.85,	906.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-28.7,	494.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	17.15,	1014.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	497.75,	-45.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	606.75,	-45.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	470.45,	66.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	294.35,	30.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-15.45,	234.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	374.9,	-25.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	138.15,	166.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	215.75,	-25.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	113.85,	-25.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-15.45,	66.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	41.4,	150,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	303,	1700.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-44.95,	1436.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	4.85,	1342.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	0,	1118.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	126.15,	1128.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-1.3,	1237.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	106.75,	1241.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	673.5,	203.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	587.15,	150,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	584.1,	254.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	334.95,	123.75,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	679.8,	677.9,	0.980972290039063,	-0.194091796875,	0.290985107421875,	1.470703125,	46.9,	2.9) );		images.push( new ImageData( "road-v"	,	198.8,	690.7,	0.980972290039063,	-0.194091796875,	0.290985107421875,	1.470703125,	46.9,	2.9) );#end	}}