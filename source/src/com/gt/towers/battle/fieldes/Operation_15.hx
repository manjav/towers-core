package com.gt.towers.battle.fieldes;class Operation_15 extends FieldData{	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")	{		super(index, name, times, introNum, startNum, endNum);		// places		places.push( new PlaceData( 0,	800,	644.2,	1,	-1,	"4,2,1",	true,	-3	) );		places.push( new PlaceData( 1,	540,	437.6,	12,	1,	"0,2",	true,	-3	) );		places.push( new PlaceData( 2,	280,	644.2,	1,	-1,	"0,1,4",	true,	-3	) );		places.push( new PlaceData( 3,	771.85,	1430.25,	1,	0,	"5,4",	true,	-3	) );		places.push( new PlaceData( 4,	540,	1194.4,	1,	-1,	"0,2,3,5",	true,	-3	) );		places.push( new PlaceData( 5,	309.55,	1430.25,	1,	-1,	"3,4",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-h"	,	523.3,	381.95,	0.785354614257813,	0.616439819335938,	-0.616439819335938,	0.785354614257813,	207.5,	39.45) );		images.push( new ImageData( "road-h"	,	230.6,	638.25,	0.785507202148438,	-0.618850708007813,	0.618850708007813,	0.785507202148438) );		images.push( new ImageData( "road-v"	,	537.3,	1132.65,	0.713088989257813,	0.7010498046875,	-0.7010498046875,	0.713088989257813) );		images.push( new ImageData( "road-v"	,	233.65,	657.35,	0.904937744140625,	-0.425506591796875,	0.653610229492188,	1.38998413085938,	44.55,	201.6) );		images.push( new ImageData( "road-h"	,	362.6,	1395.4,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	324.75,	605.55,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	765.25,	619.65,	0.904556274414063,	0.423324584960938,	-0.650253295898438,	1.389404296875,	44.55,	201.6) );		images.push( new ImageData( "road-v"	,	479.35,	1195.4,	0.710891723632813,	-0.700927734375,	0.700927734375,	0.710891723632813,	44.4,	201.5) );		images.push( new ImageData( "bush-0"	,	997.95,	1430.5,	1,	0,	0,	1,	30,	18) );		images.push( new ImageData( "chair-0"	,	322.6,	388,	1,	0,	0,	1,	19.5,	14.5) );		images.push( new ImageData( "building-plot"	,	423,	356.6,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	735.3,	253.95,	1,	0,	0,	1,	30,	18) );		images.push( new ImageData( "tree-0"	,	375.6,	0,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	594.5,	-40.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	266.6,	-38.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	451.95,	54.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	593.1,	73.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	484.6,	-71.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	155.75,	262,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	5.5,	233.1,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	955.55,	566.7,	1,	0,	0,	1,	35.5,	28) );		images.push( new ImageData( "bush-7"	,	504,	294.1,	1,	0,	0,	1,	41.45,	19) );		images.push( new ImageData( "tree-0"	,	887.4,	-71.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	712.3,	4.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	332.35,	166.6,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	593.1,	1598.7,	1,	0,	0,	1,	39.5,	17.5) );		images.push( new ImageData( "tree-0"	,	301.6,	71.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	215.75,	141.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	65.75,	712.35,	1,	0,	0,	1) );		images.push( new ImageData( "bush-6"	,	955.55,	978.45,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	196.65,	1346.25,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	658.85,	1346.9,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	426.4,	1111.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	36.25,	1076.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	138.95,	1471.25,	1,	0,	0,	1) );		images.push( new ImageData( "bush-3"	,	840.75,	1074.75,	1,	0,	0,	1) );		images.push( new ImageData( "bush-2"	,	534.45,	1330.25,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	169,	561.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	76.55,	835.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	15.55,	906.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	137.55,	906.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	76.55,	978.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	129.9,	1055.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	4.75,	783.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	0,	663.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	0,	490.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-24.75,	1004.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	58.7,	345.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	485.5,	723.45,	1,	0,	0,	1) );		images.push( new ImageData( "rock-4"	,	755.45,	1158,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	213.6,	1004.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	167.7,	33.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	58.85,	129,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	13,	-3.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	464.1,	150,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	687,	560.65,	1,	0,	0,	1) );#end	}}