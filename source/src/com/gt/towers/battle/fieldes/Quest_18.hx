package com.gt.towers.battle.fieldes;class Quest_18 extends FieldData{	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasStart, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	733.45,	1296.15,	1,	-1,	"1,4,6",	true,	-3	) );		places.push( new PlaceData( 1,	563.85,	1532.4,	12,	0,	"0,4",	true,	-3	) );		places.push( new PlaceData( 2,	334.05,	342.5,	11,	1,	"5,3",	true,	-3	) );		places.push( new PlaceData( 3,	665.8,	518.2,	1,	-1,	"2,5,6",	true,	-3	) );		places.push( new PlaceData( 4,	277.35,	1340.75,	1,	-1,	"0,1,6",	true,	-3	) );		places.push( new PlaceData( 5,	243.35,	661.85,	1,	-1,	"2,3,6",	true,	-3	) );		places.push( new PlaceData( 6,	478.65,	991.1,	41,	-1,	"0,3,4,5",	true,	-3	) );		// create images		images.push( new ImageData( "road-v"	,	207,	716.6,	0.790695190429688,	-0.6121826171875,	0.6121826171875,	0.790695190429688) );		images.push( new ImageData( "road-h"	,	267.9,	627.25,	0.934158325195313,	-0.3568115234375,	0.3568115234375,	0.934158325195313) );		images.push( new ImageData( "road-v"	,	422.15,	1009.35,	0.790695190429688,	-0.6121826171875,	0.6121826171875,	0.790695190429688) );		images.push( new ImageData( "road-v"	,	613.05,	532.5,	0.925491333007813,	0.378662109375,	-0.41644287109375,	1.017822265625,	44.55,	201.5) );		images.push( new ImageData( "road-v"	,	390.25,	983.6,	0.925491333007813,	0.378662109375,	-0.326126098632813,	0.797088623046875,	44.5,	201.4) );		images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	704.75,	-3.6,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	9.8,	1541.25,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	572.95,	1633.5,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-0"	,	953.95,	1403.75,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "bush-4"	,	878.95,	463.35,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );		images.push( new ImageData( "chair-1"	,	715.6,	319.5,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );		images.push( new ImageData( "rock-0"	,	622.5,	725.05,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "rock-3"	,	848.1,	938.5,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "road-h"	,	374,	279.5,	0.776123046875,	0.63055419921875,	-0.63055419921875,	0.776123046875) );		images.push( new ImageData( "road-h"	,	324.2,	1288.85,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	713.55,	1223.2,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "bush-4"	,	22.25,	806.05,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );		images.push( new ImageData( "chair-0"	,	858.3,	276.6,	2.25,	0,	0,	2.25,	19.5,	14.5) );		images.push( new ImageData( "bush-7"	,	-8.65,	1060.7,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "road-v"	,	214.7,	1337.2,	0.595306396484375,	-0.803482055664063,	0.803482055664063,	0.595306396484375) );		images.push( new ImageData( "building-plot"	,	166.35,	1277.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	452.85,	1469.4,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	681.55,	220.8,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "tree-0"	,	423.6,	0,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	560.95,	-38.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	423.6,	-71.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	459.8,	116.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	499.95,	33.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	559.95,	88.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	484.6,	-71.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	158.25,	172.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	91.6,	206.2,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	827,	743.05,	2.25003051757813,	0,	0,	2.25003051757813) );		images.push( new ImageData( "bush-4"	,	683.85,	828.85,	2.25003051757813,	0,	0,	2.25003051757813) );		images.push( new ImageData( "bush-4"	,	772.3,	1412.4,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28) );		images.push( new ImageData( "road-v"	,	275.15,	316.3,	0.971237182617188,	0.23809814453125,	-0.23809814453125,	0.971237182617188) );		images.push( new ImageData( "building-plot"	,	223.05,	279.5,	1,	0,	0,	1) );		images.push( new ImageData( "bush-3"	,	812.25,	812.5,	2.25,	0,	0,	2.25,	28.5,	16.5) );		images.push( new ImageData( "bush-3"	,	901.3,	1214.6,	2.25,	0,	0,	2.25,	28.5,	16.5) );		images.push( new ImageData( "building-plot"	,	554.8,	455.2,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	484.6,	276.6,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "building-plot"	,	113.9,	598.85,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	851.8,	644.4,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "chair-0"	,	3.85,	1349.65,	2.25,	0,	0,	2.25,	19.5,	14.5) );		images.push( new ImageData( "rock-3"	,	45.4,	453.95,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "tree-0"	,	-30.4,	479.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-30.4,	551.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	631.6,	97.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	595.35,	-1.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	401,	17,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	71.4,	396.45,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	463.1,	1376.8,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "building-plot"	,	622.45,	1233.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	301.6,	71.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	240.6,	143,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	776.8,	1679.1,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "building-plot"	,	336.1,	910.2,	1.28424072265625,	0,	0,	1.28424072265625,	111,	63) );	}}