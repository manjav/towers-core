package com.gt.towers.battle.fieldes;class Quest_20 extends FieldData{	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasStart, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	848.55,	375.55,	1,	1,	"1",	true,	-3	) );		places.push( new PlaceData( 1,	600.05,	758.95,	1,	-1,	"0,2,4",	true,	-3	) );		places.push( new PlaceData( 2,	391.05,	1179.05,	41,	-1,	"1,3,5",	true,	-3	) );		places.push( new PlaceData( 3,	691,	1330.6,	1,	0,	"2,5",	true,	-3	) );		places.push( new PlaceData( 4,	340.15,	391.6,	1,	1,	"1",	true,	-3	) );		places.push( new PlaceData( 5,	255,	1474.25,	11,	0,	"2,3",	true,	-3	) );		// create images		images.push( new ImageData( "background-0-l"	,	0,	-6.2,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	0,	1544.4,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-0"	,	704.35,	1594.95,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "bush-7"	,	563,	205.3,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	857.35,	631.25,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );		images.push( new ImageData( "chair-1"	,	527.25,	482.5,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );		images.push( new ImageData( "rock-0"	,	597.8,	1116.05,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "rock-3"	,	572.5,	1209.6,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "road-v"	,	560,	756.75,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "road-h"	,	352.3,	1152.85,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );		images.push( new ImageData( "building-plot"	,	580,	1267.6,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	804.3,	359.15,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "building-plot"	,	737.55,	312.55,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	896.4,	541.5,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );		images.push( new ImageData( "bush-0"	,	866.55,	454.6,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "chair-0"	,	527.25,	293.4,	2.25,	0,	0,	2.25,	19.5,	14.5) );		images.push( new ImageData( "bush-7"	,	192.65,	535.4,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "road-v"	,	302.5,	404.8,	0.855148315429688,	-0.518386840820313,	0.518386840820313,	0.855148315429688) );		images.push( new ImageData( "building-plot"	,	229.15,	328.6,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	489.05,	695.95,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	823.4,	178.8,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "tree-0"	,	588.75,	76.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	653.55,	191.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	510.15,	326.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	571.15,	254.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	64.4,	838.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	428.05,	3.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	502,	133.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	649.75,	76.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	416.2,	146.95,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	805.4,	815.1,	2.25003051757813,	0,	0,	2.25003051757813) );		images.push( new ImageData( "bush-4"	,	887.4,	1406.85,	2.25003051757813,	0,	0,	2.25003051757813) );		images.push( new ImageData( "bush-4"	,	546.9,	1594.95,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28) );		images.push( new ImageData( "road-v"	,	408.65,	1067.1,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "building-plot"	,	280.05,	1116.05,	1,	0,	0,	1) );		images.push( new ImageData( "bush-3"	,	253.75,	851.3,	2.25,	0,	0,	2.25,	28.5,	16.5) );		images.push( new ImageData( "bush-3"	,	887.4,	1036.95,	2.25,	0,	0,	2.25,	28.5,	16.5) );		images.push( new ImageData( "tree-0"	,	428.05,	687.45,	1,	0,	0,	1) );		images.push( new ImageData( "bush-3"	,	64.4,	1053.35,	2.25,	0,	0,	2.25,	28.5,	16.5) );		images.push( new ImageData( "tree-0"	,	3.4,	981.85,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	293.1,	1439.65,	0.934158325195313,	-0.3568115234375,	0.3568115234375,	0.934158325195313) );		images.push( new ImageData( "building-plot"	,	144,	1411.25,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	830.2,	812.3,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "tree-0"	,	769.2,	644.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	653.55,	973.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	714.55,	973.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	744.55,	1015.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	42.15,	221.4,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-21.35,	665.4,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-37.15,	314.35,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	6.6,	596.85,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	1.5,	641.35,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-37.15,	407.3,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	42.15,	314.35,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	121.45,	221.4,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	85.9,	281.3,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	6.6,	374.25,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-37.15,	407.3,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-21.35,	665.4,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	85.9,	503.9,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	85.9,	374.25,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-31.9,	176.9,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	289.95,	95.4,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );	}}