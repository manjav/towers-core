package com.gt.towers.battle.fieldes;class Battle_902 extends FieldData{	public function new(index:Int, name:String, introNum:Int=0, startNum:Int=0, endNum:Int=0, times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// create places		places.push( new PlaceData( 0,	825,	620,	1,	-1,	"7,2,9",	true,	-3	) );		places.push( new PlaceData( 1,	540,	1200,	1,	-1,	"4,5,10,8,9",	true,	-3	) );		places.push( new PlaceData( 2,	540,	720,	1,	-1,	"9,8,10,3,0",	true,	-3	) );		places.push( new PlaceData( 3,	255,	620,	1,	-1,	"2,10,7",	true,	-3	) );		places.push( new PlaceData( 4,	825,	1300,	1,	-1,	"6,1,9",	true,	-3	) );		places.push( new PlaceData( 5,	255,	1300,	1,	-1,	"1,6,10",	true,	-3	) );		places.push( new PlaceData( 6,	540,	1500,	11,	0,	"4,5",	true,	-3	) );		places.push( new PlaceData( 7,	540,	420,	11,	1,	"3,0",	true,	-3	) );		places.push( new PlaceData( 8,	540,	960,	32,	-1,	"10,1,9,2",	true,	-3	) );		places.push( new PlaceData( 9,	825,	960,	32,	-1,	"1,8,4,2,0",	true,	-3	) );		places.push( new PlaceData( 10,	255,	960,	32,	-1,	"1,5,8,2,3",	true,	-3	) );		// create images		images.push( new ImageData( "road-h"	,	337.65,	924.15,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	463,	721.3,	0.707138061523438,	0.70703125,	-0.473617553710938,	0.473724365234375,	44.45,	201.55) );		images.push( new ImageData( "road-v"	,	560.65,	783.8,	0.707046508789063,	-0.707138061523438,	0.473709106445313,	0.4736328125,	44.45,	201.5) );		images.push( new ImageData( "road-v"	,	748.45,	952.95,	0.707138061523438,	0.70703125,	-0.473617553710938,	0.473724365234375,	44.45,	201.55) );		images.push( new ImageData( "road-v"	,	276.8,	1015.85,	0.707046508789063,	-0.707138061523438,	0.473709106445313,	0.4736328125,	44.45,	201.5) );		images.push( new ImageData( "road-v"	,	766.25,	569.75,	0.5,	0.866012573242188,	-0.585220336914063,	0.337890625,	44.55,	201.5) );		images.push( new ImageData( "road-v"	,	235.5,	628.9,	0.49993896484375,	-0.86602783203125,	0.58013916015625,	0.33489990234375,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	560.65,	1243,	0.49993896484375,	-0.86602783203125,	0.58013916015625,	0.33489990234375,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	470.3,	1162.3,	0.5,	0.866012573242188,	-0.585220336914063,	0.337890625,	44.55,	201.5) );		images.push( new ImageData( "road-v"	,	514.15,	458.85,	0.49993896484375,	-0.86602783203125,	0.86602783203125,	0.49993896484375) );		images.push( new ImageData( "road-v"	,	526.9,	379.25,	0.5,	0.866012573242188,	-0.866012573242188,	0.5) );		images.push( new ImageData( "road-v"	,	177.9,	1346.05,	0.49993896484375,	-0.86602783203125,	0.86602783203125,	0.49993896484375) );		images.push( new ImageData( "road-v"	,	842.9,	1268.9,	0.500015258789063,	0.865997314453125,	-0.865997314453125,	0.500015258789063) );		images.push( new ImageData( "road-v"	,	494.35,	720,	1,	0,	0,	1.2056884765625,	44.5,	201.5) );		images.push( new ImageData( "background-0-l"	,	0,	3.1,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1563.35,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "building-plot"	,	429,	1437,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	777.05,	585.35,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	777.05,	913.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	711.7,	1237,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	711.7,	557,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	211.55,	585.35,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	211.55,	913.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	146.2,	1237,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	146.2,	557,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	355.25,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	714,	897,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	897,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	144,	897,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	427.85,	1140.9,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	657,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-44.3,	514.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	97.55,	810.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-6.55,	755.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-24.45,	948.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-6.55,	861.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	26.75,	849.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	26.75,	955.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-5.95,	864.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-1.2,	458.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-19.1,	650.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-25.25,	1159.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-46.8,	1336.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-46.8,	1265.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-19.1,	1404.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-19.1,	1386.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-24.45,	1019.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-1.2,	564.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	52.75,	857.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	52.75,	838.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	91.4,	921.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	27.35,	958.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	69.85,	1185,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	69.85,	1113.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	97.55,	1252.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	97.55,	1234.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-6.55,	718.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	57.5,	450.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	57.5,	432.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	96.15,	514.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	32.1,	551.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	96.15,	601.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	14.2,	744.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	93.1,	729.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	8.05,	1253.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-13.5,	1358.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	8.85,	1113.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	32.1,	657.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	41.9,	1333.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-44.3,	371.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-11,	359.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	53.05,	408.95,	1,	0,	0,	1) );		images.push( new ImageData( "rock-5"	,	956.1,	720.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	765.55,	1513.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	907.65,	1460.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	246.9,	216.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	290,	160,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	673.85,	146.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	707.15,	133.85,	1,	0,	0,	1) );	}}