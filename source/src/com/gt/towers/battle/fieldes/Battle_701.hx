package com.gt.towers.battle.fieldes;class Battle_701 extends FieldData{	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasStart, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	862,	431,	1,	-1,	"5",	true,	-3	) );		places.push( new PlaceData( 1,	194,	440.9,	1,	-1,	"5",	true,	-3	) );		places.push( new PlaceData( 2,	209.45,	960,	1,	-1,	"10,3",	true,	-3	) );		places.push( new PlaceData( 3,	540,	780,	1,	-1,	"2,4,6",	true,	-3	) );		places.push( new PlaceData( 4,	870.55,	960,	1,	-1,	"3,10",	true,	-3	) );		places.push( new PlaceData( 5,	540,	270,	12,	1,	"6,1,0",	true,	-3	) );		places.push( new PlaceData( 6,	540,	526,	1,	-1,	"3,5",	true,	-3	) );		places.push( new PlaceData( 7,	540,	1650,	12,	0,	"8,11,9",	true,	-3	) );		places.push( new PlaceData( 8,	218,	1489,	1,	-1,	"7",	true,	-3	) );		places.push( new PlaceData( 9,	540,	1394,	1,	-1,	"7,10",	true,	-3	) );		places.push( new PlaceData( 10,	540,	1140,	1,	-1,	"9,2,4",	true,	-3	) );		places.push( new PlaceData( 11,	886,	1479.1,	1,	-1,	"7",	true,	-3	) );		// create images		images.push( new ImageData( "road-v"	,	560.65,	746.9,	0.40673828125,	0.913543701171875,	-0.913543701171875,	0.40673828125,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	525.8,	823.45,	0.469467163085938,	-0.882965087890625,	0.741668701171875,	0.39434814453125,	44.5,	201.45) );		images.push( new ImageData( "road-v"	,	503.75,	234.8,	1,	0,	0,	1.41998291015625,	44.5,	201.5) );		images.push( new ImageData( "road-h"	,	551.85,	220.8,	0.741668701171875,	0.39434814453125,	-0.469467163085938,	0.882965087890625,	207.65,	39.5) );		images.push( new ImageData( "road-h"	,	231.7,	378.65,	0.815673828125,	-0.380355834960938,	0.422607421875,	0.906295776367188,	207.45,	39.5) );		images.push( new ImageData( "background-0-l"	,	0,	3.1,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "road-h"	,	264.65,	1458.7,	0.71002197265625,	0.3463134765625,	-0.4383544921875,	0.898773193359375,	207.45,	39.45) );		images.push( new ImageData( "road-h"	,	579.95,	1081.3,	0.7305908203125,	-0.372268676757813,	0.453994750976563,	0.891006469726563,	207.5,	39.5) );		images.push( new ImageData( "road-h"	,	230.05,	936.4,	0.703857421875,	0.358673095703125,	-0.453994750976563,	0.8909912109375,	207.45,	39.55) );		images.push( new ImageData( "road-v"	,	502.65,	1101.15,	1,	0,	0,	1.41998291015625,	44.5,	201.5) );		images.push( new ImageData( "road-h"	,	558.95,	1618.75,	0.724014282226563,	-0.38494873046875,	0.469467163085938,	0.882949829101563,	207.5,	39.45) );		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "building-plot"	,	425.9,	220.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429.65,	467.95,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	751.7,	378.05,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	81.45,	381.85,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	451.75,	1587,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	425.9,	1342.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	758,	1433.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	102.75,	1433.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429.65,	1081.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	451.75,	729.7,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	751.7,	898.5,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	95.2,	898.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	392.75,	315.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	603.6,	315.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	392.75,	585.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	603.6,	585.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	400.15,	1387.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	620.8,	1387.55,	1,	0,	0,	1) );		images.push( new ImageData( "hole-2"	,	512.35,	903.6,	1,	0,	0,	1) );	}}