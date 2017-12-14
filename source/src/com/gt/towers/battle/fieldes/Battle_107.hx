package com.gt.towers.battle.fieldes;class Battle_107 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	540,	1420,	101,	0,	"7,6,4,5",	true,	-1,	1	) );		places.push( new PlaceData( 1,	540,	500,	101,	1,	"9,2,3,8",	true,	-1,	1	) );		places.push( new PlaceData( 2,	840,	500,	1,	-1,	"9,1",	true,	-1,	1	) );		places.push( new PlaceData( 3,	240,	500,	1,	-1,	"1,8",	true,	-1,	1	) );		places.push( new PlaceData( 4,	690,	1200,	1,	-1,	"6,0,8",	true,	-1,	1	) );		places.push( new PlaceData( 5,	390,	1200,	1,	-1,	"0,7,9",	true,	-1,	1	) );		places.push( new PlaceData( 6,	840,	1420,	1,	-1,	"0,4",	true,	-1,	1	) );		places.push( new PlaceData( 7,	240,	1420,	1,	-1,	"0,5",	true,	-1,	1	) );		places.push( new PlaceData( 8,	390,	720,	1,	-1,	"4,3,1",	true,	-1,	1	) );		places.push( new PlaceData( 9,	690,	720,	1,	-1,	"5,2,1",	true,	-1,	1	) );#if flash		// images		images.push( new ImageData( "road-v"	,	349.6,	742.7,	0.852890014648438,	-0.52203369140625,	0.70941162109375,	1.15898132324219,	47.05,	5.7) );		images.push( new ImageData( "road-v"	,	264.55,	1467.65,	0.0009613037109375,	-0.999984741210938,	1.35887145996094,	0.0012969970703125,	47,	5.7) );		images.push( new ImageData( "road-v"	,	285.05,	546.4,	0.0009613037109375,	-0.999984741210938,	1.35887145996094,	0.0012969970703125,	47,	5.7) );		images.push( new ImageData( "road-v"	,	668.35,	705.25,	0.84356689453125,	0.537017822265625,	-0.73797607421875,	1.15924072265625,	49.4,	16.35) );		images.push( new ImageData( "road-h"	,	746.8,	1178.55,	0.366302490234375,	0.621246337890625,	-0.861419677734375,	0.507904052734375,	207.45,	39.5) );		images.push( new ImageData( "road-h"	,	222.95,	467.4,	0.509963989257813,	0.50994873046875,	-0.70709228515625,	0.707107543945313,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	191.3,	1390.2,	0.50994873046875,	-0.509963989257813,	0.707107543945313,	0.70709228515625,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	649.95,	679.05,	0.50994873046875,	-0.509963989257813,	0.707107543945313,	0.70709228515625,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	486.95,	1390.15,	0.50994873046875,	-0.509963989257813,	0.707107543945313,	0.70709228515625,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	338.8,	694.3,	0.50994873046875,	-0.509963989257813,	0.707107543945313,	0.70709228515625,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	528.45,	482.65,	0.509963989257813,	0.50994873046875,	-0.70709228515625,	0.707107543945313,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	380.95,	1178.55,	0.509963989257813,	0.50994873046875,	-0.70709228515625,	0.707107543945313,	207.45,	39.55) );		images.push( new ImageData( "building-plot"	,	431.2,	1363.15,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	427.95,	443.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	729,	1357,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	128.1,	1362.35,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	579,	657,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	279,	657,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	728.9,	436.65,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	125,	433.55,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	279,	1137,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	579,	1137,	1,	0,	0,	1) );		images.push( new ImageData( "hut-0"	,	815.75,	750.15,	1.5,	0,	0,	1.5,	174,	105) );		images.push( new ImageData( "building-plot"	,	494.65,	905.75,	0.491897583007813,	0,	0,	1.0777587890625,	111,	63) );		images.push( new ImageData( "tree-0"	,	634.65,	218.45,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	678.75,	1568.5,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	875.25,	991.4,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	279,	1590.1,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	83.75,	869.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	279,	250.65,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	712,	886.1,	1.29998779296875,	0,	0,	1.29998779296875,	43.55,	64.95) );		images.push( new ImageData( "tree-0"	,	259.4,	904.65,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );#end	}}