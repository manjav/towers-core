package com.gt.towers.battle.fieldes;class Battle_105 extends FieldData{	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")	{		super(index, name, times, introNum, startNum, endNum);		// places		places.push( new PlaceData( 0,	780,	500,	1,	-1,	"5,3,6",	true,	-3	) );		places.push( new PlaceData( 1,	300,	1420,	1,	-1,	"4,6",	true,	-3	) );		places.push( new PlaceData( 2,	780,	1420,	1,	-1,	"5",	true,	-3	) );		places.push( new PlaceData( 3,	300,	500,	1,	-1,	"0,4",	true,	-3	) );		places.push( new PlaceData( 4,	300,	770,	12,	1,	"3,1",	true,	-3	) );		places.push( new PlaceData( 5,	780,	1150,	12,	0,	"2,0",	true,	-3	) );		places.push( new PlaceData( 6,	540,	960,	1,	-1,	"1,0",	true,	-3	) );#if flash		// images		images.push( new ImageData( "tree-2"	,	502.35,	1206.6,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	298.2,	1379.85,	1,	0,	0,	1) );		images.push( new ImageData( "hole-1"	,	945.4,	1217.7,	1.54287719726563,	0,	0,	1.54287719726563,	48.5,	17.5) );		images.push( new ImageData( "hole-2"	,	440.9,	690.7,	1,	0,	0,	1,	51,	34) );		images.push( new ImageData( "bush-0"	,	409.2,	308.55,	1,	0,	0,	1,	30,	18) );		images.push( new ImageData( "tree-0"	,	623.6,	1662.5,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "building-plot"	,	666.1,	1337.35,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	592.4,	1647.85,	1,	0,	0,	1,	41.5,	18.95) );		images.push( new ImageData( "road-v"	,	253.7,	538.45,	1,	0,	0,	2.08518981933594,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	732.6,	535,	1,	0,	0,	2.04690551757813,	44.5,	201.55) );		images.push( new ImageData( "building-plot"	,	187.2,	689.45,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	668.2,	1067.75,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	718.3,	516.25,	0.886520385742188,	0.462677001953125,	-1.08554077148438,	2.080078125,	44.55,	201.45) );		images.push( new ImageData( "road-h"	,	353.3,	465.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	877,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	666.1,	419.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	960,	913.05,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	568.1,	1472.95,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "building-plot"	,	187.2,	1337.35,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	187.2,	419.15,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	523.9,	212.25,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "tree-0"	,	933.7,	1055,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	259.4,	1511.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	80.3,	1428.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	80.3,	801.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	960,	554.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	946.05,	724.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	913.35,	1614.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	960,	142.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	223.95,	24.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	232.9,	212.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	851,	249.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	946.05,	382.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	933.7,	1391.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-28.7,	1550.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	821.6,	24.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	495.2,	15.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	14.9,	394.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	4.85,	906.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-15.45,	666.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	4.85,	171.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	109,	1571.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	429,	1630.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	0,	1118.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-15.45,	1325,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	673.5,	203.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	557.1,	342,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	673.5,	70.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	882.4,	1256.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	503.25,	556.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	123.9,	291.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	76.35,	999.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	91,	1234,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	202.65,	1683.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	762,	1584.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	515.2,	1222.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	768.3,	1650.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	305.4,	1630.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	124.2,	108.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	366,	171.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	837,	171.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	882.4,	1540.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	856.4,	689.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	851,	836.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	86.75,	605.75,	1,	0,	0,	1) );#end	}}