package com.gt.towers.battle.fieldes;class Quest_9 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	760,	500,	1,	-1,	"5,1",	true,	-3	) );		places.push( new PlaceData( 1,	300.55,	1420,	1,	-1,	"0,4",	true,	-3	) );		places.push( new PlaceData( 2,	760,	1420,	11,	0,	"5",	true,	-3	) );		places.push( new PlaceData( 3,	300.55,	500,	11,	1,	"4",	true,	-3	) );		places.push( new PlaceData( 4,	300.55,	1040,	1,	-1,	"1,3",	true,	-3	) );		places.push( new PlaceData( 5,	760,	880,	1,	-1,	"0,2",	true,	-3	) );#if flash		// images		images.push( new ImageData( "rock-0"	,	484.35,	394.05,	0.107711791992188,	0.740737915039063,	-0.989578247070313,	0.143905639648438,	42.55,	32.95) );		images.push( new ImageData( "road-v"	,	717.95,	929.15,	1,	0,	0,	1.0904541015625,	44.5,	201.5) );		images.push( new ImageData( "bush-0"	,	407.5,	638.2,	1,	0,	0,	1,	30,	18) );		images.push( new ImageData( "tree-0"	,	515.7,	1101.6,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );		images.push( new ImageData( "building-plot"	,	185.5,	418.85,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	258.3,	548,	1,	0,	0,	1.0904541015625,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	717.95,	513.45,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	258.3,	1006.65,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	699.7,	513.1,	0.898788452148438,	0.4383544921875,	-1.03865051269531,	2.1295166015625,	44.55,	201.45) );		images.push( new ImageData( "building-plot"	,	649,	418.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	565.6,	1166.3,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	442.5,	599.05,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "building-plot"	,	649,	1338.3,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	185.5,	956.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	649,	795.55,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	407.5,	373.9,	1,	0,	0,	1,	35.55,	28) );		images.push( new ImageData( "bush-7"	,	396.5,	428.55,	1,	0,	0,	1,	41.5,	19.05) );		images.push( new ImageData( "bush-4"	,	368.45,	380.5,	0.984878540039063,	-0.173233032226563,	0.173233032226563,	0.984878540039063,	35.6,	28) );		images.push( new ImageData( "rock-1"	,	495.7,	699.2,	1,	0,	0,	1) );		images.push( new ImageData( "rock-4"	,	495.7,	1182.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	396.5,	668,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );		images.push( new ImageData( "building-plot"	,	185.5,	1338.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	503.1,	1213.6,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );#end	}}