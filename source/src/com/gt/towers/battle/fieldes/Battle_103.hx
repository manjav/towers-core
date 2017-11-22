package com.gt.towers.battle.fieldes;class Battle_103 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	540,	1420,	11,	0,	"2,3",	true,	-3	) );		places.push( new PlaceData( 1,	540,	500,	11,	1,	"4,5",	true,	-3	) );		places.push( new PlaceData( 2,	690,	1200,	1,	-1,	"0,5",	true,	-3	) );		places.push( new PlaceData( 3,	390,	1200,	1,	-1,	"0,4",	true,	-3	) );		places.push( new PlaceData( 4,	390,	720,	1,	-1,	"1,3",	true,	-3	) );		places.push( new PlaceData( 5,	690,	720,	1,	-1,	"1,2",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-v"	,	648.6,	731.8,	1,	0,	0,	1.16178894042969,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	348.2,	731.8,	1,	0,	0,	1.16178894042969,	44.5,	201.5) );		images.push( new ImageData( "tree-0"	,	434.4,	807.2,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "road-h"	,	486.95,	1390.15,	0.50994873046875,	-0.509963989257813,	0.707107543945313,	0.70709228515625,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	338.8,	694.3,	0.50994873046875,	-0.509963989257813,	0.707107543945313,	0.70709228515625,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	528.45,	482.65,	0.509963989257813,	0.50994873046875,	-0.70709228515625,	0.707107543945313,	207.45,	39.55) );		images.push( new ImageData( "road-h"	,	380.95,	1178.55,	0.509963989257813,	0.50994873046875,	-0.70709228515625,	0.707107543945313,	207.45,	39.55) );		images.push( new ImageData( "building-plot"	,	431.2,	1363.15,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	427.95,	443.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	579,	657,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	279,	657,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	279,	1137,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	579,	1137,	1,	0,	0,	1) );		images.push( new ImageData( "rock-5"	,	439.8,	893.15,	1.5,	0,	0,	1.5,	62,	36.5) );		images.push( new ImageData( "tree-0"	,	920.65,	1074.2,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	920.65,	1210.9,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	856.85,	1148.95,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	834.85,	1261.2,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	834.85,	1397.9,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	771.05,	1335.95,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	952.4,	1339.6,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	952.4,	1473.1,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	790.3,	1473.1,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	726.5,	1547.85,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	683.15,	1446,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	538.15,	1525.45,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	359.35,	1579.5,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	243.5,	1410.75,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	887.4,	783,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	115.9,	1026.85,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	801,	315.15,	1.0458984375,	0,	0,	1.0458984375,	61,	71.5) );#end	}}