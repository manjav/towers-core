package com.gt.towers.battle.fieldes;class Battle_811 extends FieldData{	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")	{		super(index, name, times, introNum, startNum, endNum);		// places		places.push( new PlaceData( 0,	840,	555,	1,	-1,	"2,9,7",	true,	-3	) );		places.push( new PlaceData( 1,	540,	1230,	1,	-1,	"4,6,8,5",	true,	-3	) );		places.push( new PlaceData( 2,	540,	690,	1,	-1,	"8,0,7,3",	true,	-3	) );		places.push( new PlaceData( 3,	240,	555,	1,	-1,	"10,7,2",	true,	-3	) );		places.push( new PlaceData( 4,	840,	1365,	1,	-1,	"6,1,9",	true,	-3	) );		places.push( new PlaceData( 5,	240,	1365,	1,	-1,	"6,1,10",	true,	-3	) );		places.push( new PlaceData( 6,	540,	1500,	12,	0,	"4,1,5",	true,	-3	) );		places.push( new PlaceData( 7,	540,	420,	12,	1,	"3,0,2",	true,	-3	) );		places.push( new PlaceData( 8,	540,	960,	1,	-1,	"1,2",	true,	-3	) );		places.push( new PlaceData( 9,	840,	960,	1,	-1,	"0,4",	true,	-3	) );		places.push( new PlaceData( 10,	240,	960,	1,	-1,	"5,3",	true,	-3	) );#if flash		// images		images.push( new ImageData( "tree-0"	,	910,	700,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	800,	250,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	640,	740,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	69.4,	1093.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	179.4,	1543.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	339.4,	1053.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	69.4,	700,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	179.4,	250,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	339.4,	740,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	910,	1093.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	800,	1543.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	640,	1053.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	494.35,	200,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	494.35,	1626.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	933.55,	387.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	667.25,	228,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	985.5,	565.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	985.5,	921,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	83.65,	1461.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	349.95,	1621.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	31.7,	1283.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	31.7,	928.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	83.65,	387.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	349.95,	228,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	31.7,	565.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	933.55,	1461.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	667.25,	1621.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	985.5,	1283.5,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	590.45,	667.05,	-0.913909912109375,	-0.405914306640625,	-0.405914306640625,	0.913909912109375) );		images.push( new ImageData( "road-h"	,	886,	1341,	-0.913909912109375,	-0.405914306640625,	-0.405914306640625,	0.913909912109375) );		images.push( new ImageData( "road-h"	,	203.7,	526.7,	0.913909912109375,	-0.405914306640625,	0.405914306640625,	0.913909912109375) );		images.push( new ImageData( "road-h"	,	905.6,	536.45,	-0.913909912109375,	-0.405914306640625,	-0.405914306640625,	0.913909912109375) );		images.push( new ImageData( "road-h"	,	494.35,	1477.45,	0.913909912109375,	-0.405914306640625,	0.405914306640625,	0.913909912109375) );		images.push( new ImageData( "road-h"	,	614.95,	1485.25,	-0.913909912109375,	-0.405914306640625,	-0.405914306640625,	0.913909912109375) );		images.push( new ImageData( "road-h"	,	494.35,	667.05,	0.913909912109375,	-0.405914306640625,	0.405914306640625,	0.913909912109375) );		images.push( new ImageData( "road-h"	,	203.7,	1341,	0.913909912109375,	-0.405914306640625,	0.405914306640625,	0.913909912109375) );		images.push( new ImageData( "road-v"	,	494.35,	409.85,	1,	0,	0,	2.69650268554688,	44.5,	201.5) );		images.push( new ImageData( "building-plot"	,	428.4,	1416.85,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	191.65,	572.1,	1,	0,	0,	1.84776306152344,	44.5,	201.5) );		images.push( new ImageData( "building-plot"	,	125.15,	1282.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	125.15,	473.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	428.4,	338.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	428.4,	877.5,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	125.15,	877.95,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	428.4,	1147.15,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	428.4,	607.85,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	796.75,	572.1,	1,	0,	0,	1.84776306152344,	44.5,	201.5) );		images.push( new ImageData( "building-plot"	,	730.25,	1282.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	730.25,	473.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	730.25,	877.95,	1,	0,	0,	1) );#end	}}