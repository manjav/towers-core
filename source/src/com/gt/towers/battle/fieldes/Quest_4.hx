package com.gt.towers.battle.fieldes;class Quest_4 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	341.3,	476.5,	1,	1,	"2",	true,	-3	) );		places.push( new PlaceData( 1,	837,	1217.35,	12,	0,	"3",	true,	-3	) );		places.push( new PlaceData( 2,	340.05,	1097.85,	11,	-1,	"0,3",	true,	-3	) );		places.push( new PlaceData( 3,	613.6,	1415.85,	1,	-1,	"1,2",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-h"	,	402.3,	1104.6,	0.480361938476563,	0.663436889648438,	-0.809967041015625,	0.586441040039063,	207.5,	39.45) );		images.push( new ImageData( "tree-0"	,	509.95,	504.55,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "background-0-l"	,	-0.05,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	3.3,	1555.55,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-0"	,	496.3,	984.9,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-7"	,	788.8,	313.75,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "chair-1"	,	95.45,	739.25,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );		images.push( new ImageData( "rock-0"	,	601.95,	1003.95,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "rock-3"	,	130.8,	1327.95,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "road-v"	,	285.45,	499.35,	0.999771118164063,	-0.0213623046875,	0.0213623046875,	0.999771118164063) );		images.push( new ImageData( "road-v"	,	795.3,	1181.55,	0.722091674804688,	0.691802978515625,	-0.569610595703125,	0.594528198242188,	44.45,	201.5) );		images.push( new ImageData( "building-plot"	,	726,	1154.35,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	490.65,	1363.3,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	236.15,	413.5,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	328.1,	1676.35,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-0"	,	993.45,	1416.95,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-0"	,	184.4,	1467.7,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-0"	,	675.25,	1023.95,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-0"	,	794.15,	1364.1,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "rock-5"	,	193.9,	183.55,	2.25,	0,	0,	2.25,	62,	36.5) );		images.push( new ImageData( "tree-0"	,	60.55,	383.6,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	411.35,	224.6,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "bush-1"	,	178.6,	1169.25,	1,	0,	0,	1,	40.5,	26) );		images.push( new ImageData( "bush-2"	,	977.45,	1442.15,	1.125,	0,	0,	1.125,	31,	26.55) );		images.push( new ImageData( "bush-7"	,	587.2,	816.75,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	512.5,	844.95,	1.125,	0,	0,	1.125,	35.5,	28) );		images.push( new ImageData( "bush-1"	,	936.05,	1378.7,	1.125,	0,	0,	1.125,	40.55,	26) );		images.push( new ImageData( "bush-1"	,	646.15,	583.85,	2.25,	0,	0,	2.25,	40.5,	26) );		images.push( new ImageData( "bush-4"	,	670.3,	898.15,	1.125,	0,	0,	1.125,	35.5,	28) );		images.push( new ImageData( "tree-0"	,	550.75,	392.9,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	669.8,	288.45,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	765.55,	234.55,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	590.5,	288.45,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	765.55,	433.4,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	887.4,	474.35,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	81.45,	851.75,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	758.85,	829.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "road-v"	,	291.5,	702.6,	0.933486938476563,	-0.0199432373046875,	0.021270751953125,	0.99530029296875,	44.55,	201.5) );		images.push( new ImageData( "tree-0"	,	472.9,	102.55,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "building-plot"	,	223.2,	1040.7,	1,	0,	0,	1) );#end	}}