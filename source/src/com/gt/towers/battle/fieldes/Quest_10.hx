package com.gt.towers.battle.fieldes;class Quest_10 extends FieldData{	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasStart, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	803.2,	627.8,	1,	-1,	"1,4",	true,	-3	) );		places.push( new PlaceData( 1,	566.75,	1037.65,	1,	-1,	"0,2",	true,	-3	) );		places.push( new PlaceData( 2,	413,	1318.15,	1,	-1,	"1,3",	true,	-3	) );		places.push( new PlaceData( 3,	744.25,	1470.45,	12,	0,	"2",	true,	-3	) );		places.push( new PlaceData( 4,	399.25,	643.1,	11,	1,	"0",	true,	-3	) );		places.push( new PlaceData( 5,	670,	1202,	41,	-1,	"",	true,	-3	) );		// create images		images.push( new ImageData( "bush-7"	,	689.2,	296.45,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "tree-0"	,	467.25,	115.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	626.15,	92.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	467.25,	43.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	519.2,	154.65,	1,	0,	0,	1) );		images.push( new ImageData( "rock-5"	,	526.85,	301.2,	2,	0,	0,	2,	62,	36.5) );		images.push( new ImageData( "tree-0"	,	519.2,	374.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	650.85,	374.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	350.55,	95.6,	1,	0,	0,	1) );		images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	696.4,	43.55,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	7.7,	1544.7,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-0"	,	678.15,	1275.1,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "bush-7"	,	27.65,	494.6,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	855.25,	704.25,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );		images.push( new ImageData( "chair-1"	,	343.95,	728.15,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );		images.push( new ImageData( "rock-0"	,	724.25,	1235.7,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "rock-3"	,	374.85,	1450.25,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "road-v"	,	624.75,	839.6,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "road-v"	,	568.85,	949.2,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "road-h"	,	441.5,	1291.95,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );		images.push( new ImageData( "building-plot"	,	456.15,	967.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	302,	1255.15,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	633.25,	1407.45,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	758.2,	595.3,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "bush-4"	,	194.35,	1036.1,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28) );		images.push( new ImageData( "bush-4"	,	84.5,	886.2,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );		images.push( new ImageData( "bush-0"	,	176.75,	971.7,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "road-v"	,	802.25,	598.6,	0.000091552734375,	1,	-1,	0.000091552734375,	44.5,	201.45) );		images.push( new ImageData( "building-plot"	,	692.2,	580.1,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	288.25,	580.1,	1,	0,	0,	1) );		images.push( new ImageData( "chair-0"	,	583.2,	717.05,	2.25,	0,	0,	2.25,	19.5,	14.5) );		images.push( new ImageData( "bush-4"	,	51.9,	967.8,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28) );		images.push( new ImageData( "tree-0"	,	870,	886.2,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	185.45,	191.25,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	307.45,	230.95,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	166.25,	334.25,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	337.1,	398.45,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	398.1,	326.95,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	494.25,	246.3,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	528.25,	287.2,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	635.4,	287.2,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "bush-7"	,	394.3,	1570.7,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "tree-0"	,	395.15,	959.3,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	115.75,	981.2,	1,	0,	0,	1,	61,	71.5) );	}}