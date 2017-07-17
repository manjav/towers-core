package com.gt.towers.battle.fieldes;class Battle_601 extends FieldData{	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasStart, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	825,	620,	1,	-1,	"7,4,2",	true,	-3	) );		places.push( new PlaceData( 1,	540,	1300,	1,	-1,	"2,6,5,4",	true,	-3	) );		places.push( new PlaceData( 2,	540,	620,	1,	-1,	"7,1,0,3",	true,	-3	) );		places.push( new PlaceData( 3,	255,	620,	1,	-1,	"7,5,2",	true,	-3	) );		places.push( new PlaceData( 4,	825,	1300,	1,	-1,	"6,0,1",	true,	-3	) );		places.push( new PlaceData( 5,	255,	1300,	1,	-1,	"6,3,1",	true,	-3	) );		places.push( new PlaceData( 6,	540,	1500,	12,	0,	"5,1,4",	true,	-3	) );		places.push( new PlaceData( 7,	540,	420,	12,	1,	"3,2,0",	true,	-3	) );		// create images		images.push( new ImageData( "road-v"	,	514.15,	458.85,	0.49993896484375,	-0.86602783203125,	0.86602783203125,	0.49993896484375) );		images.push( new ImageData( "road-v"	,	526.9,	379.25,	0.5,	0.866012573242188,	-0.866012573242188,	0.5) );		images.push( new ImageData( "road-v"	,	177.9,	1346.05,	0.49993896484375,	-0.86602783203125,	0.86602783203125,	0.49993896484375) );		images.push( new ImageData( "road-v"	,	842.9,	1268.9,	0.500015258789063,	0.865997314453125,	-0.865997314453125,	0.500015258789063) );		images.push( new ImageData( "road-h"	,	288.05,	1256.85,	1.17662048339844,	0,	0,	1,	207.5,	39.5) );		images.push( new ImageData( "road-h"	,	288.05,	581.35,	1.17662048339844,	0,	0,	1,	207.5,	39.5) );		images.push( new ImageData( "road-v"	,	495.5,	418.25,	1,	0,	0,	1.51663208007813,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	494.35,	882.15,	1,	0,	0,	1.59677124023438,	44.5,	201.5) );		images.push( new ImageData( "background-0-l"	,	0,	3.1,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "building-plot"	,	429,	1237,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	557,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	1437,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	777.05,	585.35,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	777.05,	913.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	711.7,	1237,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	711.7,	557,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	211.55,	585.35,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	211.55,	913.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	146.2,	1237,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	146.2,	557,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	355.25,	1,	0,	0,	1) );	}}