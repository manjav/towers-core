package com.gt.towers.battle.fieldes;class Quest_24 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	263.5,	600,	1,	-1,	"7,9,1",	true,	-3	) );		places.push( new PlaceData( 1,	540,	428.4,	11,	1,	"0,2",	true,	-3	) );		places.push( new PlaceData( 2,	816.5,	600,	1,	-1,	"1,9,6",	true,	-3	) );		places.push( new PlaceData( 3,	816.5,	1320,	31,	-1,	"4,8,6",	true,	-3	) );		places.push( new PlaceData( 4,	540,	1501.1,	11,	0,	"3,5",	true,	-3	) );		places.push( new PlaceData( 5,	263.5,	1320,	31,	-1,	"4,8,7",	true,	-3	) );		places.push( new PlaceData( 6,	816.5,	960,	1,	-1,	"2,3,8,9",	true,	-3	) );		places.push( new PlaceData( 7,	263.5,	960,	1,	-1,	"0,5,8,9",	true,	-3	) );		places.push( new PlaceData( 8,	540,	1143.25,	42,	-1,	"3,5,6,7",	true,	-3	) );		places.push( new PlaceData( 9,	540,	780.65,	42,	-1,	"0,2,6,7",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-v"	,	780.45,	930.25,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	780.45,	633.5,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	217.85,	585.35,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	217.85,	913.05,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	300.75,	578,	1.29852294921875,	0.84326171875,	-0.544631958007813,	0.838668823242188,	207.55,	39.55) );		images.push( new ImageData( "road-h"	,	302.45,	938.5,	1.29852294921875,	0.84326171875,	-0.544631958007813,	0.838668823242188,	207.55,	39.55) );		images.push( new ImageData( "road-h"	,	190.3,	608.4,	0.838668823242188,	-0.544631958007813,	0.544631958007813,	0.838668823242188,	207.6,	39.6) );		images.push( new ImageData( "road-h"	,	465.15,	1504.75,	0.838668823242188,	-0.544631958007813,	0.544631958007813,	0.838668823242188,	207.6,	39.6) );		images.push( new ImageData( "road-h"	,	798.25,	575.95,	-1.29852294921875,	0.84326171875,	0.544631958007813,	0.838668823242188,	207.55,	39.55) );		images.push( new ImageData( "road-h"	,	794.5,	936.45,	-1.29852294921875,	0.84326171875,	0.544631958007813,	0.838668823242188,	207.55,	39.55) );		images.push( new ImageData( "road-h"	,	856.2,	592,	-0.838668823242188,	-0.544631958007813,	-0.544631958007813,	0.838668823242188,	207.6,	39.6) );		images.push( new ImageData( "road-h"	,	581.35,	1484.25,	-0.838668823242188,	-0.544631958007813,	-0.544631958007813,	0.838668823242188,	207.6,	39.6) );		images.push( new ImageData( "building-plot"	,	706.45,	1238.05,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	427,	1418.85,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	149.45,	1240.1,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	701.2,	877.45,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	149.45,	877.45,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	701.2,	516.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	426.85,	344.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	149.45,	519.3,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	423.9,	1060.9,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	433.1,	701.2,	1,	0,	0,	1) );#end	}}