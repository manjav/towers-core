package com.gt.towers.battle.fieldes;class Battle_106 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	540,	1420,	1,	-1,	"3,2",	true,	-3	) );		places.push( new PlaceData( 1,	540,	500,	1,	-1,	"4,5",	true,	-3	) );		places.push( new PlaceData( 2,	783,	1200,	1,	-1,	"0,4",	true,	-3	) );		places.push( new PlaceData( 3,	297,	1200,	11,	0,	"0",	true,	-3	) );		places.push( new PlaceData( 4,	297,	720,	1,	-1,	"1,2",	true,	-3	) );		places.push( new PlaceData( 5,	783,	720,	11,	1,	"1",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-h"	,	280,	686.6,	0.52740478515625,	-0.4918212890625,	0.681976318359375,	0.7313232421875,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	578.25,	482.5,	0.527420043945313,	0.491836547851563,	-0.681961059570313,	0.7313232421875,	207.35,	39.55) );		images.push( new ImageData( "road-h"	,	527.25,	1379.75,	0.52740478515625,	-0.4918212890625,	0.681976318359375,	0.7313232421875,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	336.7,	1178.85,	0.527420043945313,	0.491836547851563,	-0.681961059570313,	0.7313232421875,	207.35,	39.55) );		images.push( new ImageData( "road-v"	,	305.6,	788.55,	0.70709228515625,	-0.70709228515625,	1.00711059570313,	1.00714111328125,	44.5,	201.5) );		images.push( new ImageData( "building-plot"	,	426.6,	1328.05,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	427.6,	414.65,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	668.15,	634.65,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	186,	634.65,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	186,	1114.65,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	672,	1114.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	176.8,	1487,	1.01170349121094,	0,	0,	1.01170349121094,	61.05,	71.5) );		images.push( new ImageData( "tree-0"	,	121.15,	1600.3,	1.2088623046875,	0,	0,	1.2088623046875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-1.3,	1454.55,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	976.25,	1305.15,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	911,	1454.55,	1.01170349121094,	0,	0,	1.01170349121094,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	751.95,	1454.55,	1.01170349121094,	0,	0,	1.01170349121094,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	810.75,	1600.3,	1.2088623046875,	0,	0,	1.2088623046875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	648.6,	1527.9,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	287.1,	1566.3,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	474.15,	1600.3,	1.2088623046875,	0,	0,	1.2088623046875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	416.95,	1517,	1.01170349121094,	0,	0,	1.01170349121094,	61,	71.5) );		images.push( new ImageData( "tree-3"	,	0,	-55.9,	1.5,	0,	0,	1.5,	40.5,	39) );		images.push( new ImageData( "tree-4"	,	233.9,	0,	1.50999450683594,	0,	0,	1.50999450683594,	36.5,	36) );		images.push( new ImageData( "tree-3"	,	427.6,	-40.1,	1.5,	0,	0,	1.5,	40.5,	39) );		images.push( new ImageData( "tree-4"	,	37.55,	367.5,	1,	0,	0,	1,	36.5,	36) );		images.push( new ImageData( "tree-3"	,	925.8,	-55.9,	1.5,	0,	0,	1.5,	40.5,	39) );		images.push( new ImageData( "tree-4"	,	703.2,	0,	1.50999450683594,	0,	0,	1.50999450683594,	36.5,	36) );		images.push( new ImageData( "tree-3"	,	15.7,	214,	1,	0,	0,	1,	40.5,	39) );		images.push( new ImageData( "tree-3"	,	538.7,	283.45,	1,	0,	0,	1,	40.5,	39) );		images.push( new ImageData( "tree-1"	,	856.85,	1328.05,	1.07354736328125,	0,	0,	1.07354736328125) );		images.push( new ImageData( "tree-1"	,	747.1,	1339.8,	1.07354736328125,	0,	0,	1.07354736328125) );		images.push( new ImageData( "tree-1"	,	252.9,	1422.3,	1.07354736328125,	0,	0,	1.07354736328125) );		images.push( new ImageData( "tree-1"	,	121.15,	1389.3,	1.07354736328125,	0,	0,	1.07354736328125) );		images.push( new ImageData( "tree-1"	,	951.95,	1200,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	-1.3,	1300,	1.07354736328125,	0,	0,	1.07354736328125) );		images.push( new ImageData( "tree-1"	,	-20.45,	1175.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-3"	,	924.3,	273.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	1027.25,	1100,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	-21,	933.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	-20.45,	1077.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	15.1,	979.05,	0.889450073242188,	0,	0,	0.889450073242188,	44.5,	45.5) );		images.push( new ImageData( "tree-2"	,	1027.25,	837.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	1008.3,	1024.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	1027.25,	933.7,	0.889450073242188,	0,	0,	0.889450073242188,	44.5,	45.5) );		images.push( new ImageData( "tree-3"	,	128.05,	83.6,	1.24066162109375,	0,	0,	1.24066162109375,	40.5,	39) );		images.push( new ImageData( "tree-4"	,	340.65,	99.4,	1.24893188476563,	0,	0,	1.24893188476563,	36.45,	36.05) );		images.push( new ImageData( "tree-3"	,	769.8,	129.85,	1.24066162109375,	0,	0,	1.24066162109375,	40.5,	39) );		images.push( new ImageData( "tree-3"	,	920.6,	110.25,	1.24066162109375,	0,	0,	1.24066162109375,	40.55,	38.95) );		images.push( new ImageData( "tree-4"	,	538.7,	110.25,	1.24893188476563,	0,	0,	1.24893188476563,	36.5,	36.05) );		images.push( new ImageData( "tree-4"	,	183.7,	347,	0.786346435546875,	0,	0,	0.786346435546875,	36.5,	36) );		images.push( new ImageData( "tree-3"	,	382.4,	295.5,	0.786346435546875,	0,	0,	0.786346435546875,	40.5,	39) );		images.push( new ImageData( "tree-3"	,	723.7,	312.15,	0.786346435546875,	0,	0,	0.786346435546875) );		images.push( new ImageData( "tree-3"	,	139.25,	216.25,	0.9755859375,	0,	0,	0.9755859375,	40.5,	39) );		images.push( new ImageData( "tree-4"	,	276.85,	217.65,	0.982086181640625,	0,	0,	0.982086181640625,	36.45,	36.05) );		images.push( new ImageData( "tree-3"	,	626.4,	199,	0.9755859375,	0,	0,	0.9755859375,	40.5,	39) );		images.push( new ImageData( "tree-4"	,	1027.25,	700.75,	0.786346435546875,	0,	0,	0.786346435546875,	36.5,	36) );		images.push( new ImageData( "tree-3"	,	976.25,	468.1,	0.786346435546875,	0,	0,	0.786346435546875,	40.5,	39) );		images.push( new ImageData( "tree-3"	,	1003.7,	580.65,	0.786346435546875,	0,	0,	0.786346435546875) );		images.push( new ImageData( "tree-3"	,	282.85,	312.15,	0.9755859375,	0,	0,	0.9755859375,	40.5,	39) );		images.push( new ImageData( "tree-4"	,	452.3,	199,	0.982086181640625,	0,	0,	0.982086181640625,	36.45,	36.05) );		images.push( new ImageData( "tree-3"	,	856.85,	362.75,	0.9755859375,	0,	0,	0.9755859375,	40.5,	39) );		images.push( new ImageData( "tree-4"	,	-26.65,	591.7,	0.786346435546875,	0,	0,	0.786346435546875,	36.5,	36) );		images.push( new ImageData( "tree-2"	,	-47.3,	757,	1,	0,	0,	1) );		images.push( new ImageData( "tree-3"	,	76.35,	468.1,	0.786346435546875,	0,	0,	0.786346435546875) );#end	}}