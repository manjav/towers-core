package com.gt.towers.battle.fieldes;class Quest_23 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	263.5,	537.5,	11,	-1,	"1,7",	true,	-3	) );		places.push( new PlaceData( 1,	539.5,	297.65,	12,	1,	"0,8,2",	true,	-3	) );		places.push( new PlaceData( 2,	816.5,	537.5,	11,	-1,	"1,6",	true,	-3	) );		places.push( new PlaceData( 3,	816.5,	1462,	11,	-1,	"4,6",	true,	-3	) );		places.push( new PlaceData( 4,	539.5,	1222.15,	11,	0,	"3,5,8",	true,	-3	) );		places.push( new PlaceData( 5,	263.5,	1462,	11,	-1,	"4,7",	true,	-3	) );		places.push( new PlaceData( 6,	816.5,	1000,	31,	-1,	"2,3",	true,	-3	) );		places.push( new PlaceData( 7,	263.5,	1000,	31,	-1,	"0,5",	true,	-3	) );		places.push( new PlaceData( 8,	539.5,	760.15,	31,	-1,	"1,4",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-v"	,	775.35,	566.55,	1,	0,	0,	2.0556640625,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	217.85,	575.95,	1,	0,	0,	2.030517578125,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	496.8,	335.75,	1,	0,	0,	2.12890625,	44.5,	201.55) );		images.push( new ImageData( "road-h"	,	228.45,	1444.25,	0.752960205078125,	-0.658065795898438,	0.658065795898438,	0.752960205078125) );		images.push( new ImageData( "road-h"	,	221.3,	524.65,	0.752960205078125,	-0.658065795898438,	0.658065795898438,	0.752960205078125) );		images.push( new ImageData( "road-h"	,	858.7,	524.65,	-0.752960205078125,	-0.658065795898438,	-0.658065795898438,	0.752960205078125,	207.5,	39.5) );		images.push( new ImageData( "road-h"	,	851.55,	1444.25,	-0.752960205078125,	-0.658065795898438,	-0.658065795898438,	0.752960205078125) );		images.push( new ImageData( "building-plot"	,	698,	1375.95,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	426.9,	1138.05,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	149.85,	1375.95,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	704.3,	917.6,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	146.35,	917.6,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	701.2,	451.3,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	426.85,	217.55,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	149.45,	454.4,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	426.85,	674.7,	1,	0,	0,	1) );#end	}}