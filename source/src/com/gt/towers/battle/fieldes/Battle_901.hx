package com.gt.towers.battle.fieldes;class Battle_901 extends FieldData{	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")	{		super(index, name, times, introNum, startNum, endNum);		// places		places.push( new PlaceData( 0,	540,	1420,	11,	0,	"5,4,6,7",	true,	-3	) );		places.push( new PlaceData( 1,	540,	500,	11,	1,	"8,2,9,3",	true,	-3	) );		places.push( new PlaceData( 2,	860,	500,	1,	-1,	"1,10,9",	true,	-3	) );		places.push( new PlaceData( 3,	220,	500,	1,	-1,	"1,8,11",	true,	-3	) );		places.push( new PlaceData( 4,	700,	1190,	1,	-1,	"0,6,10",	true,	-3	) );		places.push( new PlaceData( 5,	380,	1190,	1,	-1,	"0,11,7",	true,	-3	) );		places.push( new PlaceData( 6,	860,	1420,	1,	-1,	"0,4,10",	true,	-3	) );		places.push( new PlaceData( 7,	220,	1420,	1,	-1,	"0,5,11",	true,	-3	) );		places.push( new PlaceData( 8,	380,	730,	1,	-1,	"1,3,11",	true,	-3	) );		places.push( new PlaceData( 9,	700,	730,	1,	-1,	"1,2,10",	true,	-3	) );		places.push( new PlaceData( 10,	860,	960,	42,	-1,	"2,4,6,9",	true,	-3	) );		places.push( new PlaceData( 11,	220,	960,	42,	-1,	"3,5,7,8",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-v"	,	172.85,	499.95,	1,	0,	0,	2.31231689453125,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	813.35,	499.95,	1,	0,	0,	2.31231689453125,	44.5,	201.5) );		images.push( new ImageData( "tree-1"	,	464.2,	836.2,	0.807388305664063,	0,	0,	0.807388305664063,	44.4,	45.4) );		images.push( new ImageData( "tree-1"	,	537.65,	836.2,	0.807388305664063,	0,	0,	0.807388305664063,	44.55,	45.4) );		images.push( new ImageData( "road-v"	,	729.3,	1152.95,	-0.819290161132813,	0.573394775390625,	0.415267944335938,	0.593338012695313,	44.3,	201.4) );		images.push( new ImageData( "road-v"	,	353.6,	1148.75,	0.819290161132813,	0.573394775390625,	-0.422561645507813,	0.603759765625,	44.3,	201.5) );		images.push( new ImageData( "road-v"	,	823.65,	477.1,	0.819290161132813,	0.573394775390625,	-0.406997680664063,	0.581512451171875,	44.3,	201.45) );		images.push( new ImageData( "road-v"	,	256.35,	477.1,	-0.819290161132813,	0.573394775390625,	0.418212890625,	0.597564697265625,	44.3,	201.4) );		images.push( new ImageData( "road-v"	,	561.95,	457.6,	-0.819290161132813,	0.573394775390625,	0.758941650390625,	1.08439636230469,	44.3,	201.45) );		images.push( new ImageData( "road-v"	,	272.05,	967.05,	-0.819290161132813,	-0.573394775390625,	0.795989990234375,	-1.13731384277344,	44.35,	201.45) );		images.push( new ImageData( "road-v"	,	561.95,	1471,	-0.819290161132813,	-0.573394775390625,	0.802169799804688,	-1.14616394042969,	44.3,	201.4) );		images.push( new ImageData( "road-v"	,	263.05,	948.65,	-0.819290161132813,	0.573394775390625,	0.818572998046875,	1.16961669921875,	44.4,	201.4) );		images.push( new ImageData( "road-h"	,	292.65,	460.4,	1.18890380859375,	0,	0,	1,	207.5,	39.5) );		images.push( new ImageData( "road-h"	,	292.65,	1378.15,	1.18890380859375,	0,	0,	1,	207.5,	39.5) );		images.push( new ImageData( "building-plot"	,	429,	1337.25,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	427,	417.85,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	746.85,	1337.25,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	106.35,	1337.25,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	584.1,	642.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	265.4,	642.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	746.85,	417.85,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	106.35,	417.85,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	265.4,	1113,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	584.1,	1113,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	746.85,	877,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	106.35,	877,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	637,	324.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	303,	324.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	649.95,	1462.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	318.95,	1462.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	478.05,	894.9,	1,	0,	0,	1,	59.95,	50.45) );		images.push( new ImageData( "tree-2"	,	627.6,	832,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	503.3,	786,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	381.45,	832,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	342.65,	936.25,	1,	0,	0,	1,	39.25,	33.95) );		images.push( new ImageData( "tree-2"	,	627.6,	1030.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	503.3,	1070.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	381.45,	1030.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	664.65,	936.4,	1,	0,	0,	1,	39.3,	34.1) );		images.push( new ImageData( "tree-1"	,	594.7,	881.9,	0.807388305664063,	0,	0,	0.807388305664063,	44.45,	45.35) );		images.push( new ImageData( "tree-1"	,	407.1,	881.9,	0.807388305664063,	0,	0,	0.807388305664063,	44.45,	45.35) );		images.push( new ImageData( "tree-1"	,	593.05,	952.6,	0.807388305664063,	0,	0,	0.807388305664063,	44.45,	45.35) );		images.push( new ImageData( "tree-1"	,	405.7,	952.6,	0.807388305664063,	0,	0,	0.807388305664063,	44.55,	45.35) );		images.push( new ImageData( "tree-1"	,	464.95,	996.25,	0.807388305664063,	0,	0,	0.807388305664063,	44.4,	45.4) );		images.push( new ImageData( "tree-1"	,	538.5,	996.25,	0.807388305664063,	0,	0,	0.807388305664063,	44.4,	45.4) );		images.push( new ImageData( "tree-2"	,	503.3,	1222,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	503.3,	635,	1,	0,	0,	1) );#end	}}