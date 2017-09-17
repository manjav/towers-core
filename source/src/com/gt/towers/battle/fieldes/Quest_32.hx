package com.gt.towers.battle.fieldes;class Quest_32 extends FieldData{	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasStart, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	850,	1500,	12,	0,	"3,5",	true,	-3	) );		places.push( new PlaceData( 1,	230,	420,	12,	1,	"6,2",	true,	-3	) );		places.push( new PlaceData( 2,	705,	650,	1,	-1,	"4,6,1",	true,	-3	) );		places.push( new PlaceData( 3,	375,	1270,	1,	-1,	"0,5,4",	true,	-3	) );		places.push( new PlaceData( 4,	540,	960,	21,	-1,	"5,3,2,6",	true,	-3	) );		places.push( new PlaceData( 5,	850,	1270,	1,	-1,	"3,0,4",	true,	-3	) );		places.push( new PlaceData( 6,	230,	650,	1,	-1,	"2,1,4",	true,	-3	) );		// create images		images.push( new ImageData( "road-v"	,	204.25,	696,	0.70709228515625,	-0.707077026367188,	0.78851318359375,	0.78851318359375,	44.55,	201.5) );		images.push( new ImageData( "road-v"	,	513.2,	985.8,	0.70709228515625,	-0.707077026367188,	0.78851318359375,	0.78851318359375,	44.55,	201.5) );		images.push( new ImageData( "road-v"	,	251,	465.75,	0.500015258789063,	-0.865997314453125,	0.965713500976563,	0.557586669921875,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	804.35,	1269.95,	1,	0,	0,	0.53424072265625,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	206.5,	431.9,	1,	0,	0,	0.53424072265625,	44.5,	201.5) );		images.push( new ImageData( "road-h"	,	432.05,	1219.55,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	260.35,	612.45,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	676.25,	620.25,	0.86602783203125,	0.499984741210938,	-0.499984741210938,	0.86602783203125) );		images.push( new ImageData( "road-v"	,	510.1,	903.1,	0.86602783203125,	0.499984741210938,	-0.499984741210938,	0.86602783203125) );		images.push( new ImageData( "road-v"	,	391,	1312,	0.500015258789063,	-0.865997314453125,	0.965713500976563,	0.557586669921875,	44.5,	201.5) );		images.push( new ImageData( "background-0-l"	,	0,	3.1,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1549.1,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-0"	,	897.85,	890.65,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "bush-7"	,	412,	1632.55,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	843.2,	725.55,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );		images.push( new ImageData( "rock-0"	,	147.9,	891.95,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "hole-1"	,	787.15,	962.35,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28.5) );		images.push( new ImageData( "hole-2"	,	118.05,	962.35,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );		images.push( new ImageData( "bush-7"	,	204.25,	1020.8,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "rock-3"	,	439.75,	1253.35,	2.24998474121094,	0,	0,	2.24998474121094,	27,	15) );		images.push( new ImageData( "tree-0"	,	-19.4,	962.35,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	486.75,	1041.1,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "bush-7"	,	749.8,	808.8,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "tree-0"	,	500.75,	337.35,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "hut-0"	,	865,	313.9,	1.5,	0,	0,	1.5,	174,	105) );		images.push( new ImageData( "building-plot"	,	731.4,	1438.95,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	264,	1207,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	427.85,	903.1,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	594,	587,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	119,	349.3,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	739,	1207,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	119,	587,	1,	0,	0,	1) );	}}