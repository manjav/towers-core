package com.gt.towers.battle.fieldes;class Battle_1 extends FieldData{	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasStart, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	540,	960,	1,	-1,	"3,4,2,1",	true,	-3	) );		places.push( new PlaceData( 1,	800,	1500,	11,	0,	"3,0",	true,	-3	) );		places.push( new PlaceData( 2,	280,	420,	11,	1,	"4,0",	true,	-3	) );		places.push( new PlaceData( 3,	800,	960,	1,	-1,	"1,0",	true,	-3	) );		places.push( new PlaceData( 4,	280,	960,	1,	-1,	"0,2",	true,	-3	) );		// create images		images.push( new ImageData( "rock-0"	,	99.2,	668.35,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "road-v"	,	776,	1082.3,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	235.75,	548.15,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	775.85,	944.4,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	235.75,	413.05,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	328.2,	928.25,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	573.05,	1124.75,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );		images.push( new ImageData( "background-0-l"	,	0,	3.1,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-0"	,	472.4,	400.4,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "bush-7"	,	624,	582.85,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	810.75,	624.8,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );		images.push( new ImageData( "rock-0"	,	297.2,	1346.25,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "building-plot"	,	690.95,	1425,	1,	0,	0,	1) );		images.push( new ImageData( "hole-1"	,	599.35,	448.35,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28.5) );		images.push( new ImageData( "hole-2"	,	334.45,	1160.75,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );		images.push( new ImageData( "bush-7"	,	420.65,	1219.2,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "road-v"	,	247.4,	478.65,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );		images.push( new ImageData( "rock-3"	,	715.6,	1357.5,	2.24998474121094,	0,	0,	2.24998474121094,	27,	15) );		images.push( new ImageData( "building-plot"	,	165.2,	360.35,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	410.2,	799.6,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );		images.push( new ImageData( "building-plot"	,	426.15,	894.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	197,	1160.75,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "building-plot"	,	165.2,	901.95,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	687.85,	901.4,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	247.4,	472.9,	0.463958740234375,	0,	0,	1,	111,	63) );	}}