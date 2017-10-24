package com.gt.towers.battle.fieldes;class Quest_10 extends FieldData{	public function new(index:Int, name:String, introNum:String = "", startNum:String = "", endNum:String = "", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// create places		places.push( new PlaceData( 0,	760,	500,	1,	-1,	"5,3,1",	true,	-3	) );		places.push( new PlaceData( 1,	300.55,	1395.85,	1,	-1,	"0,4,2",	true,	-3	) );		places.push( new PlaceData( 2,	760,	1420,	1,	-1,	"1,5",	true,	-3	) );		places.push( new PlaceData( 3,	320,	500,	1,	-1,	"0,4",	true,	-3	) );		places.push( new PlaceData( 4,	320,	1040,	1,	1,	"1,3",	true,	-3	) );		places.push( new PlaceData( 5,	760,	880,	1,	0,	"0,2",	true,	-3	) );		// create images		images.push( new ImageData( "road-h"	,	353.3,	465.75,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	721.75,	1008.5,	1,	0,	0,	1) );		images.push( new ImageData( "background-0-l"	,	0,	3.1,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1548,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "rock-0"	,	877.25,	1100.75,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "hole-1"	,	877.25,	1185.75,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28.5) );		images.push( new ImageData( "hole-2"	,	407.5,	658.9,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );		images.push( new ImageData( "rock-3"	,	472.1,	400.1,	2.24998474121094,	0,	0,	2.24998474121094,	27,	15) );		images.push( new ImageData( "bush-0"	,	472.1,	124.45,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "tree-0"	,	515.7,	1101.6,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );		images.push( new ImageData( "building-plot"	,	199.95,	447.05,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	655.25,	1588.6,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "rock-0"	,	378.7,	1577.85,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "chair-1"	,	900.2,	1411.5,	2.25,	0,	0,	2.25,	45,	25) );		images.push( new ImageData( "rock-3"	,	637.9,	974.75,	2.24998474121094,	0,	0,	2.24998474121094,	27,	15) );		images.push( new ImageData( "road-v"	,	264.3,	675.25,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	719.35,	513.45,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	262.7,	1006.65,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	719.35,	876.15,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	431.75,	1048.25,	0.866012573242188,	0.5,	-0.5,	0.866012573242188) );		images.push( new ImageData( "road-v"	,	621.05,	725.8,	0.866012573242188,	0.5,	-0.5,	0.866012573242188) );		images.push( new ImageData( "road-v"	,	755.55,	486.75,	0.866012573242188,	0.5,	-0.5,	0.866012573242188) );		images.push( new ImageData( "road-h"	,	298.2,	1379.85,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	668.85,	670.05,	0.353286743164063,	-0.611923217773438,	0.641769409179688,	0.370529174804688,	110.7,	63) );		images.push( new ImageData( "building-plot"	,	651,	437,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	548.7,	1144.2,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	487.7,	1215.7,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	510,	1445.6,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );		images.push( new ImageData( "rock-3"	,	44.5,	1233.3,	1.5,	0,	0,	1.5,	27,	15) );		images.push( new ImageData( "building-plot"	,	646,	1361.4,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	264.3,	544.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	190,	977.65,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	649,	817,	1,	0,	0,	1) );		images.push( new ImageData( "rock-4"	,	202.4,	1539.35,	1,	0,	0,	1,	64.5,	23) );		images.push( new ImageData( "bush-0"	,	24.7,	835.65,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-7"	,	107.35,	636.45,	1.125,	0,	0,	1.125,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	-1.3,	655.05,	1.125,	0,	0,	1.125,	35.55,	28) );		images.push( new ImageData( "bush-7"	,	587.2,	337.35,	1.125,	0,	0,	1.125,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	365.5,	377.05,	1.125,	0,	0,	1.125,	35.55,	28) );		images.push( new ImageData( "rock-1"	,	92.2,	711.05,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	8.45,	772.7,	1,	0,	0,	1) );		images.push( new ImageData( "rock-4"	,	940,	711.05,	1,	0,	0,	1) );		images.push( new ImageData( "hut-0"	,	853.9,	178.65,	1.29998779296875,	0,	0,	1.29998779296875,	174,	105) );		images.push( new ImageData( "tree-0"	,	-14.65,	493.45,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );		images.push( new ImageData( "building-plot"	,	289.05,	1186.75,	0.4263916015625,	0.114242553710938,	-0.566986083984375,	2.11614990234375,	110.8,	63.05) );		images.push( new ImageData( "building-plot"	,	189.55,	1332.85,	1,	0,	0,	1) );	}}