package com.gt.towers.battle.fieldes;class Battle_602 extends FieldData{	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")	{		super(index, name, times, introNum, startNum, endNum);		// places		places.push( new PlaceData( 0,	540,	1420,	1,	0,	"4,5",	true,	-3	) );		places.push( new PlaceData( 1,	540,	500,	1,	1,	"9,8",	true,	-3	) );		places.push( new PlaceData( 2,	840,	500,	1,	1,	"9,11",	true,	-3	) );		places.push( new PlaceData( 3,	240,	500,	1,	1,	"12,8",	true,	-3	) );		places.push( new PlaceData( 4,	690,	1200,	1,	-1,	"0,6,9",	true,	-3	) );		places.push( new PlaceData( 5,	390,	1200,	1,	-1,	"0,7,8",	true,	-3	) );		places.push( new PlaceData( 6,	840,	1420,	1,	0,	"4,11",	true,	-3	) );		places.push( new PlaceData( 7,	240,	1420,	1,	0,	"5,12",	true,	-3	) );		places.push( new PlaceData( 8,	390,	720,	1,	-1,	"1,3,5",	true,	-3	) );		places.push( new PlaceData( 9,	690,	720,	1,	-1,	"1,2,4",	true,	-3	) );		places.push( new PlaceData( 10,	540,	960,	43,	-1,	"",	true,	-3	) );		places.push( new PlaceData( 11,	860,	960,	41,	-1,	"2,6",	true,	-3	) );		places.push( new PlaceData( 12,	220,	960,	41,	-1,	"3,7",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-v"	,	814.2,	499.95,	1,	0,	0,	2.31231689453125,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	179.65,	499.95,	1,	0,	0,	2.31231689453125,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	648.6,	731.8,	1,	0,	0,	1.16178894042969,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	348.2,	731.8,	1,	0,	0,	1.16178894042969,	44.5,	201.5) );		images.push( new ImageData( "road-h"	,	676.55,	1178.55,	0.509963989257813,	0.50994873046875,	-0.70709228515625,	0.707107543945313,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	222.95,	467.4,	0.509963989257813,	0.50994873046875,	-0.70709228515625,	0.707107543945313,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	191.3,	1390.2,	0.50994873046875,	-0.509963989257813,	0.707107543945313,	0.70709228515625,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	649.95,	679.05,	0.50994873046875,	-0.509963989257813,	0.707107543945313,	0.70709228515625,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	486.95,	1390.15,	0.50994873046875,	-0.509963989257813,	0.707107543945313,	0.70709228515625,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	338.8,	694.3,	0.50994873046875,	-0.509963989257813,	0.707107543945313,	0.70709228515625,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	528.45,	482.65,	0.509963989257813,	0.50994873046875,	-0.70709228515625,	0.707107543945313,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	380.95,	1178.55,	0.509963989257813,	0.50994873046875,	-0.70709228515625,	0.707107543945313,	207.45,	39.55) );		images.push( new ImageData( "building-plot"	,	431.2,	1363.15,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	427.95,	443.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	729,	1357,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	128.1,	1362.35,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	579,	657,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	279,	657,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	728.9,	436.65,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	125,	433.55,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	279,	1137,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	579,	1137,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	747.7,	883.9,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	113.15,	883.9,	1,	0,	0,	1) );		images.push( new ImageData( "rock-5"	,	331.75,	240,	1.5,	0,	0,	1.5,	62,	36.5) );		images.push( new ImageData( "tree-0"	,	581.7,	261.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	947,	591.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	45.1,	1153.95,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	636.35,	1219.5,	0.483383178710938,	0,	0,	0.690093994140625,	111,	63.05) );		images.push( new ImageData( "building-plot"	,	336.35,	1219.5,	0.483383178710938,	0,	0,	0.690093994140625,	111,	63.05) );		images.push( new ImageData( "building-plot"	,	182.35,	516.05,	0.483383178710938,	0,	0,	0.690093994140625,	111,	63.05) );		images.push( new ImageData( "building-plot"	,	185.45,	1318.85,	0.483383178710938,	0,	0,	0.690093994140625,	111,	63.05) );		images.push( new ImageData( "building-plot"	,	479.9,	499.95,	0.483383178710938,	0,	0,	0.690093994140625,	111,	63.05) );		images.push( new ImageData( "building-plot"	,	786.25,	519.15,	0.483383178710938,	0,	0,	0.690093994140625,	111,	63.05) );#end	}}