package com.gt.towers.battle.fieldes;class Quest_21 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	802.1,	1179.7,	1,	-1,	"1,4,6",	true,	-3	) );		places.push( new PlaceData( 1,	628.7,	1423.6,	1,	0,	"0,4",	true,	-3	) );		places.push( new PlaceData( 2,	402.7,	315.85,	13,	1,	"5,3",	true,	-3	) );		places.push( new PlaceData( 3,	728.35,	497.65,	1,	-1,	"2,5,6",	true,	-3	) );		places.push( new PlaceData( 4,	346,	1218.2,	1,	-1,	"0,1,6",	true,	-3	) );		places.push( new PlaceData( 5,	290.65,	638.25,	1,	-1,	"2,3,6",	true,	-3	) );		places.push( new PlaceData( 6,	568,	897.15,	44,	-1,	"0,3,4,5",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-v"	,	550.2,	854.8,	0.803482055664063,	0.595306396484375,	-0.595306396484375,	0.803482055664063) );		images.push( new ImageData( "tree-0"	,	30.6,	31.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-71.55,	-70.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-82.55,	3.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	54.8,	-34.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-82.55,	-67.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-6.2,	37.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-21.55,	-67.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-105.15,	20.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	92.9,	-49.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	193.05,	-77.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	81.9,	24.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	219.25,	-13.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	81.9,	-47.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	158.25,	57.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	142.9,	-47.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	59.3,	41.45,	1,	0,	0,	1) );		images.push( new ImageData( "background-0-r"	,	704.75,	-3.6,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-12,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	572.95,	1652.1,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-0"	,	848.4,	1332.4,	1.79779052734375,	0,	0,	1.79779052734375,	30,	18) );		images.push( new ImageData( "bush-4"	,	832.35,	463.35,	1.7452392578125,	0,	0,	1.7452392578125,	35.55,	28) );		images.push( new ImageData( "chair-1"	,	715.6,	205.15,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );		images.push( new ImageData( "rock-3"	,	848.1,	938.5,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "bush-4"	,	103.95,	854.8,	1.79783630371094,	0,	0,	1.79783630371094,	35.55,	28) );		images.push( new ImageData( "chair-0"	,	858.3,	276.6,	2.25,	0,	0,	2.25,	19.5,	14.5) );		images.push( new ImageData( "bush-7"	,	-8.65,	1060.7,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "bush-0"	,	692,	112.75,	1.9000244140625,	0,	0,	1.9000244140625,	30,	18) );		images.push( new ImageData( "tree-0"	,	459.8,	2.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	559.95,	-25.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	158.25,	57.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	91.6,	206.2,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	792.05,	680.3,	1.7452392578125,	0,	0,	1.7452392578125) );		images.push( new ImageData( "bush-3"	,	812.25,	812.5,	2.25,	0,	0,	2.25,	28.5,	16.5) );		images.push( new ImageData( "bush-7"	,	484.6,	162.25,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "rock-0"	,	851.8,	644.4,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "chair-0"	,	3.85,	1349.65,	2.25,	0,	0,	2.25,	19.5,	14.5) );		images.push( new ImageData( "rock-3"	,	45.4,	453.95,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "tree-0"	,	-30.4,	479.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-30.4,	551.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	631.6,	-17.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	71.4,	396.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	301.6,	-42.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	240.6,	28.65,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	355.35,	1596.65,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "tree-0"	,	448.8,	76.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	586.15,	38.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	448.8,	5.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	525.15,	109.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	509.8,	5.1,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	39.45,	75.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	362.6,	28.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-10.55,	104.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	89.6,	76.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-21.55,	179.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	115.8,	140.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-21.55,	107.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	54.8,	212.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	39.45,	107.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-44.15,	196.05,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	278.9,	670.15,	0.74615478515625,	-0.665740966796875,	1.12432861328125,	1.2601318359375,	44.5,	201.5) );		images.push( new ImageData( "rock-0"	,	978.75,	1006.85,	1.28166198730469,	0,	0,	1.28166198730469,	39.5,	17.5) );		images.push( new ImageData( "road-h"	,	436.9,	257.1,	0.776123046875,	0.63055419921875,	-0.63055419921875,	0.776123046875) );		images.push( new ImageData( "road-v"	,	678.75,	505.3,	0.930160522460938,	0.367080688476563,	-0.367080688476563,	0.930160522460938) );		images.push( new ImageData( "road-h"	,	387.1,	1164.45,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	776.45,	1098.8,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "road-v"	,	277.6,	1212.8,	0.595306396484375,	-0.803482055664063,	0.803482055664063,	0.595306396484375) );		images.push( new ImageData( "building-plot"	,	229.25,	1153.35,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	729.8,	729.45,	1.7452392578125,	0,	0,	1.7452392578125) );		images.push( new ImageData( "road-v"	,	338.05,	293.9,	0.971237182617188,	0.23809814453125,	-0.23809814453125,	0.971237182617188) );		images.push( new ImageData( "building-plot"	,	285.95,	257.1,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	330.8,	604.85,	0.934158325195313,	-0.3568115234375,	0.3568115234375,	0.934158325195313) );		images.push( new ImageData( "bush-3"	,	503.25,	671.9,	2.25,	0,	0,	2.25,	28.5,	16.5) );		images.push( new ImageData( "building-plot"	,	617.7,	432.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	176.8,	576.45,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	555.7,	1265.7,	1.49809265136719,	0,	0,	1.49809265136719,	39.5,	17.55) );		images.push( new ImageData( "building-plot"	,	451.25,	841.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	393.75,	432.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	685.35,	1108.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	517.7,	1360.6,	1,	0,	0,	1) );#end	}}