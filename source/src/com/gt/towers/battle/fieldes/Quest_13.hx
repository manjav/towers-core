package com.gt.towers.battle.fieldes;class Quest_13 extends FieldData{	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasStart, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	789.8,	552.7,	1,	1,	"4,1",	true,	-3	) );		places.push( new PlaceData( 1,	600.05,	854.8,	1,	-1,	"0,2,4",	true,	-3	) );		places.push( new PlaceData( 2,	391.05,	1274.9,	1,	-1,	"1,3,5",	true,	-3	) );		places.push( new PlaceData( 3,	691,	1426.45,	11,	0,	"2,5",	true,	-3	) );		places.push( new PlaceData( 4,	374.8,	552.7,	1,	1,	"0,1",	true,	-3	) );		places.push( new PlaceData( 5,	320.05,	1553.2,	11,	0,	"2,3",	true,	-3	) );		// create images		images.push( new ImageData( "hole-0"	,	243.45,	762.7,	2.25,	0,	0,	2.25,	38,	21.5) );		images.push( new ImageData( "road-h"	,	280.05,	1535.5,	0.934158325195313,	-0.3568115234375,	0.3568115234375,	0.934158325195313) );		images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	0,	1539.8,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-0"	,	704.35,	1594.95,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "bush-7"	,	563,	389.8,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	857.35,	631.25,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );		images.push( new ImageData( "chair-1"	,	508.55,	570.15,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );		images.push( new ImageData( "rock-0"	,	597.8,	1211.9,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "rock-3"	,	572.5,	1305.45,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "road-v"	,	560,	852.6,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "road-h"	,	352.3,	1248.7,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );		images.push( new ImageData( "building-plot"	,	580,	1363.45,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	744.05,	530.2,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "bush-4"	,	32.9,	853.75,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );		images.push( new ImageData( "bush-0"	,	3.05,	766.85,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "chair-0"	,	335.5,	684.1,	2.25,	0,	0,	2.25,	19.5,	14.5) );		images.push( new ImageData( "bush-7"	,	192.65,	631.25,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "road-v"	,	366,	591.85,	0.855148315429688,	-0.518386840820313,	0.518386840820313,	0.855148315429688) );		images.push( new ImageData( "building-plot"	,	489.05,	791.8,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	823.4,	274.65,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "tree-0"	,	190,	106.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	280.05,	191.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	341.05,	119.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	324.5,	259.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	499.95,	97.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	341.05,	48.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	393,	159.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	158.25,	172.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	212.15,	242.8,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	805.4,	910.95,	2.25003051757813,	0,	0,	2.25003051757813) );		images.push( new ImageData( "bush-4"	,	887.4,	1406.85,	2.25003051757813,	0,	0,	2.25003051757813) );		images.push( new ImageData( "bush-4"	,	546.9,	1594.95,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28) );		images.push( new ImageData( "road-v"	,	328.8,	1275.05,	0.971237182617188,	0.23809814453125,	-0.153793334960938,	0.6273193359375,	44.45,	201.5) );		images.push( new ImageData( "building-plot"	,	280.05,	1211.9,	1,	0,	0,	1) );		images.push( new ImageData( "bush-3"	,	253.75,	947.15,	2.25,	0,	0,	2.25,	28.5,	16.5) );		images.push( new ImageData( "bush-3"	,	887.4,	1036.95,	2.25,	0,	0,	2.25,	28.5,	16.5) );		images.push( new ImageData( "bush-3"	,	64.4,	1149.2,	2.25,	0,	0,	2.25,	28.5,	16.5) );		images.push( new ImageData( "building-plot"	,	209.05,	1490.2,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	830.2,	812.3,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "chair-0"	,	483.35,	421.85,	2.25,	0,	0,	2.25,	19.5,	14.5) );		images.push( new ImageData( "rock-3"	,	582.3,	552.7,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "tree-0"	,	36.25,	355.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	36.25,	427.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	97.25,	498.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	631.6,	97.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	595.35,	158.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	659.55,	155.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	158.25,	315.15,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	41.5,	1387.4,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "road-h"	,	374.8,	513.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	678.8,	489.7,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	263.8,	489.7,	1,	0,	0,	1) );	}}