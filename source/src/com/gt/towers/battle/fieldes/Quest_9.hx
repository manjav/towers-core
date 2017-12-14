package com.gt.towers.battle.fieldes;class Quest_9 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	760,	500,	1,	-1,	"5,3,1",	true,	-3	) );		places.push( new PlaceData( 1,	300.55,	1420,	1,	-1,	"0,4,2",	true,	-3	) );		places.push( new PlaceData( 2,	760,	1420,	1,	-1,	"1,5",	true,	-3	) );		places.push( new PlaceData( 3,	300.55,	500,	1,	-1,	"0,4",	true,	-3	) );		places.push( new PlaceData( 4,	300.55,	1040,	1,	1,	"1,3",	true,	-3	) );		places.push( new PlaceData( 5,	760,	880,	1,	0,	"0,2",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-h"	,	353.3,	465.75,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	717.95,	929.15,	1,	0,	0,	1.0904541015625,	44.5,	201.5) );		images.push( new ImageData( "rock-0"	,	930.35,	1142,	1,	0,	0,	1,	39.5,	17.55) );		images.push( new ImageData( "hole-2"	,	440.9,	690.7,	1,	0,	0,	1,	51,	34) );		images.push( new ImageData( "bush-0"	,	525.85,	157.55,	1,	0,	0,	1,	30,	18) );		images.push( new ImageData( "tree-0"	,	515.7,	1101.6,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );		images.push( new ImageData( "building-plot"	,	185.5,	418.85,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	674.6,	1606.1,	1,	0,	0,	1,	41.55,	19) );		images.push( new ImageData( "rock-0"	,	431.8,	1619.1,	1,	0,	0,	1,	39.5,	17.55) );		images.push( new ImageData( "chair-1"	,	942.05,	1441.5,	1,	0,	0,	1,	45,	25) );		images.push( new ImageData( "road-v"	,	258.3,	548,	1,	0,	0,	1.0904541015625,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	717.95,	513.45,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	258.3,	1006.65,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	509.25,	903.55,	0.898788452148438,	0.4383544921875,	-0.5350341796875,	1.09695434570313,	44.6,	201.45) );		images.push( new ImageData( "road-h"	,	298.2,	1387.65,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	649,	418.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	565.6,	1166.3,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	487.7,	1215.7,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	510,	1448.2,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "building-plot"	,	649,	1338.3,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	185.5,	956.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	649,	795.55,	1,	0,	0,	1) );		images.push( new ImageData( "rock-4"	,	202.4,	1539.35,	1,	0,	0,	1,	64.5,	23) );		images.push( new ImageData( "bush-0"	,	30.05,	838.95,	1,	0,	0,	1,	30,	18) );		images.push( new ImageData( "bush-7"	,	109.25,	638.2,	1,	0,	0,	1,	41.55,	19) );		images.push( new ImageData( "bush-4"	,	2.2,	659.05,	1,	0,	0,	1,	35.55,	28) );		images.push( new ImageData( "bush-7"	,	589.15,	339.1,	1,	0,	0,	1,	41.5,	19.05) );		images.push( new ImageData( "bush-4"	,	369,	381.05,	1,	0,	0,	1,	35.55,	28) );		images.push( new ImageData( "rock-1"	,	92.2,	711.05,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	8.45,	772.7,	1,	0,	0,	1) );		images.push( new ImageData( "rock-4"	,	940,	711.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-14.65,	493.45,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );		images.push( new ImageData( "building-plot"	,	185.5,	1338.3,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	694.25,	525.6,	0.898788452148438,	0.4383544921875,	-0.5350341796875,	1.09695434570313,	44.6,	201.45) );#end	}}