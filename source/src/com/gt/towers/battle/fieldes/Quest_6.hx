package com.gt.towers.battle.fieldes;class Quest_6 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	617.45,	364.1,	1,	1,	"1",	true,	-3	) );		places.push( new PlaceData( 1,	449.8,	1018.85,	1,	-1,	"0,2",	true,	-3	) );		places.push( new PlaceData( 2,	310,	1272.55,	1,	-1,	"1,3",	true,	-3	) );		places.push( new PlaceData( 3,	680,	1422.55,	11,	0,	"2",	true,	-3	) );#if flash		// images		images.push( new ImageData( "tree-0"	,	-34.7,	329.1,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-0"	,	814.75,	915.25,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-7"	,	788.8,	313.75,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	481.85,	1162.95,	1.125,	0,	0,	1.125,	35.55,	28) );		images.push( new ImageData( "chair-1"	,	910.85,	422.05,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );		images.push( new ImageData( "rock-0"	,	535.9,	1047.45,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "rock-3"	,	555.45,	1293.2,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "road-v"	,	515.4,	586.35,	0.971237182617188,	0.23809814453125,	-0.23809814453125,	0.971237182617188) );		images.push( new ImageData( "road-v"	,	447.65,	917.1,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "road-h"	,	335.25,	1236.45,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );		images.push( new ImageData( "building-plot"	,	338.8,	955.85,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	195.75,	1199.65,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	562.95,	1351.2,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	577.25,	342,	0.971237182617188,	0.23809814453125,	-0.23809814453125,	0.971237182617188) );		images.push( new ImageData( "building-plot"	,	506.45,	301.1,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	659.75,	922.15,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-0"	,	993.45,	1416.95,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-0"	,	979.7,	996.95,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-0"	,	653.5,	1173.4,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-0"	,	794.15,	1256.65,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "rock-5"	,	701.7,	478.5,	2.25,	0,	0,	2.25,	62,	36.5) );		images.push( new ImageData( "tree-0"	,	90.2,	564.3,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-1.3,	622.1,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-1.3,	715.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "bush-1"	,	134.3,	1063.3,	1,	0,	0,	1,	40.5,	26) );		images.push( new ImageData( "bush-2"	,	977.45,	1442.15,	1.125,	0,	0,	1.125,	31,	26.55) );		images.push( new ImageData( "bush-7"	,	860.45,	1205.15,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	278.7,	793.5,	1.125,	0,	0,	1.125,	35.5,	28) );		images.push( new ImageData( "bush-4"	,	830.95,	775.3,	1.125,	0,	0,	1.125,	35.5,	28) );		images.push( new ImageData( "bush-1"	,	936.05,	1378.7,	1.125,	0,	0,	1.125,	40.55,	26) );		images.push( new ImageData( "bush-1"	,	777.4,	604.6,	2.25,	0,	0,	2.25,	40.5,	26) );		images.push( new ImageData( "bush-4"	,	648.55,	1047.6,	1.125,	0,	0,	1.125,	35.5,	28) );		images.push( new ImageData( "tree-0"	,	169.5,	564.3,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	44.6,	422.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	44.6,	287.6,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	163.65,	183.15,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	259.4,	129.25,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	84.35,	183.15,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	123.9,	287.6,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	163.65,	422.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	647.15,	514.65,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-12.2,	471.35,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	242.95,	329.1,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );#end	}}