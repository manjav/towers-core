package com.gt.towers.battle.fieldes;class Battle_02 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	540,	390,	1,	1,	"",	true,	-1,	2,	16	) );		places.push( new PlaceData( 1,	190,	600,	1,	-1,	"",	true,	-1,	0,	4	) );		places.push( new PlaceData( 2,	890,	600,	1,	-1,	"",	true,	-1,	0,	4	) );		places.push( new PlaceData( 3,	540,	650,	501,	1,	"",	true,	-1,	0,	4	) );		places.push( new PlaceData( 4,	189.05,	960,	1,	-1,	"",	true,	-1,	1,	8	) );		places.push( new PlaceData( 5,	889.05,	960,	1,	-1,	"",	true,	-1,	1,	8	) );		places.push( new PlaceData( 6,	540,	1270,	501,	0,	"",	true,	-1,	0,	4	) );		places.push( new PlaceData( 7,	890,	1320,	1,	-1,	"",	true,	-1,	0,	4	) );		places.push( new PlaceData( 8,	190,	1320,	1,	-1,	"",	true,	-1,	0,	4	) );		places.push( new PlaceData( 9,	540,	1530,	1,	0,	"",	true,	-1,	2,	16	) );#if flash		// images		images.push( new ImageData( "road-v"	,	495.35,	297.55,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	493.05,	1172.1,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	533.75,	1496.3,	0.848312377929688,	-0.529495239257813,	0.529495239257813,	0.848312377929688) );		images.push( new ImageData( "road-h"	,	548,	1496.3,	-0.848312377929688,	-0.529495239257813,	-0.529495239257813,	0.848312377929688) );		images.push( new ImageData( "road-h"	,	190.45,	562.5,	0.848312377929688,	-0.529495239257813,	0.529495239257813,	0.848312377929688) );		images.push( new ImageData( "road-h"	,	916.65,	570.85,	-0.848312377929688,	-0.529495239257813,	-0.529495239257813,	0.848312377929688) );		images.push( new ImageData( "road-v"	,	845.75,	928.6,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	142.45,	928.6,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	141.4,	620.55,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	428.65,	1448.95,	1,	0,	0,	1) );		images.push( new ImageData( "fence-2"	,	624.7,	1497.55,	1,	0,	0,	1) );		images.push( new ImageData( "fence-0"	,	523.7,	1577.65,	1,	0,	0,	1) );		images.push( new ImageData( "fence-0"	,	429.05,	1577.65,	1,	0,	0,	1) );		images.push( new ImageData( "fence-1"	,	584.65,	1379.35,	1,	0,	0,	1) );		images.push( new ImageData( "fence-1"	,	401.75,	1379.35,	1,	0,	0,	1) );		images.push( new ImageData( "fence-2"	,	406.55,	1494.15,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	778.4,	1237.3,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	76.85,	1235.5,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	778.4,	877,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	76.85,	875.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	778.4,	512.7,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	76.85,	515.4,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429.45,	301.15,	1,	0,	0,	1) );		images.push( new ImageData( "fence-2"	,	624.7,	249.05,	1,	0,	0,	1) );		images.push( new ImageData( "fence-0"	,	523.7,	245.05,	1,	0,	0,	1) );		images.push( new ImageData( "fence-0"	,	429.05,	245.05,	1,	0,	0,	1) );		images.push( new ImageData( "fence-1"	,	531.85,	456.75,	1,	0,	0,	1) );		images.push( new ImageData( "fence-1"	,	467.75,	456.75,	1,	0,	0,	1) );		images.push( new ImageData( "fence-2"	,	406.55,	245.05,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	844.7,	620.55,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429.05,	569.1,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	428.65,	1184.9,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	512.65,	922.4,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	169.35,	922.75,	1,	0,	0,	1) );#end	}}