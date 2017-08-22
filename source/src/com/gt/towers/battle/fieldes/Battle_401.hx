package com.gt.towers.battle.fieldes;class Battle_401 extends FieldData{	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasStart, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	540,	960,	41,	-1,	"1,2,3,7,8,4",	true,	-3	) );		places.push( new PlaceData( 1,	540,	1420,	1,	-1,	"0,7",	true,	-3	) );		places.push( new PlaceData( 2,	540,	500,	1,	-1,	"0,4",	true,	-3	) );		places.push( new PlaceData( 3,	840,	500,	1,	-1,	"0,5",	true,	-3	) );		places.push( new PlaceData( 4,	240,	500,	1,	-1,	"0,6,2",	true,	-3	) );		places.push( new PlaceData( 5,	840,	960,	11,	0,	"3,7",	true,	-3	) );		places.push( new PlaceData( 6,	240,	960,	11,	1,	"4,8",	true,	-3	) );		places.push( new PlaceData( 7,	840,	1420,	1,	-1,	"0,5,1",	true,	-3	) );		places.push( new PlaceData( 8,	240,	1420,	1,	-1,	"0,6",	true,	-3	) );		// create images		images.push( new ImageData( "road-h"	,	190.05,	462.9,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	496.35,	1383.2,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	496.35,	520.55,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	491.7,	932.1,	0.86602783203125,	0.499984741210938,	-0.652877807617188,	1.13084411621094,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	759.45,	475.7,	0.86602783203125,	0.499984741210938,	-0.652877807617188,	1.13084411621094,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	229.75,	520.25,	0.866012573242188,	-0.499984741210938,	0.65289306640625,	1.13082885742188,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	516.95,	995.35,	0.866012573242188,	-0.499984741210938,	0.65289306640625,	1.13082885742188,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	496.35,	993.5,	1,	0,	0,	1) );		images.push( new ImageData( "background-0-l"	,	0,	3.1,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "road-v"	,	789.6,	975.9,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	789.6,	522.25,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	194.9,	522.25,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	194.9,	975.95,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	431.2,	1363.15,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	426.15,	781.5,	1,	0,	0,	2.5582275390625,	111,	63) );		images.push( new ImageData( "building-plot"	,	427.95,	443.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	729,	1357,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	128.1,	1362.35,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	731.95,	899.5,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	128.1,	905.65,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	728.9,	436.65,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	125,	433.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	27.95,	1214,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	51.6,	784.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-1.3,	919.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	59.7,	991.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	59.7,	1096,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	970.9,	501.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	918,	636.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	979,	708.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	979,	812.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	563.2,	197.8,	1,	0,	0,	1) );		images.push( new ImageData( "rock-5"	,	909.05,	1286.6,	1,	0,	0,	1) );		images.push( new ImageData( "rock-3"	,	962.7,	1165,	1,	0,	0,	1) );		images.push( new ImageData( "rock-1"	,	311.1,	828.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	606.9,	1177.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	304.75,	715.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	394.95,	1143.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	543.75,	638.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	757.45,	1406.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	704.55,	1541.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	765.55,	1612.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	765.55,	1717.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	463.35,	1549.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	304.75,	1549.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	394.95,	1612.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	568.75,	1590.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	333.95,	1469.9,	1,	0,	0,	1) );		images.push( new ImageData( "rock-6-"	,	384.4,	92.1,	1.64036560058594,	0,	0,	1.64036560058594,	54.5,	48.5) );		images.push( new ImageData( "rock-5"	,	690.15,	217.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	259.4,	251.2,	1,	0,	0,	1) );	}}