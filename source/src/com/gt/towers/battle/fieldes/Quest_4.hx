package com.gt.towers.battle.fieldes;class Quest_4 extends FieldData{	public function new(index:Int, name:String, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	803.2,	505.55,	1,	1,	"1",	true,	-3	) );		places.push( new PlaceData( 1,	496.6,	1025.15,	1,	-1,	"2,0",	true,	-3	) );		places.push( new PlaceData( 2,	310,	1380,	1,	-1,	"3,1",	true,	-3	) );		places.push( new PlaceData( 3,	680,	1530,	12,	0,	"2",	true,	-3	) );		// create images		images.push( new ImageData( "bush-0"	,	804.9,	1339.8,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "bush-0"	,	645.15,	1213.8,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "bush-0"	,	926.5,	1380.3,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "tree-0"	,	8.7,	680.25,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "rock-5"	,	272.05,	252.15,	2.25,	0,	0,	2.25,	62,	36.5) );		images.push( new ImageData( "tree-0"	,	23.4,	464.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "bush-1"	,	946.5,	563.25,	2.25,	0,	0,	2.25,	40.5,	26) );		images.push( new ImageData( "bush-2"	,	692.2,	1656.6,	2.25,	0,	0,	2.25,	31,	26.5) );		images.push( new ImageData( "bush-7"	,	870.45,	1170.35,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	1000.1,	962.65,	2.25,	0,	0,	2.25,	35.5,	28) );		images.push( new ImageData( "bush-4"	,	1000.1,	829.5,	2.25,	0,	0,	2.25,	35.5,	28) );		images.push( new ImageData( "bush-1"	,	834,	1584.45,	2.25,	0,	0,	2.25,	40.5,	26) );		images.push( new ImageData( "bush-1"	,	787.4,	677.25,	2.25,	0,	0,	2.25,	40.5,	26) );		images.push( new ImageData( "bush-4"	,	635.25,	962.15,	2.25,	0,	0,	2.25,	35.5,	28) );		images.push( new ImageData( "tree-0"	,	252.95,	241.3,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	179.5,	529.5,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	23.4,	1054.5,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-0"	,	789.2,	986.6,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "bush-7"	,	788.8,	313.75,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	203.9,	1496.45,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );		images.push( new ImageData( "chair-1"	,	457.55,	590.6,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );		images.push( new ImageData( "rock-0"	,	535.9,	1154.9,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "rock-3"	,	555.45,	1400.65,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "road-v"	,	624.75,	702.05,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "road-v"	,	447.65,	1024.55,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "road-h"	,	335.25,	1343.9,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );		images.push( new ImageData( "building-plot"	,	385.6,	962.15,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	195.75,	1307.1,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	562.95,	1458.65,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	758.2,	457.75,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "building-plot"	,	692.2,	442.55,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	637.7,	780.85,	2.25,	0,	0,	2.25,	30,	18) );	}}