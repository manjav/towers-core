package com.gt.towers.battle.fieldes;class Battle_01 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	540,	750,	1,	-1,	"2,1,4,3",	true,	-1,	0,	10	) );		places.push( new PlaceData( 1,	190,	540,	1,	-1,	"0,5",	true,	-1,	0,	10	) );		places.push( new PlaceData( 2,	890,	540,	1,	-1,	"0,5",	true,	-1,	0,	10	) );		places.push( new PlaceData( 3,	189.05,	960,	1,	-1,	"0,6",	true,	-1,	1,	20	) );		places.push( new PlaceData( 4,	889.05,	960,	1,	-1,	"0,6",	true,	-1,	1,	20	) );		places.push( new PlaceData( 5,	540,	330,	1,	1,	"1,2",	true,	-1,	2,	30	) );		places.push( new PlaceData( 6,	540,	1170,	1,	-1,	"3,4,7,8",	true,	-1,	0,	10	) );		places.push( new PlaceData( 7,	890,	1380,	1,	-1,	"6,9",	true,	-1,	0,	10	) );		places.push( new PlaceData( 8,	190,	1380,	1,	-1,	"6,9",	true,	-1,	0,	10	) );		places.push( new PlaceData( 9,	540,	1590,	1,	0,	"7,8",	true,	-1,	2,	30	) );#if flash		// images		images.push( new ImageData( "road-h"	,	533.75,	1556.3,	0.848312377929688,	-0.529495239257813,	0.529495239257813,	0.848312377929688) );		images.push( new ImageData( "road-h"	,	533.75,	1131.5,	0.848312377929688,	-0.529495239257813,	0.529495239257813,	0.848312377929688) );		images.push( new ImageData( "road-h"	,	533.75,	707.2,	0.848312377929688,	-0.529495239257813,	0.529495239257813,	0.848312377929688) );		images.push( new ImageData( "road-h"	,	548,	1556.3,	-0.848312377929688,	-0.529495239257813,	-0.529495239257813,	0.848312377929688) );		images.push( new ImageData( "road-h"	,	548,	1131.5,	-0.848312377929688,	-0.529495239257813,	-0.529495239257813,	0.848312377929688) );		images.push( new ImageData( "road-h"	,	548,	707.2,	-0.848312377929688,	-0.529495239257813,	-0.529495239257813,	0.848312377929688) );		images.push( new ImageData( "road-h"	,	190.45,	502.5,	0.848312377929688,	-0.529495239257813,	0.529495239257813,	0.848312377929688) );		images.push( new ImageData( "road-h"	,	190.45,	921.6,	0.848312377929688,	-0.529495239257813,	0.529495239257813,	0.848312377929688) );		images.push( new ImageData( "road-h"	,	190.45,	1343.3,	0.848312377929688,	-0.529495239257813,	0.529495239257813,	0.848312377929688) );		images.push( new ImageData( "road-h"	,	916.65,	1357.1,	-0.848312377929688,	-0.529495239257813,	-0.529495239257813,	0.848312377929688) );		images.push( new ImageData( "road-h"	,	916.65,	932.8,	-0.848312377929688,	-0.529495239257813,	-0.529495239257813,	0.848312377929688) );		images.push( new ImageData( "road-h"	,	916.65,	510.85,	-0.848312377929688,	-0.529495239257813,	-0.529495239257813,	0.848312377929688) );		images.push( new ImageData( "building-plot"	,	428.65,	1508.95,	1,	0,	0,	1) );		images.push( new ImageData( "fence-2"	,	624.7,	1557.55,	1,	0,	0,	1) );		images.push( new ImageData( "fence-0"	,	523.7,	1637.65,	1,	0,	0,	1) );		images.push( new ImageData( "fence-0"	,	429.05,	1637.65,	1,	0,	0,	1) );		images.push( new ImageData( "fence-1"	,	531.85,	1439.35,	1,	0,	0,	1) );		images.push( new ImageData( "fence-1"	,	467.75,	1439.35,	1,	0,	0,	1) );		images.push( new ImageData( "fence-2"	,	406.55,	1554.15,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	778.4,	1297.3,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	76.85,	1295.5,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	778.4,	877,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	76.85,	875.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	778.4,	452.7,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	76.85,	455.4,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429.05,	1085.6,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429.05,	664.5,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429.45,	241.15,	1,	0,	0,	1) );		images.push( new ImageData( "fence-2"	,	624.7,	189.05,	1,	0,	0,	1) );		images.push( new ImageData( "fence-0"	,	523.7,	185.05,	1,	0,	0,	1) );		images.push( new ImageData( "fence-0"	,	429.05,	185.05,	1,	0,	0,	1) );		images.push( new ImageData( "fence-1"	,	531.85,	396.75,	1,	0,	0,	1) );		images.push( new ImageData( "fence-1"	,	467.75,	396.75,	1,	0,	0,	1) );		images.push( new ImageData( "fence-2"	,	406.55,	185.05,	1,	0,	0,	1) );#end	}}