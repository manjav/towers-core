package com.gt.towers.battle.fieldes;class Battle_510 extends FieldData{	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")	{		super(index, name, times, introNum, startNum, endNum);		// places		places.push( new PlaceData( 0,	540,	1520,	11,	0,	"1,2,3",	true,	-3	) );		places.push( new PlaceData( 1,	810,	1300,	11,	-1,	"5,0",	true,	-3	) );		places.push( new PlaceData( 2,	540,	1300,	1,	-1,	"0,4",	true,	-3	) );		places.push( new PlaceData( 3,	270,	1300,	11,	-1,	"0,7",	true,	-3	) );		places.push( new PlaceData( 4,	540,	960,	44,	-1,	"6,2",	true,	-3	) );		places.push( new PlaceData( 5,	810,	620,	11,	-1,	"8,1",	true,	-3	) );		places.push( new PlaceData( 6,	540,	620,	1,	-1,	"8,4",	true,	-3	) );		places.push( new PlaceData( 7,	270,	620,	11,	-1,	"8,3",	true,	-3	) );		places.push( new PlaceData( 8,	540,	400,	11,	1,	"7,6,5",	true,	-3	) );#if flash		// images		images.push( new ImageData( "tree-4"	,	631.1,	1060.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-3"	,	887.4,	1112,	1,	0,	0,	1) );		images.push( new ImageData( "tree-3"	,	78,	1112,	1,	0,	0,	1) );		images.push( new ImageData( "tree-3"	,	78,	709.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-3"	,	892.1,	709.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-4"	,	351.75,	1060.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-4"	,	631.1,	766.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-4"	,	351.75,	766.55,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	495.5,	418.25,	1,	0,	0,	1.28800964355469,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	495.5,	899.75,	1,	0,	0,	1.43658447265625,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	763.5,	654.55,	1,	0,	0,	1.48539733886719,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	222.45,	660.95,	1,	0,	0,	1.45207214355469,	44.5,	201.5) );		images.push( new ImageData( "road-h"	,	528.65,	342.65,	0.7803955078125,	0.625259399414063,	-0.625259399414063,	0.7803955078125) );		images.push( new ImageData( "road-h"	,	555.4,	342.65,	-0.7803955078125,	0.625259399414063,	0.625259399414063,	0.7803955078125) );		images.push( new ImageData( "road-h"	,	258.1,	1242.8,	0.7803955078125,	0.625259399414063,	-0.625259399414063,	0.7803955078125) );		images.push( new ImageData( "road-h"	,	823.55,	1242.8,	-0.7803955078125,	0.625259399414063,	0.625259399414063,	0.7803955078125) );		images.push( new ImageData( "building-plot"	,	429,	1214.95,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	537.4,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	1441.9,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	697,	1214.95,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	697,	537.4,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	155.95,	1218.85,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	155.95,	537.4,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	313.6,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	877,	1,	0,	0,	1) );#end	}}