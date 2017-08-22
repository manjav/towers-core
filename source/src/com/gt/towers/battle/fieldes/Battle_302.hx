package com.gt.towers.battle.fieldes;class Battle_302 extends FieldData{	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasStart, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	340,	600,	41,	1,	"1,7",	true,	-3	) );		places.push( new PlaceData( 1,	540,	500,	1,	1,	"0,2,9",	true,	-3	) );		places.push( new PlaceData( 2,	740,	600,	41,	1,	"1,6",	true,	-3	) );		places.push( new PlaceData( 3,	740,	1320,	41,	0,	"4,6",	true,	-3	) );		places.push( new PlaceData( 4,	540,	1420,	1,	0,	"3,5,8",	true,	-3	) );		places.push( new PlaceData( 5,	340,	1320,	41,	0,	"4,7",	true,	-3	) );		places.push( new PlaceData( 6,	740,	960,	1,	-1,	"2,3",	true,	-3	) );		places.push( new PlaceData( 7,	340,	960,	1,	-1,	"0,5",	true,	-3	) );		places.push( new PlaceData( 8,	540,	1150,	1,	-1,	"4,9",	true,	-3	) );		places.push( new PlaceData( 9,	540,	770,	1,	-1,	"1,8",	true,	-3	) );		// create images		images.push( new ImageData( "road-v"	,	497.15,	504.85,	0.999969482421875,	0.0000152587890625,	-0.00006103515625,	2.26823425292969,	44.45,	201.45) );		images.push( new ImageData( "road-v"	,	526.3,	544.45,	0.5,	-0.866012573242188,	0.497787475585938,	0.287399291992188,	44.5,	201.45) );		images.push( new ImageData( "road-v"	,	307.4,	1336.55,	0.5,	-0.866012573242188,	0.497787475585938,	0.287399291992188,	44.5,	201.45) );		images.push( new ImageData( "road-v"	,	510.15,	464.25,	0.499984741210938,	0.866012573242188,	-0.524063110351563,	0.30255126953125,	44.55,	201.45) );		images.push( new ImageData( "road-v"	,	735.25,	1256.35,	0.499984741210938,	0.866012573242188,	-0.524063110351563,	0.30255126953125,	44.55,	201.45) );		images.push( new ImageData( "road-v"	,	703.95,	930.25,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	703.95,	633.5,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	294.35,	585.35,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	294.35,	913.05,	1,	0,	0,	1) );		images.push( new ImageData( "background-0-l"	,	0,	3.1,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "rock-0"	,	55.9,	320.35,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "bush-7"	,	481.05,	191.95,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	780.95,	1660.25,	1,	0,	0,	1) );		images.push( new ImageData( "bush-5"	,	726.6,	1700.25,	1,	0,	0,	1) );		images.push( new ImageData( "bush-3"	,	636.1,	1677.55,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	627.65,	1260.1,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429.95,	1355.9,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	212,	1260.1,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	627.8,	898.4,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	222.85,	898.4,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	624.7,	536.7,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	426.85,	437.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	225.95,	539.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	423.9,	1074.1,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	433.1,	701.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	107.25,	840.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	3.15,	785.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-14.75,	977.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	3.15,	891.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	36.45,	878.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	36.45,	984.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	3.75,	894.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	8.5,	487.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-9.4,	680.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-15.55,	1189.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-37.1,	1366.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-37.1,	1294.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-9.4,	1434,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-9.4,	1415.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-14.75,	1049.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	8.5,	593.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	62.45,	886.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	62.45,	868.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	101.1,	950.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	37.05,	987.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	111.6,	1043.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	79.55,	1214.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	79.55,	1142.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	107.25,	1282.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	107.25,	1263.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	3.15,	748.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	67.2,	479.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	67.2,	461.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	105.85,	544.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	41.8,	581.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	105.85,	630.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	23.9,	773.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	102.8,	758.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	17.75,	1282.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-3.8,	1388.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	18.55,	1142.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	41.8,	687.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	51.6,	1362.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-34.6,	295.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	166.4,	191.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-34.6,	401.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	62.75,	351.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-1.3,	388.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	62.75,	438.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	233.6,	330.55,	1,	0,	0,	1) );		images.push( new ImageData( "chair-0"	,	932.75,	852.65,	1.907470703125,	0,	0,	1.907470703125,	19.5,	14.45) );		images.push( new ImageData( "hut-0"	,	783.55,	630.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-34.6,	544.25,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	980.65,	1116.1,	1,	0,	0,	1) );		images.push( new ImageData( "bush-5"	,	926.3,	1156.1,	1,	0,	0,	1) );		images.push( new ImageData( "bush-3"	,	835.8,	1133.4,	1,	0,	0,	1) );	}}