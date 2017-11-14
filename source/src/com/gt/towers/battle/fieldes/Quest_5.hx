package com.gt.towers.battle.fieldes;class Quest_5 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	803.2,	400.3,	1,	1,	"1,4",	true,	-3	) );		places.push( new PlaceData( 1,	496.6,	919.9,	1,	-1,	"0,2,4",	true,	-3	) );		places.push( new PlaceData( 2,	310,	1274.75,	1,	-1,	"1,3",	true,	-3	) );		places.push( new PlaceData( 3,	673.95,	1416.4,	12,	0,	"2",	true,	-3	) );		places.push( new PlaceData( 4,	849.25,	759.6,	1,	-1,	"0,1",	true,	-3	) );#if flash		// images		images.push( new ImageData( "bush-1"	,	873.8,	1172.9,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	812.2,	697.8,	0.518402099609375,	0.855117797851563,	-0.855117797851563,	0.518402099609375) );		images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "chair-1"	,	493.7,	511.3,	1.5667724609375,	0,	0,	1.5667724609375,	45.05,	25.05) );		images.push( new ImageData( "rock-0"	,	731.55,	1049.65,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "rock-3"	,	555.45,	1295.4,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "road-v"	,	624.75,	596.8,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "road-v"	,	447.65,	919.3,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "road-h"	,	335.25,	1238.65,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );		images.push( new ImageData( "building-plot"	,	385.6,	856.9,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	195.75,	1201.85,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	562.95,	1353.4,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	790.8,	383.85,	0.999771118164063,	-0.0213775634765625,	0.0213775634765625,	0.999771118164063) );		images.push( new ImageData( "road-v"	,	758.2,	352.5,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "building-plot"	,	692.2,	337.3,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	738.25,	696.6,	1,	0,	0,	1) );		images.push( new ImageData( "rock-3"	,	587.2,	771.25,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "rock-6-"	,	337.7,	327.2,	1.29998779296875,	0,	0,	1.29998779296875,	54.5,	48.5) );		images.push( new ImageData( "bush-7"	,	725.7,	535.7,	1.125,	0,	0,	1.125,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	433.25,	1127.05,	1.125,	0,	0,	1.125,	35.55,	28) );		images.push( new ImageData( "bush-4"	,	378.25,	796.9,	1.125,	0,	0,	1.125,	35.55,	28) );		images.push( new ImageData( "bush-0"	,	363.35,	753.45,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-0"	,	716.95,	1001.3,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-0"	,	783.95,	941.75,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-0"	,	756.1,	1189.45,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-7"	,	360.65,	768.35,	1.125,	0,	0,	1.125,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	884.75,	993.15,	1.125,	0,	0,	1.125,	35.5,	28) );		images.push( new ImageData( "tree-0"	,	408.55,	390.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-24.6,	728.95,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-9.9,	512.75,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	219.65,	290,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	146.2,	578.2,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-9.9,	1078.3,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-38.05,	280.15,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	86.85,	515.35,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-4.65,	573.15,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-4.65,	666.1,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	166.15,	515.35,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	41.25,	373.1,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	41.25,	238.65,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	160.3,	134.2,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	81,	134.2,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	120.55,	238.65,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	160.3,	373.1,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-15.55,	422.4,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "bush-2"	,	849.05,	1122.45,	1,	0,	0,	1) );#end	}}