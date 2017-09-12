package com.gt.towers.battle.fieldes;class Quest_17 extends FieldData{	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasStart, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	733.45,	1431.75,	1,	0,	"2,1,3",	true,	-3	) );		places.push( new PlaceData( 1,	496,	1334.3,	1,	-1,	"0,2,4",	true,	-3	) );		places.push( new PlaceData( 2,	277.35,	1476.35,	1,	0,	"0,1,5",	true,	-3	) );		places.push( new PlaceData( 3,	748.2,	402.4,	1,	-1,	"0,5,4",	true,	-3	) );		places.push( new PlaceData( 4,	563.85,	704.2,	21,	1,	"1,3,5",	true,	-3	) );		places.push( new PlaceData( 5,	285,	512.55,	1,	-1,	"2,3,4",	true,	-3	) );		// create images		images.push( new ImageData( "road-v"	,	513.6,	1242.5,	0.62615966796875,	0.779693603515625,	-0.779693603515625,	0.62615966796875) );		images.push( new ImageData( "road-v"	,	240,	497.3,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	240,	867.2,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	240,	1110.75,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	514.75,	704.55,	0.9945068359375,	0.10455322265625,	-0.172088623046875,	1.63719177246094,	44.6,	201.55) );		images.push( new ImageData( "road-v"	,	723.55,	373,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "road-v"	,	718.15,	431.65,	1,	0,	0,	1) );		images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	704.75,	-3.6,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	0.55,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	572.95,	1655.85,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-0"	,	953.95,	1403.75,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "chair-1"	,	430.3,	478.25,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );		images.push( new ImageData( "road-h"	,	324.2,	1424.45,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	511.6,	1358.65,	0.481353759765625,	-0.87652587890625,	0.443923950195313,	0.243789672851563,	44.5,	201.45) );		images.push( new ImageData( "chair-0"	,	324.75,	350.9,	2.25,	0,	0,	2.25,	19.5,	14.5) );		images.push( new ImageData( "building-plot"	,	164.35,	1429.35,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	385,	1271.3,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	681.55,	220.8,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "tree-0"	,	423.6,	0,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	560.95,	-38.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	423.6,	-71.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	459.8,	116.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	499.95,	33.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	559.95,	88.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	484.6,	-71.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	158.25,	172.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	91.6,	206.2,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	772.3,	1412.4,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28) );		images.push( new ImageData( "bush-3"	,	901.3,	1214.6,	2.25,	0,	0,	2.25,	28.5,	16.5) );		images.push( new ImageData( "bush-7"	,	484.6,	276.6,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "chair-0"	,	149.7,	1349.65,	2.25,	0,	0,	2.25,	19.5,	14.5) );		images.push( new ImageData( "tree-0"	,	631.6,	97.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	595.35,	-1.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	401,	17,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	540,	1557.45,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "tree-0"	,	301.6,	71.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	240.6,	143,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	776.8,	1679.1,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "road-h"	,	321,	458.3,	0.965927124023438,	-0.258804321289063,	0.258804321289063,	0.965927124023438) );		images.push( new ImageData( "road-v"	,	214.7,	509,	0.595306396484375,	-0.803482055664063,	0.803482055664063,	0.595306396484375) );		images.push( new ImageData( "building-plot"	,	166.35,	449.55,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	452.85,	641.2,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	345.25,	947.5,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "building-plot"	,	637.2,	339.4,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	683.1,	447.05,	0.33868408203125,	0,	0,	1.17747497558594,	111,	63) );		images.push( new ImageData( "building-plot"	,	301.15,	1378.4,	0.516571044921875,	0,	0,	0.997711181640625,	111,	63.05) );		images.push( new ImageData( "tree-0"	,	284.5,	900.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	3.5,	663.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	39.7,	869.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	79.85,	786.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-19.1,	769.75,	1,	0,	0,	1) );		images.push( new ImageData( "bush-6"	,	955.55,	436.85,	1,	0,	0,	1) );		images.push( new ImageData( "rock-3"	,	267.4,	817.25,	1,	0,	0,	1) );		images.push( new ImageData( "rock-2"	,	308.4,	869.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	605.45,	1206.65,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	718.15,	801.55,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	718.15,	1045.1,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	757.3,	892.15,	1,	0,	0,	1) );		images.push( new ImageData( "bush-3"	,	776.1,	1032.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	779.3,	704.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	779.3,	858.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	779.3,	1052.85,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	622.45,	1368.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	882.85,	159.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	919.05,	365.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	959.2,	282.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	860.25,	265.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	932.05,	806.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	894.05,	424.6,	1,	0,	0,	1) );	}}