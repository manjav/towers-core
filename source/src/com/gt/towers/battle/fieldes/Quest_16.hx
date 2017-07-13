package com.gt.towers.battle.fieldes;class Quest_16 extends FieldData{	public function new(index:Int, name:String, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	848.55,	471.4,	1,	1,	"1",	true,	-3	) );		places.push( new PlaceData( 1,	600.05,	854.8,	1,	-1,	"0,2,4",	true,	-3	) );		places.push( new PlaceData( 2,	391.05,	1274.9,	41,	-1,	"1,5,3",	true,	-3	) );		places.push( new PlaceData( 3,	691,	1426.45,	1,	0,	"2,5",	true,	-3	) );		places.push( new PlaceData( 4,	340.15,	487.45,	1,	1,	"1",	true,	-3	) );		places.push( new PlaceData( 5,	255,	1570.1,	11,	0,	"2,3",	true,	-3	) );		// create images		images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	0,	1544.4,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-0"	,	704.35,	1594.95,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "bush-7"	,	563,	301.15,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	857.35,	631.25,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );		images.push( new ImageData( "chair-1"	,	527.25,	578.35,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );		images.push( new ImageData( "rock-0"	,	597.8,	1211.9,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "rock-3"	,	572.5,	1305.45,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "road-v"	,	560,	852.6,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "road-h"	,	352.3,	1248.7,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );		images.push( new ImageData( "building-plot"	,	580,	1363.45,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	804.3,	455,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "building-plot"	,	737.55,	408.4,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	32.9,	853.75,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );		images.push( new ImageData( "bush-0"	,	3.05,	766.85,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "chair-0"	,	527.25,	389.25,	2.25,	0,	0,	2.25,	19.5,	14.5) );		images.push( new ImageData( "bush-7"	,	192.65,	631.25,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "road-v"	,	302.5,	500.65,	0.855148315429688,	-0.518386840820313,	0.518386840820313,	0.855148315429688) );		images.push( new ImageData( "building-plot"	,	229.15,	424.45,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	489.05,	791.8,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	823.4,	274.65,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "tree-0"	,	190,	106.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	280.05,	191.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	341.05,	119.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	324.5,	259.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	499.95,	87.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	341.05,	48.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	438.95,	159.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	158.25,	172.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	212.15,	242.8,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	805.4,	910.95,	2.25003051757813,	0,	0,	2.25003051757813) );		images.push( new ImageData( "bush-4"	,	887.4,	1406.85,	2.25003051757813,	0,	0,	2.25003051757813) );		images.push( new ImageData( "bush-4"	,	546.9,	1594.95,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28) );		images.push( new ImageData( "road-v"	,	408.65,	1162.95,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "building-plot"	,	280.05,	1211.9,	1,	0,	0,	1) );		images.push( new ImageData( "bush-3"	,	253.75,	947.15,	2.25,	0,	0,	2.25,	28.5,	16.5) );		images.push( new ImageData( "bush-3"	,	887.4,	1036.95,	2.25,	0,	0,	2.25,	28.5,	16.5) );		images.push( new ImageData( "tree-0"	,	428.05,	783.3,	1,	0,	0,	1) );		images.push( new ImageData( "bush-3"	,	64.4,	1149.2,	2.25,	0,	0,	2.25,	28.5,	16.5) );		images.push( new ImageData( "tree-0"	,	3.4,	1077.7,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	293.1,	1535.5,	0.934158325195313,	-0.3568115234375,	0.3568115234375,	0.934158325195313) );		images.push( new ImageData( "building-plot"	,	144,	1507.1,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	830.2,	812.3,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "tree-0"	,	769.2,	740.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	653.55,	1068.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	714.55,	1068.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	744.55,	1111.2,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	42.15,	796,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );		images.push( new ImageData( "bush-0"	,	12.3,	709.1,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "tree-0"	,	12.65,	1019.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	51.4,	259.5,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-31.9,	628.6,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-27.9,	352.45,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-1.6,	706.15,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-37.15,	766.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-27.9,	445.4,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	51.4,	352.45,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	95.15,	319.4,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	15.85,	412.35,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-27.9,	445.4,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	6.6,	825.95,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	15.85,	505.3,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	95.15,	412.35,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-22.65,	215,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	95.15,	133.5,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );	}}