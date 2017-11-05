package com.gt.towers.battle.fieldes;class Quest_3 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// create places		places.push( new PlaceData( 0,	347.15,	400.1,	11,	1,	"1",	true,	-3	) );		places.push( new PlaceData( 1,	540.9,	1054.7,	1,	-1,	"0,2,3",	true,	-3	) );		places.push( new PlaceData( 2,	354.3,	1409.55,	11,	0,	"1",	true,	-3	) );		places.push( new PlaceData( 3,	808.85,	1395.5,	1,	0,	"1",	true,	-3	) );		// create images		images.push( new ImageData( "road-h"	,	609.5,	1073.8,	0.480361938476563,	0.663436889648438,	-0.809967041015625,	0.586441040039063,	207.5,	39.45) );		images.push( new ImageData( "tree-0"	,	509.95,	504.55,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "background-0-l"	,	-0.05,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-0"	,	692.15,	1097.9,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-7"	,	788.8,	313.75,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	858.7,	1211.55,	1.125,	0,	0,	1.125,	35.55,	28) );		images.push( new ImageData( "chair-1"	,	95.45,	739.25,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );		images.push( new ImageData( "rock-0"	,	907.7,	578.8,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "rock-3"	,	555.45,	1324.25,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "road-v"	,	306.85,	410.7,	0.960174560546875,	-0.279388427734375,	0.279388427734375,	0.960174560546875) );		images.push( new ImageData( "road-v"	,	491.95,	1054.1,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "building-plot"	,	429.9,	991.7,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	240.05,	1336.65,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	697.85,	1332.5,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	236.15,	337.1,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	328.1,	1676.35,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-0"	,	993.45,	1416.95,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-0"	,	184.4,	1467.7,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-0"	,	916.15,	1272.6,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "rock-5"	,	768.2,	392.25,	2.25,	0,	0,	2.25,	62,	36.5) );		images.push( new ImageData( "tree-0"	,	60.55,	383.6,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "bush-1"	,	178.6,	1169.25,	1,	0,	0,	1,	40.5,	26) );		images.push( new ImageData( "bush-2"	,	977.45,	1442.15,	1.125,	0,	0,	1.125,	31,	26.55) );		images.push( new ImageData( "bush-7"	,	737.85,	1203.95,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	323,	1006.9,	1.125,	0,	0,	1.125,	35.5,	28) );		images.push( new ImageData( "bush-4"	,	708.35,	957.95,	1.125,	0,	0,	1.125,	35.5,	28) );		images.push( new ImageData( "bush-1"	,	936.05,	1378.7,	1.125,	0,	0,	1.125,	40.55,	26) );		images.push( new ImageData( "bush-1"	,	777.4,	712.05,	2.25,	0,	0,	2.25,	40.5,	26) );		images.push( new ImageData( "bush-4"	,	866.15,	1011.15,	1.125,	0,	0,	1.125,	35.5,	28) );		images.push( new ImageData( "tree-0"	,	550.75,	392.9,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	669.8,	288.45,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	765.55,	234.55,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	590.5,	288.45,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	630.05,	392.9,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	749.1,	381.4,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	81.45,	851.75,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	716.7,	455.25,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "road-v"	,	382.95,	675.05,	0.960174560546875,	-0.279388427734375,	0.279388427734375,	0.960174560546875) );		images.push( new ImageData( "tree-0"	,	472.9,	102.55,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	478.6,	224.6,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );	}}