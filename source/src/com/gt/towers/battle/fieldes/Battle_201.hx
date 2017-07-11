package com.gt.towers.battle.fieldes;class Battle_201 extends FieldData{	public function new(index:Int, name:String, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	300,	500,	1,	-1,	"5,4,3,1,2",	true,	-3	) );		places.push( new PlaceData( 1,	500,	600,	1,	1,	"0,5,4,3,2",	true,	-3	) );		places.push( new PlaceData( 2,	700,	500,	1,	-1,	"0,1,5,4,3",	true,	-3	) );		places.push( new PlaceData( 3,	780,	1420,	1,	-1,	"0,1,2,5,4",	true,	-3	) );		places.push( new PlaceData( 4,	580,	1320,	1,	0,	"0,1,2,3,5",	true,	-3	) );		places.push( new PlaceData( 5,	380,	1420,	1,	-1,	"0,1,2,3,4",	true,	-3	) );		// create images		images.push( new ImageData( "building-plot"	,	113.15,	298.55,	3.673095703125,	0,	0,	3.87335205078125,	111,	63) );		images.push( new ImageData( "background-0-l"	,	0,	3.1,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "rock-0"	,	55.9,	320.35,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "hole-2"	,	761.95,	315.15,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );		images.push( new ImageData( "bush-7"	,	481.05,	191.95,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "tree-0"	,	892.55,	1053.9,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "building-plot"	,	156.4,	1146.85,	3.673095703125,	0,	0,	3.87335205078125,	111,	63) );		images.push( new ImageData( "rock-5"	,	80.55,	770.7,	1,	0,	0,	1) );		images.push( new ImageData( "rock-5"	,	887.4,	922.15,	1,	0,	0,	1) );		images.push( new ImageData( "rock-6-"	,	165.3,	972,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	810.75,	770.7,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "rock-0"	,	110.2,	1126.2,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "bush-3"	,	644.7,	770.7,	1,	0,	0,	1) );		images.push( new ImageData( "chair-1"	,	925.65,	1249,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	780.95,	1660.25,	1,	0,	0,	1) );		images.push( new ImageData( "bush-5"	,	726.6,	1700.25,	1,	0,	0,	1) );		images.push( new ImageData( "bush-3"	,	636.1,	1677.55,	1,	0,	0,	1) );	}}