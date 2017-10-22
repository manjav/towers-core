package com.gt.towers.battle.fieldes;class Quest_20 extends FieldData{	public function new(index:Int, name:String, introNum:Int=0, startNum:Int=0, endNum:Int=0, times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// create places		places.push( new PlaceData( 0,	733.45,	1194.15,	1,	-1,	"1,4,6",	true,	-3	) );		places.push( new PlaceData( 1,	563.85,	1443,	1,	0,	"0,4",	true,	-3	) );		places.push( new PlaceData( 2,	334.05,	342.5,	13,	1,	"3,5",	true,	-3	) );		places.push( new PlaceData( 3,	665.8,	518.2,	1,	-1,	"2,5",	true,	-3	) );		places.push( new PlaceData( 4,	277.35,	1238.75,	1,	-1,	"0,1",	true,	-3	) );		places.push( new PlaceData( 5,	243.35,	661.85,	1,	-1,	"2,3,6",	true,	-3	) );		places.push( new PlaceData( 6,	499.35,	926.85,	43,	-1,	"0,5",	true,	-3	) );		// create images		images.push( new ImageData( "road-v"	,	216,	692.55,	0.74615478515625,	-0.665740966796875,	1.12432861328125,	1.2601318359375,	44.5,	201.5) );		images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	704.75,	-3.6,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-8.9,	1541.25,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	572.95,	1649.1,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-0"	,	931.05,	1403.75,	1.41864013671875,	0,	0,	1.41864013671875,	30.05,	17.95) );		images.push( new ImageData( "bush-4"	,	874.1,	551.1,	1.59835815429688,	0,	0,	1.59835815429688,	35.55,	28) );		images.push( new ImageData( "chair-1"	,	715.6,	319.5,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );		images.push( new ImageData( "rock-0"	,	622.5,	725.05,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "rock-3"	,	848.1,	938.5,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "road-h"	,	351.5,	301.55,	0.861160278320313,	0.50830078125,	-0.50830078125,	0.861160278320313) );		images.push( new ImageData( "road-h"	,	324.2,	1186.85,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	713.55,	1121.2,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "bush-4"	,	12.3,	915.45,	1.52656555175781,	0,	0,	1.52656555175781,	35.55,	27.95) );		images.push( new ImageData( "chair-0"	,	858.3,	276.6,	2.25,	0,	0,	2.25,	19.5,	14.5) );		images.push( new ImageData( "bush-7"	,	-8.65,	1088.2,	1.52653503417969,	0,	0,	1.52653503417969,	41.45,	19) );		images.push( new ImageData( "road-v"	,	214.7,	1235.2,	0.595306396484375,	-0.803482055664063,	0.803482055664063,	0.595306396484375) );		images.push( new ImageData( "building-plot"	,	166.35,	1175.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	452.85,	1380,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	644.2,	247.6,	1.82331848144531,	0,	0,	1.82331848144531,	30,	18) );		images.push( new ImageData( "tree-0"	,	423.6,	0,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	560.95,	-38.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	423.6,	-71.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	459.8,	116.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	499.95,	33.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	559.95,	88.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	484.6,	-71.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	158.25,	172.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	91.6,	206.2,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	837.2,	749.8,	1.59835815429688,	0,	0,	1.59835815429688) );		images.push( new ImageData( "bush-4"	,	735.5,	810.75,	1.59835815429688,	0,	0,	1.59835815429688) );		images.push( new ImageData( "bush-4"	,	816.55,	1409.2,	1.41867065429688,	0,	0,	1.41867065429688,	35.5,	28) );		images.push( new ImageData( "road-v"	,	275.15,	316.3,	0.971237182617188,	0.23809814453125,	-0.23809814453125,	0.971237182617188) );		images.push( new ImageData( "building-plot"	,	223.05,	279.5,	1,	0,	0,	1) );		images.push( new ImageData( "bush-3"	,	826.7,	799.15,	1.59834289550781,	0,	0,	1.59834289550781,	28.5,	16.5) );		images.push( new ImageData( "tree-0"	,	44.35,	757.25,	1,	0,	0,	1) );		images.push( new ImageData( "bush-3"	,	901.3,	1214.6,	2.25,	0,	0,	2.25,	28.5,	16.5) );		images.push( new ImageData( "tree-0"	,	213.6,	1032.1,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	267.9,	627.25,	0.934158325195313,	-0.3568115234375,	0.3568115234375,	0.934158325195313) );		images.push( new ImageData( "building-plot"	,	554.8,	455.2,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	484.6,	292.8,	1.82330322265625,	0,	0,	1.82330322265625,	41.5,	19) );		images.push( new ImageData( "building-plot"	,	113.9,	598.85,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	851.8,	644.4,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "tree-0"	,	790.8,	572.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	790.8,	964.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	772.3,	964.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	881.8,	1006.45,	1,	0,	0,	1) );		images.push( new ImageData( "chair-0"	,	3.85,	1349.65,	2.25,	0,	0,	2.25,	19.5,	14.5) );		images.push( new ImageData( "rock-3"	,	45.4,	453.95,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "tree-0"	,	-30.4,	479.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-30.4,	551.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	193.4,	821.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	631.6,	97.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	595.35,	-1.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	401,	17,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	71.4,	396.45,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	481.55,	1282.9,	1.78459167480469,	0,	0,	1.78459167480469,	39.55,	17.5) );		images.push( new ImageData( "building-plot"	,	388.35,	863.85,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	622.45,	1131.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	301.6,	71.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	240.6,	143,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	776.8,	1679.1,	2.25,	0,	0,	2.25,	39.5,	17.5) );	}}