package com.gt.towers.battle.fieldes;class Battle_301 extends FieldData{	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasStart, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	340,	1210,	31,	-1,	"1,6,5",	true,	-3	) );		places.push( new PlaceData( 1,	740,	1395,	1,	-1,	"2,0,6",	true,	-3	) );		places.push( new PlaceData( 2,	340,	1520,	11,	0,	"1",	true,	-3	) );		places.push( new PlaceData( 3,	340,	525,	1,	-1,	"4,7,5",	true,	-3	) );		places.push( new PlaceData( 4,	740,	710,	31,	-1,	"5,6,3",	true,	-3	) );		places.push( new PlaceData( 5,	340,	835,	42,	-1,	"6,0,4,3",	true,	-3	) );		places.push( new PlaceData( 6,	740,	1085,	42,	-1,	"0,1,5,4",	true,	-3	) );		places.push( new PlaceData( 7,	740,	400,	11,	1,	"3",	true,	-3	) );		// create images		images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	0,	1586.9,	1.70738220214844,	0,	0,	1.70738220214844,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-0"	,	130.05,	410.05,	2.2449951171875,	0,	0,	2.2449951171875,	30,	18) );		images.push( new ImageData( "bush-7"	,	810.75,	428.75,	2.17710876464844,	0,	0,	2.17710876464844,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	712.1,	769.05,	2.10711669921875,	0,	0,	2.10711669921875,	35.55,	28) );		images.push( new ImageData( "chair-1"	,	395.45,	1103.7,	1.54898071289063,	0,	0,	1.54898071289063,	45,	25) );		images.push( new ImageData( "rock-0"	,	324.75,	1502.55,	2.41012573242188,	0,	0,	2.41012573242188,	39.5,	17.5) );		images.push( new ImageData( "rock-3"	,	456.5,	747.4,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "road-h"	,	396.7,	315.95,	0.8817138671875,	0.557357788085938,	-0.534286499023438,	0.845321655273438,	208.05,	48.5) );		images.push( new ImageData( "road-h"	,	361.3,	594.4,	0.83306884765625,	-0.05389404296875,	0.0645294189453125,	0.997879028320313,	207.9,	48.4) );		images.push( new ImageData( "road-v"	,	287.9,	348.35,	0.99237060546875,	0.123291015625,	-0.0737762451171875,	0.5938720703125,	39.95,	201.6) );		images.push( new ImageData( "road-v"	,	281.15,	689.45,	0.793655395507813,	-0.60833740234375,	0.540908813476563,	0.705718994140625,	39.95,	201.4) );		images.push( new ImageData( "bush-2"	,	409.1,	474.15,	1.94338989257813,	0,	0,	1.94338989257813,	31,	26.5) );		images.push( new ImageData( "hole-0"	,	845.35,	1426.85,	1.55789184570313,	0,	0,	1.55789184570313,	38,	21.5) );		images.push( new ImageData( "road-v"	,	523.6,	1007.7,	0.806716918945313,	-0.590911865234375,	0.454971313476563,	0.621109008789063,	40.2,	201.5) );		images.push( new ImageData( "road-h"	,	353.35,	1274.7,	0.890670776367188,	-0.07098388671875,	0.079437255859375,	0.996780395507813,	208.35,	48.35) );		images.push( new ImageData( "road-v"	,	739.35,	1298.65,	0.993881225585938,	0.110366821289063,	-0.0697479248046875,	0.628250122070313,	40.1,	201.55) );		images.push( new ImageData( "road-h"	,	370.5,	1311.25,	0.827072143554688,	0.537506103515625,	-0.544921875,	0.838485717773438,	207.95,	48.35) );		images.push( new ImageData( "tree-0"	,	609.65,	1300.5,	1.38604736328125,	0,	0,	1.38604736328125,	61,	71.5) );		images.push( new ImageData( "hut-0"	,	-235.35,	987.45,	1.54179382324219,	0,	0,	1.54179382324219,	174,	105) );		images.push( new ImageData( "building-plot"	,	623.35,	1532.6,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	201,	1256.05,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	669.7,	1208.45,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	424.65,	887.05,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	179.85,	577.15,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	657,	532.25,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	233,	253.8,	1,	0,	0,	1) );	}}