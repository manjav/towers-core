package com.gt.towers.battle.fieldes;class Quest_3 extends FieldData{	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasStart, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	803.2,	505.55,	1,	1,	"1",	true,	-3	) );		places.push( new PlaceData( 1,	496.6,	1025.15,	1,	-1,	"0,3,2",	true,	-3	) );		places.push( new PlaceData( 2,	310,	1380,	11,	0,	"1",	true,	-3	) );		places.push( new PlaceData( 3,	696.7,	1521.65,	1,	0,	"1",	true,	-3	) );		// create images		images.push( new ImageData( "road-h"	,	553.35,	1029.2,	0.4117431640625,	1.077880859375,	-0.93414306640625,	0.356842041015625,	207.55,	39.5) );		images.push( new ImageData( "tree-0"	,	-34.7,	329.1,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-0"	,	647.85,	991.95,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-7"	,	788.8,	313.75,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	858.7,	1211.55,	1.125,	0,	0,	1.125,	35.55,	28) );		images.push( new ImageData( "chair-1"	,	457.55,	590.6,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );		images.push( new ImageData( "rock-0"	,	753.5,	1011,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "rock-3"	,	555.45,	1400.65,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "road-v"	,	624.75,	702.05,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "road-v"	,	447.65,	1024.55,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "building-plot"	,	385.6,	962.15,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	195.75,	1307.1,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	585.7,	1458.65,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	758.2,	457.75,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "building-plot"	,	692.2,	442.55,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	328.1,	1676.35,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-0"	,	993.45,	1416.95,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-0"	,	184.4,	1467.7,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-0"	,	871.1,	1136.95,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-0"	,	794.15,	1364.1,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "rock-5"	,	262.05,	286.95,	2.25,	0,	0,	2.25,	62,	36.5) );		images.push( new ImageData( "tree-0"	,	90.2,	564.3,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-1.3,	622.1,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-1.3,	715.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "bush-1"	,	134.3,	1063.3,	1,	0,	0,	1,	40.5,	26) );		images.push( new ImageData( "bush-2"	,	977.45,	1442.15,	1.125,	0,	0,	1.125,	31,	26.55) );		images.push( new ImageData( "bush-7"	,	693.55,	1174.4,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	278.7,	900.95,	1.125,	0,	0,	1.125,	35.5,	28) );		images.push( new ImageData( "bush-4"	,	664.05,	852,	1.125,	0,	0,	1.125,	35.5,	28) );		images.push( new ImageData( "bush-1"	,	936.05,	1378.7,	1.125,	0,	0,	1.125,	40.55,	26) );		images.push( new ImageData( "bush-1"	,	777.4,	712.05,	2.25,	0,	0,	2.25,	40.5,	26) );		images.push( new ImageData( "bush-4"	,	866.15,	1011.15,	1.125,	0,	0,	1.125,	35.5,	28) );		images.push( new ImageData( "tree-0"	,	169.5,	564.3,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	44.6,	422.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	44.6,	287.6,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	163.65,	183.15,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	259.4,	129.25,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	84.35,	183.15,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	123.9,	287.6,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	163.65,	422.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	242.95,	276.1,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-12.2,	471.35,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );	}}