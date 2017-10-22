package com.gt.towers.battle.fieldes;class Battle_601 extends FieldData{	public function new(index:Int, name:String, introNum:Int=0, startNum:Int=0, endNum:Int=0, times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// create places		places.push( new PlaceData( 0,	540,	1420,	11,	0,	"4,5",	true,	-3	) );		places.push( new PlaceData( 1,	540,	500,	11,	1,	"9,8",	true,	-3	) );		places.push( new PlaceData( 2,	840,	500,	1,	-1,	"9,6",	true,	-3	) );		places.push( new PlaceData( 3,	240,	500,	1,	-1,	"8,7",	true,	-3	) );		places.push( new PlaceData( 4,	690,	1200,	1,	-1,	"0,6,9",	true,	-3	) );		places.push( new PlaceData( 5,	390,	1200,	1,	-1,	"0,7,8",	true,	-3	) );		places.push( new PlaceData( 6,	840,	1420,	1,	-1,	"2,4",	true,	-3	) );		places.push( new PlaceData( 7,	240,	1420,	1,	-1,	"3,5",	true,	-3	) );		places.push( new PlaceData( 8,	390,	720,	1,	-1,	"1,3,5",	true,	-3	) );		places.push( new PlaceData( 9,	690,	720,	1,	-1,	"1,2,4",	true,	-3	) );		places.push( new PlaceData( 10,	540,	960,	43,	-1,	"",	true,	-3	) );		// create images		images.push( new ImageData( "road-v"	,	814.2,	499.95,	1,	0,	0,	2.31231689453125,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	179.65,	499.95,	1,	0,	0,	2.31231689453125,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	648.6,	731.8,	1,	0,	0,	1.16178894042969,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	348.2,	731.8,	1,	0,	0,	1.16178894042969,	44.5,	201.5) );		images.push( new ImageData( "road-h"	,	676.55,	1178.55,	0.509963989257813,	0.50994873046875,	-0.70709228515625,	0.707107543945313,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	222.95,	467.4,	0.509963989257813,	0.50994873046875,	-0.70709228515625,	0.707107543945313,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	191.3,	1390.2,	0.50994873046875,	-0.509963989257813,	0.707107543945313,	0.70709228515625,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	649.95,	679.05,	0.50994873046875,	-0.509963989257813,	0.707107543945313,	0.70709228515625,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	486.95,	1390.15,	0.50994873046875,	-0.509963989257813,	0.707107543945313,	0.70709228515625,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	338.8,	694.3,	0.50994873046875,	-0.509963989257813,	0.707107543945313,	0.70709228515625,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	528.45,	482.65,	0.509963989257813,	0.50994873046875,	-0.70709228515625,	0.707107543945313,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	380.95,	1178.55,	0.509963989257813,	0.50994873046875,	-0.70709228515625,	0.707107543945313,	207.45,	39.55) );		images.push( new ImageData( "background-0-l"	,	0,	3.1,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "building-plot"	,	431.2,	1363.15,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	427.95,	443.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	729,	1357,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	128.1,	1362.35,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	579,	657,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	279,	657,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	728.9,	436.65,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	125,	433.55,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	279,	1137,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	579,	1137,	1,	0,	0,	1) );		images.push( new ImageData( "hut-0"	,	-314.35,	621.6,	1.5,	0,	0,	1.5,	174,	105) );		images.push( new ImageData( "hut-0"	,	1396.8,	821.3,	-1.5,	0,	0,	1.5,	174.05,	104.95) );		images.push( new ImageData( "building-plot"	,	182.35,	516.05,	0.483383178710938,	0,	0,	0.690093994140625,	111,	63.05) );		images.push( new ImageData( "building-plot"	,	475.3,	516.05,	0.483383178710938,	0,	0,	0.690093994140625,	111,	63.05) );		images.push( new ImageData( "building-plot"	,	786.25,	519.15,	0.483383178710938,	0,	0,	0.690093994140625,	111,	63.05) );		images.push( new ImageData( "building-plot"	,	191.3,	1425.35,	0.483383178710938,	0,	0,	-0.7645263671875,	111,	63.05) );		images.push( new ImageData( "building-plot"	,	632.8,	1205.4,	0.483383178710938,	0,	0,	0.690093994140625,	111,	63.05) );		images.push( new ImageData( "building-plot"	,	327.25,	1205.4,	0.483383178710938,	0,	0,	0.690093994140625,	111,	63.05) );		images.push( new ImageData( "building-plot"	,	783.35,	1409.1,	0.483383178710938,	0,	0,	-0.646316528320313,	111,	63.05) );		images.push( new ImageData( "hole-2"	,	38.3,	984.1,	1.5,	0,	0,	1.5,	51,	34) );		images.push( new ImageData( "hole-2"	,	927.1,	684.85,	1.5,	0,	0,	1.5,	51,	34) );		images.push( new ImageData( "hole-0"	,	394.85,	220.55,	1.5,	0,	0,	1.5,	38,	21.5) );		images.push( new ImageData( "tree-0"	,	711.25,	1552.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	604.75,	255.35,	1,	0,	0,	1) );	}}