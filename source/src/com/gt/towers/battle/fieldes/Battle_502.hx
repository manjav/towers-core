package com.gt.towers.battle.fieldes;class Battle_502 extends FieldData{	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")	{		super(index, name, times, introNum, startNum, endNum);		// places		places.push( new PlaceData( 0,	825,	620,	1,	-1,	"7,2,9",	true,	-3	) );		places.push( new PlaceData( 1,	540,	1200,	1,	-1,	"5,6,4,8",	true,	-3	) );		places.push( new PlaceData( 2,	540,	720,	1,	-1,	"0,3,7,8",	true,	-3	) );		places.push( new PlaceData( 3,	255,	620,	1,	-1,	"2,7,10",	true,	-3	) );		places.push( new PlaceData( 4,	825,	1300,	1,	-1,	"1,6,9",	true,	-3	) );		places.push( new PlaceData( 5,	255,	1300,	1,	-1,	"1,10,6",	true,	-3	) );		places.push( new PlaceData( 6,	540,	1500,	11,	0,	"1,4,5",	true,	-3	) );		places.push( new PlaceData( 7,	540,	420,	11,	1,	"0,2,3",	true,	-3	) );		places.push( new PlaceData( 8,	540,	960,	11,	-1,	"1,2",	true,	-3	) );		places.push( new PlaceData( 9,	825,	960,	11,	-1,	"0,4",	true,	-3	) );		places.push( new PlaceData( 10,	255,	960,	11,	-1,	"3,5",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-v"	,	766.25,	569.75,	0.5,	0.866012573242188,	-0.585220336914063,	0.337890625,	44.55,	201.5) );		images.push( new ImageData( "road-v"	,	235.5,	628.9,	0.49993896484375,	-0.86602783203125,	0.58013916015625,	0.33489990234375,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	560.65,	1243,	0.49993896484375,	-0.86602783203125,	0.58013916015625,	0.33489990234375,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	470.3,	1162.3,	0.5,	0.866012573242188,	-0.585220336914063,	0.337890625,	44.55,	201.5) );		images.push( new ImageData( "road-v"	,	514.15,	458.85,	0.49993896484375,	-0.86602783203125,	0.86602783203125,	0.49993896484375) );		images.push( new ImageData( "road-v"	,	526.9,	379.25,	0.5,	0.866012573242188,	-0.866012573242188,	0.5) );		images.push( new ImageData( "road-v"	,	177.9,	1346.05,	0.49993896484375,	-0.86602783203125,	0.86602783203125,	0.49993896484375) );		images.push( new ImageData( "road-v"	,	842.9,	1268.9,	0.500015258789063,	0.865997314453125,	-0.865997314453125,	0.500015258789063) );		images.push( new ImageData( "road-v"	,	495.5,	418.25,	1,	0,	0,	1.51663208007813,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	494.35,	882.15,	1,	0,	0,	1.59677124023438,	44.5,	201.5) );		images.push( new ImageData( "building-plot"	,	429,	1437,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	777.05,	585.35,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	777.05,	913.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	711.7,	1237,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	711.7,	557,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	211.55,	585.35,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	211.55,	913.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	146.2,	1237,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	146.2,	557,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	355.25,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	714,	897,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	897,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	144,	897,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	427.85,	1140.9,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	657,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	338.8,	739.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	345.2,	1000.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	655.05,	739.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	655.05,	1019.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	612.65,	754,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	229.8,	1413.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	324.75,	1038.55,	1,	0,	0,	1) );		images.push( new ImageData( "rock-5"	,	956.1,	720.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	68.9,	1131.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	907.65,	1460.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	246.9,	216.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	290,	160,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	673.85,	146.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	707.15,	133.85,	1,	0,	0,	1) );#end	}}