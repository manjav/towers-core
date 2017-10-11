package com.gt.towers.battle.fieldes;class Quest_25 extends FieldData{	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasStart, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	340,	600,	1,	-1,	"7,9,1",	true,	-3	) );		places.push( new PlaceData( 1,	540,	500,	11,	1,	"0,2",	true,	-3	) );		places.push( new PlaceData( 2,	740,	600,	1,	-1,	"1,9,6",	true,	-3	) );		places.push( new PlaceData( 3,	740,	1320,	31,	-1,	"4,8,6",	true,	-3	) );		places.push( new PlaceData( 4,	540,	1420,	11,	0,	"3,5",	true,	-3	) );		places.push( new PlaceData( 5,	340,	1320,	31,	-1,	"4,8,7",	true,	-3	) );		places.push( new PlaceData( 6,	740,	960,	1,	-1,	"2,3,8,9",	true,	-3	) );		places.push( new PlaceData( 7,	340,	960,	1,	-1,	"0,5,8,9",	true,	-3	) );		places.push( new PlaceData( 8,	540,	1150,	42,	-1,	"3,5,6,7",	true,	-3	) );		places.push( new PlaceData( 9,	540,	770,	42,	-1,	"0,2,6,7",	true,	-3	) );		// create images		images.push( new ImageData( "road-v"	,	526.3,	544.45,	0.5,	-0.866012573242188,	0.497787475585938,	0.287399291992188,	44.5,	201.45) );		images.push( new ImageData( "road-v"	,	307.4,	1336.55,	0.5,	-0.866012573242188,	0.497787475585938,	0.287399291992188,	44.5,	201.45) );		images.push( new ImageData( "road-v"	,	510.15,	464.25,	0.499984741210938,	0.866012573242188,	-0.524063110351563,	0.30255126953125,	44.55,	201.45) );		images.push( new ImageData( "road-v"	,	735.25,	1256.35,	0.499984741210938,	0.866012573242188,	-0.524063110351563,	0.30255126953125,	44.55,	201.45) );		images.push( new ImageData( "road-v"	,	703.95,	930.25,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	703.95,	633.5,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	294.35,	585.35,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	294.35,	913.05,	1,	0,	0,	1) );		images.push( new ImageData( "background-0-l"	,	0,	3.1,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "rock-0"	,	55.9,	320.35,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "hole-2"	,	761.95,	315.15,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );		images.push( new ImageData( "bush-7"	,	481.05,	191.95,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	780.95,	1660.25,	1,	0,	0,	1) );		images.push( new ImageData( "bush-5"	,	726.6,	1700.25,	1,	0,	0,	1) );		images.push( new ImageData( "bush-3"	,	636.1,	1677.55,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	627.65,	1260.1,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429.95,	1355.9,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	212,	1260.1,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	627.8,	898.4,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	222.85,	898.4,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	624.7,	536.7,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	426.85,	437.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	225.95,	539.8,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	354.1,	1017.5,	0.707107543945313,	-0.70709228515625,	0.77447509765625,	0.774490356445313,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	666.2,	954.6,	0.70709228515625,	0.707107543945313,	-0.774490356445313,	0.77447509765625,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	666.2,	584.75,	0.70709228515625,	0.707107543945313,	-0.774490356445313,	0.77447509765625,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	355.7,	628.55,	0.707107543945313,	-0.70709228515625,	0.77447509765625,	0.774490356445313,	44.5,	201.5) );		images.push( new ImageData( "building-plot"	,	423.9,	1074.1,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	433.1,	701.2,	1,	0,	0,	1) );	}}