package com.gt.towers.battle.fieldes;class Battle_210 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	340,	600,	1,	-1,	"1,7",	true,	-3	) );		places.push( new PlaceData( 1,	540,	500,	11,	1,	"0,2,9",	true,	-3	) );		places.push( new PlaceData( 2,	740,	600,	1,	-1,	"1,6",	true,	-3	) );		places.push( new PlaceData( 3,	740,	1320,	1,	-1,	"4,6",	true,	-3	) );		places.push( new PlaceData( 4,	540,	1420,	11,	0,	"3,5,8",	true,	-3	) );		places.push( new PlaceData( 5,	340,	1320,	1,	-1,	"4,7",	true,	-3	) );		places.push( new PlaceData( 6,	740,	960,	1,	-1,	"2,3,7",	true,	-3	) );		places.push( new PlaceData( 7,	340,	960,	1,	-1,	"0,5,6",	true,	-3	) );		places.push( new PlaceData( 8,	540,	1150,	42,	-1,	"4,9",	true,	-3	) );		places.push( new PlaceData( 9,	540,	770,	42,	-1,	"1,8",	true,	-3	) );#if flash		// images		images.push( new ImageData( "building-plot"	,	492.55,	910.65,	0.38153076171875,	0,	0,	0.76666259765625,	111,	63) );		images.push( new ImageData( "road-v"	,	497.15,	504.85,	0.999969482421875,	0.0000152587890625,	-0.00006103515625,	2.26823425292969,	44.45,	201.45) );		images.push( new ImageData( "road-v"	,	526.3,	544.45,	0.5,	-0.866012573242188,	0.497787475585938,	0.287399291992188,	44.5,	201.45) );		images.push( new ImageData( "road-v"	,	307.4,	1336.55,	0.5,	-0.866012573242188,	0.497787475585938,	0.287399291992188,	44.5,	201.45) );		images.push( new ImageData( "road-v"	,	510.15,	464.25,	0.499984741210938,	0.866012573242188,	-0.524063110351563,	0.30255126953125,	44.55,	201.45) );		images.push( new ImageData( "road-v"	,	735.25,	1256.35,	0.499984741210938,	0.866012573242188,	-0.524063110351563,	0.30255126953125,	44.55,	201.45) );		images.push( new ImageData( "road-v"	,	703.95,	930.25,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	703.95,	633.5,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	294.35,	585.35,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	294.35,	913.05,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	481.05,	191.95,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	780.95,	1660.25,	1,	0,	0,	1) );		images.push( new ImageData( "bush-5"	,	726.6,	1700.25,	1,	0,	0,	1) );		images.push( new ImageData( "bush-3"	,	636.1,	1677.55,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	627.65,	1260.1,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429.95,	1355.9,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	212,	1260.1,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	627.8,	898.4,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	222.85,	898.4,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	624.7,	536.7,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	426.85,	437.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	225.95,	539.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	423.9,	1074.1,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	433.1,	701.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-34.6,	295.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	166.4,	191.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	233.6,	330.55,	1,	0,	0,	1) );		images.push( new ImageData( "chair-0"	,	899,	371.55,	1.907470703125,	0,	0,	1.907470703125,	19.5,	14.45) );		images.push( new ImageData( "hut-0"	,	749.8,	149.05,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	980.65,	1116.1,	1,	0,	0,	1) );		images.push( new ImageData( "bush-5"	,	926.3,	1156.1,	1,	0,	0,	1) );		images.push( new ImageData( "bush-3"	,	835.8,	1133.4,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	343.05,	909.25,	1.0430908203125,	0.0015869140625,	-0.00146484375,	1,	5.25,	43.35) );		images.push( new ImageData( "tree-0"	,	662.4,	303.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	887.4,	660.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	64.05,	1054.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	294.35,	1480.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	27.95,	1144.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	450.55,	1521.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	899,	1221.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	89.15,	867.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	27.95,	691.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	926.3,	876.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	916.8,	521.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	388.15,	295.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	810.75,	1455.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	103,	551.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	58.85,	1284.05,	1,	0,	0,	1) );#end	}}