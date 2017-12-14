package com.gt.towers.battle.fieldes;class Battle_102 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	540,	1420,	1,	0,	"4,5",	true,	-3,	1	) );		places.push( new PlaceData( 1,	540,	518,	1,	1,	"8,9",	true,	-3,	1	) );		places.push( new PlaceData( 2,	840,	515,	1,	1,	"9",	true,	-3,	1	) );		places.push( new PlaceData( 3,	240,	518,	1,	1,	"8",	true,	-3,	1	) );		places.push( new PlaceData( 4,	690,	1236.6,	1,	-1,	"0,6,9",	true,	-3,	1	) );		places.push( new PlaceData( 5,	390,	1236.6,	1,	-1,	"0,7,8",	true,	-3,	1	) );		places.push( new PlaceData( 6,	840,	1420,	1,	0,	"4",	true,	-3,	1	) );		places.push( new PlaceData( 7,	240,	1420,	1,	0,	"5",	true,	-3,	1	) );		places.push( new PlaceData( 8,	390,	720,	1,	-1,	"1,3,5",	true,	-3,	1	) );		places.push( new PlaceData( 9,	690,	720,	1,	-1,	"1,2,4",	true,	-3,	1	) );#if flash		// images		images.push( new ImageData( "road-h"	,	686.6,	1173.15,	0.471023559570313,	0.546112060546875,	-0.757247924804688,	0.653121948242188,	207.5,	39.55) );		images.push( new ImageData( "road-h"	,	205.05,	1410.05,	0.424392700195313,	-0.583084106445313,	0.808517456054688,	0.588470458984375,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	500.3,	1409.5,	0.426712036132813,	-0.581390380859375,	0.80615234375,	0.591690063476563,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	398.35,	1169.85,	0.44195556640625,	0.569900512695313,	-0.790237426757813,	0.612808227539063,	207.45,	39.55) );		images.push( new ImageData( "road-v"	,	648.6,	731.8,	1,	0,	0,	1.16178894042969,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	348.2,	731.8,	1,	0,	0,	1.16178894042969,	44.5,	201.5) );		images.push( new ImageData( "road-h"	,	249.15,	455.3,	0.406509399414063,	0.595718383789063,	-0.826004028320313,	0.563629150390625,	207.4,	39.55) );		images.push( new ImageData( "road-h"	,	668.65,	704.75,	0.394989013671875,	-0.603408813476563,	0.836669921875,	0.547683715820313,	207.5,	39.55) );		images.push( new ImageData( "road-h"	,	351.7,	713.1,	0.42938232421875,	-0.579421997070313,	0.803421020507813,	0.595382690429688,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	551.5,	471.7,	0.419235229492188,	0.586822509765625,	-0.813674926757813,	0.581298828125,	207.5,	39.55) );		images.push( new ImageData( "building-plot"	,	427.95,	1342.3,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	427.95,	443.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	725.5,	1342.3,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	129.5,	1342.3,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	579,	635.05,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	279,	635.05,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	728.9,	436.65,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	125,	433.55,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	279,	1137,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	579,	1137,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	129.5,	869.3,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	335.9,	1284.05,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	115.9,	1026.85,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	150.4,	731.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	80.3,	801.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	84.5,	1465.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	812.65,	856.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	875.8,	938.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	812.65,	1022.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	17.15,	659.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	980.85,	1008.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-15.45,	771.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	4.85,	906.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-28.7,	494.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	17.15,	1014.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	4.85,	1342.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	0,	1118.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-1.3,	1237.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	120.9,	1166.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	123.9,	606.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	93.25,	44.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	156.4,	126.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	93.25,	210.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	261.45,	196.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	341.9,	40.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	405.05,	123,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	392,	238.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	510.1,	192.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	703.65,	30.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	766.8,	113,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	703.65,	196.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	871.85,	182.95,	1,	0,	0,	1) );#end	}}