package com.gt.towers.battle.fieldes;class Battle_401 extends FieldData{	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")	{		super(index, name, times, introNum, startNum, endNum);		// places		places.push( new PlaceData( 0,	540,	960,	41,	-1,	"1,2,3,7,8,4",	true,	-3	) );		places.push( new PlaceData( 1,	540,	1420,	1,	-1,	"0,7",	true,	-3	) );		places.push( new PlaceData( 2,	540,	500,	1,	-1,	"0,4",	true,	-3	) );		places.push( new PlaceData( 3,	840,	500,	1,	-1,	"0,5",	true,	-3	) );		places.push( new PlaceData( 4,	240,	500,	1,	-1,	"0,2,6",	true,	-3	) );		places.push( new PlaceData( 5,	840,	960,	11,	0,	"3,7",	true,	-3	) );		places.push( new PlaceData( 6,	240,	960,	11,	1,	"4,8",	true,	-3	) );		places.push( new PlaceData( 7,	840,	1420,	1,	-1,	"0,1,5",	true,	-3	) );		places.push( new PlaceData( 8,	240,	1420,	1,	-1,	"0,6",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-h"	,	190.05,	462.9,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	496.35,	1383.2,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	496.35,	520.55,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	491.7,	932.1,	0.86602783203125,	0.499984741210938,	-0.652877807617188,	1.13084411621094,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	759.45,	475.7,	0.86602783203125,	0.499984741210938,	-0.652877807617188,	1.13084411621094,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	229.75,	520.25,	0.866012573242188,	-0.499984741210938,	0.65289306640625,	1.13082885742188,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	516.95,	995.35,	0.866012573242188,	-0.499984741210938,	0.65289306640625,	1.13082885742188,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	496.35,	993.5,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	789.6,	975.9,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	789.6,	522.25,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	194.9,	522.25,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	194.9,	975.95,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	431.2,	1363.15,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	426.15,	878.05,	1,	0,	0,	1.0257568359375,	111,	63) );		images.push( new ImageData( "building-plot"	,	427.95,	443.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	729,	1357,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	128.1,	1362.35,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	731.95,	899.5,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	128.1,	905.65,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	728.9,	436.65,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	125,	433.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	27.95,	1214,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	43,	716.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-1.3,	919.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	64.05,	1518.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	59.7,	1096,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	970.9,	501.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	878.6,	644.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1003.6,	671.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	960,	828.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	563.2,	197.8,	1,	0,	0,	1) );		images.push( new ImageData( "rock-5"	,	909.05,	1286.6,	1,	0,	0,	1) );		images.push( new ImageData( "rock-1"	,	311.1,	828.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	595.55,	1250.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	267.1,	716.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	387.35,	1245,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	680.6,	766.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	85.9,	1702.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	704.55,	1541.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	765.55,	1612.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	765.55,	1717.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	463.35,	1549.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	304.75,	1549.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	394.95,	1612.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	568.75,	1590.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	333.95,	1469.9,	1,	0,	0,	1) );		images.push( new ImageData( "rock-6-"	,	384.4,	92.1,	1.64036560058594,	0,	0,	1.64036560058594,	54.5,	48.5) );		images.push( new ImageData( "rock-5"	,	690.15,	217.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	259.4,	251.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	962.7,	350.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	422.3,	272.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	120.75,	272.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	962.7,	1227.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	987.65,	940.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	960,	1396.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	516.95,	1714.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	907.7,	174.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	809,	252.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	176.95,	1602.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	648.15,	324.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	851,	1523,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	318.6,	1674.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	778.4,	105.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	950.9,	1070.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	43,	580.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	19.1,	350.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	11.75,	807.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	81.05,	160.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-1.3,	1623.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	228.6,	105.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	3,	1357,	1,	0,	0,	1) );#end	}}