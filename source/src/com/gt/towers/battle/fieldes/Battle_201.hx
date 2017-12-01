package com.gt.towers.battle.fieldes;class Battle_201 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	340,	320,	11,	1,	"2,1",	true,	-3	) );		places.push( new PlaceData( 1,	770,	600,	1,	-1,	"0,2,3",	true,	-3	) );		places.push( new PlaceData( 2,	300,	640,	1,	-1,	"0,1,3",	true,	-3	) );		places.push( new PlaceData( 3,	540,	960,	42,	-1,	"1,2,4,5",	true,	-3	) );		places.push( new PlaceData( 4,	780.7,	1271.45,	1,	-1,	"3,6,5",	true,	-3	) );		places.push( new PlaceData( 5,	310,	1320,	1,	-1,	"3,4,6",	true,	-3	) );		places.push( new PlaceData( 6,	740,	1600,	11,	0,	"4,5",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-v"	,	701.7,	589.8,	0.865997314453125,	0.5,	-0.542617797851563,	0.93988037109375,	40.15,	201.6) );		images.push( new ImageData( "road-v"	,	479.25,	938.95,	0.865997314453125,	0.5,	-0.542617797851563,	0.93988037109375,	40.15,	201.6) );		images.push( new ImageData( "bush-0"	,	70.5,	430.1,	1.3095703125,	0,	0,	1.3095703125,	30,	17.95) );		images.push( new ImageData( "bush-7"	,	810.75,	428.75,	2.17710876464844,	0,	0,	2.17710876464844,	41.5,	19) );		images.push( new ImageData( "chair-1"	,	469.3,	1139.7,	1.54898071289063,	0,	0,	1.54898071289063,	45,	25) );		images.push( new ImageData( "rock-0"	,	324.75,	1502.55,	2.41012573242188,	0,	0,	2.41012573242188,	39.5,	17.5) );		images.push( new ImageData( "road-h"	,	396.7,	315.95,	0.8817138671875,	0.557357788085938,	-0.534286499023438,	0.845321655273438,	208.05,	48.5) );		images.push( new ImageData( "road-h"	,	361.3,	594.4,	0.83306884765625,	-0.05389404296875,	0.0645294189453125,	0.997879028320313,	207.9,	48.4) );		images.push( new ImageData( "road-v"	,	287.9,	348.35,	0.99237060546875,	0.123291015625,	-0.0737762451171875,	0.5938720703125,	39.95,	201.6) );		images.push( new ImageData( "road-v"	,	281.15,	689.45,	0.793655395507813,	-0.60833740234375,	0.540908813476563,	0.705718994140625,	39.95,	201.4) );		images.push( new ImageData( "bush-2"	,	409.1,	474.15,	1.94338989257813,	0,	0,	1.94338989257813,	31,	26.5) );		images.push( new ImageData( "road-v"	,	523.6,	1007.7,	0.806716918945313,	-0.590911865234375,	0.454971313476563,	0.621109008789063,	40.2,	201.5) );		images.push( new ImageData( "road-h"	,	353.35,	1274.7,	0.890670776367188,	-0.07098388671875,	0.079437255859375,	0.996780395507813,	208.35,	48.35) );		images.push( new ImageData( "road-v"	,	739.35,	1298.65,	0.993881225585938,	0.110366821289063,	-0.0697479248046875,	0.628250122070313,	40.1,	201.55) );		images.push( new ImageData( "road-h"	,	370.5,	1311.25,	0.827072143554688,	0.537506103515625,	-0.544921875,	0.838485717773438,	207.95,	48.35) );		images.push( new ImageData( "tree-0"	,	84.4,	1464.05,	1.38604736328125,	0,	0,	1.38604736328125,	61,	71.5) );		images.push( new ImageData( "building-plot"	,	632.6,	1514.65,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	205.6,	1245.25,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	670.45,	1187.45,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	424.65,	887.05,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	183.1,	554.65,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	652.7,	507.25,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	235.5,	234.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	484.5,	638.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	791.45,	933.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	182,	698.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	891.7,	769.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	212,	1111.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	376.2,	1165.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	810.75,	1045.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	42.45,	1310.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	523.6,	477.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	593.5,	222.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	718.8,	203.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	612,	1311.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	172,	999.05,	1,	0,	0,	1) );#end	}}