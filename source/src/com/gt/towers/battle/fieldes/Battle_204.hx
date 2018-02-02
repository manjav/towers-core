package com.gt.towers.battle.fieldes;class Battle_204 extends FieldData{	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")	{		super(index, name, times, introNum, startNum, endNum);		// places		places.push( new PlaceData( 0,	340,	320,	11,	1,	"2",	true,	-3	) );		places.push( new PlaceData( 1,	770,	600,	1,	-1,	"4,3",	true,	-3	) );		places.push( new PlaceData( 2,	300,	640,	1,	-1,	"0,5,3",	true,	-3	) );		places.push( new PlaceData( 3,	540,	960,	42,	-1,	"1,2,5,4",	true,	-3	) );		places.push( new PlaceData( 4,	780.7,	1271.45,	1,	-1,	"1,3,6",	true,	-3	) );		places.push( new PlaceData( 5,	310,	1320,	1,	-1,	"2,3",	true,	-3	) );		places.push( new PlaceData( 6,	740,	1600,	11,	0,	"4",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-v"	,	701.7,	589.8,	0.865997314453125,	0.5,	-0.542617797851563,	0.93988037109375,	40.15,	201.6) );		images.push( new ImageData( "road-v"	,	479.25,	938.95,	0.865997314453125,	0.5,	-0.542617797851563,	0.93988037109375,	40.15,	201.6) );		images.push( new ImageData( "bush-0"	,	477.4,	441.9,	2.2449951171875,	0,	0,	2.2449951171875,	30,	18) );		images.push( new ImageData( "bush-7"	,	810.75,	428.75,	2.17710876464844,	0,	0,	2.17710876464844,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	573.05,	197.15,	2.10711669921875,	0,	0,	2.10711669921875,	35.55,	28) );		images.push( new ImageData( "chair-1"	,	433.65,	1131,	1.54898071289063,	0,	0,	1.54898071289063,	45,	25) );		images.push( new ImageData( "rock-0"	,	324.75,	1502.55,	2.41012573242188,	0,	0,	2.41012573242188,	39.5,	17.5) );		images.push( new ImageData( "rock-3"	,	456.5,	747.4,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "road-v"	,	287.9,	348.35,	0.99237060546875,	0.123291015625,	-0.0737762451171875,	0.5938720703125,	39.95,	201.6) );		images.push( new ImageData( "road-v"	,	281.15,	689.45,	0.793655395507813,	-0.60833740234375,	0.540908813476563,	0.705718994140625,	39.95,	201.4) );		images.push( new ImageData( "hole-0"	,	845.35,	1426.85,	1.55789184570313,	0,	0,	1.55789184570313,	38,	21.5) );		images.push( new ImageData( "road-v"	,	523.6,	1007.7,	0.806716918945313,	-0.590911865234375,	0.454971313476563,	0.621109008789063,	40.2,	201.5) );		images.push( new ImageData( "road-v"	,	739.35,	1298.65,	0.993881225585938,	0.110366821289063,	-0.0697479248046875,	0.628250122070313,	40.1,	201.55) );		images.push( new ImageData( "hut-0"	,	-1.3,	919.1,	1.54179382324219,	0,	0,	1.54179382324219,	174,	105) );		images.push( new ImageData( "building-plot"	,	623.35,	1532.6,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	201,	1256.05,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	669.7,	1208.45,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	424.65,	887.05,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	179.85,	577.15,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	657,	532.25,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	233,	253.8,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	801.75,	587.35,	0.035369873046875,	1.65325927734375,	-0.999771118164063,	0.021453857421875,	7.15,	42.15) );		images.push( new ImageData( "road-h"	,	339.9,	639.6,	0.056488037109375,	1.64370727539063,	-0.999404907226563,	0.0344085693359375,	409.3,	37.2) );		images.push( new ImageData( "tree-0"	,	103,	377.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	92,	1119.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	900.45,	288.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	887.4,	1031.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	933.7,	464.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	900.45,	775.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	455,	1352.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	946.05,	1119.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	41.1,	698.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	931.95,	919.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	791.45,	288.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	49.3,	1502.55,	1.12567138671875,	0,	0,	1,	54.5,	56) );		images.push( new ImageData( "tree-0"	,	133.95,	1411.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	49.3,	465.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	24.95,	1374.45,	1,	0,	0,	1) );#end	}}