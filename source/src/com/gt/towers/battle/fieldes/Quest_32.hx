package com.gt.towers.battle.fieldes;class Quest_32 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	314.5,	625.5,	1,	-1,	"7,1",	true,	-3	) );		places.push( new PlaceData( 1,	540,	409,	1,	-1,	"0,2",	true,	-3	) );		places.push( new PlaceData( 2,	765.5,	625.5,	14,	1,	"1",	true,	-3	) );		places.push( new PlaceData( 3,	765.5,	1294.5,	1,	-1,	"4,6",	true,	-3	) );		places.push( new PlaceData( 4,	540,	1511,	1,	-1,	"3,5",	true,	-3	) );		places.push( new PlaceData( 5,	314.5,	1294.5,	11,	0,	"4",	true,	-3	) );		places.push( new PlaceData( 6,	765.5,	960,	1,	-1,	"3,7",	true,	-3	) );		places.push( new PlaceData( 7,	314.5,	960,	1,	-1,	"0,6",	true,	-3	) );		places.push( new PlaceData( 8,	540,	1100.6,	42,	-1,	"",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-h"	,	332.5,	920.45,	1,	0,	0,	1,	207.5,	39.4) );		images.push( new ImageData( "road-v"	,	533.85,	456.45,	0.69891357421875,	-0.715225219726563,	0.411102294921875,	0.4017333984375,	44.5,	201.55) );		images.push( new ImageData( "road-v"	,	292.05,	1338.8,	0.69415283203125,	-0.719818115234375,	0.41375732421875,	0.399002075195313,	44.5,	201.45) );		images.push( new ImageData( "road-v"	,	490,	388.2,	0.706695556640625,	0.707473754882813,	-0.428131103515625,	0.427642822265625,	44.55,	201.4) );		images.push( new ImageData( "road-v"	,	724.3,	1274.45,	0.707305908203125,	0.706878662109375,	-0.427764892578125,	0.427993774414063,	44.6,	201.35) );		images.push( new ImageData( "road-v"	,	724.35,	930.25,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	270,	585.35,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	653.15,	1210.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	1426.45,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	203.5,	1210.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	653.3,	877,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	203.5,	877,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	650.2,	536.7,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	426.85,	327.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	203.5,	539.8,	1,	0,	0,	1) );#end	}}