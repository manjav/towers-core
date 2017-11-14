package com.gt.towers.battle.fieldes;class Quest_14 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	749.95,	550.15,	1,	1,	"1",	true,	-3	) );		places.push( new PlaceData( 1,	501.45,	933.55,	11,	-1,	"0,2,4",	true,	-3	) );		places.push( new PlaceData( 2,	391.05,	1220.9,	1,	-1,	"1,3",	true,	-3	) );		places.push( new PlaceData( 3,	691,	1372.45,	1,	0,	"2",	true,	-3	) );		places.push( new PlaceData( 4,	197,	450.4,	1,	1,	"1",	true,	-3	) );#if flash		// images		images.push( new ImageData( "tree-0"	,	715.55,	55.3,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	562.2,	103.75,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	636.25,	148.25,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	592.5,	181.3,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	556.95,	241.2,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	636.25,	241.2,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	715.55,	148.25,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	794.85,	55.3,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	759.3,	115.2,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	636.25,	241.2,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	477.65,	148.25,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	1004.1,	169.4,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	866.75,	208.15,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	339.9,	237.55,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	893.35,	471.5,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	724.7,	186.35,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	621.95,	1588.55,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-0"	,	837.65,	390.5,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "bush-7"	,	408.85,	585.35,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	227.4,	1475.9,	1.58956909179688,	0,	0,	1.58956909179688,	35.6,	28) );		images.push( new ImageData( "chair-1"	,	352.55,	393.05,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );		images.push( new ImageData( "rock-0"	,	597.8,	1157.9,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "rock-3"	,	572.5,	1251.45,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "road-v"	,	502,	870.55,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "road-h"	,	352.3,	1194.7,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );		images.push( new ImageData( "building-plot"	,	280.05,	1157.9,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	580,	1309.45,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	705.7,	533.75,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "building-plot"	,	638.95,	487.15,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	52.05,	1014.2,	1.67974853515625,	0,	0,	1.67974853515625,	35.55,	28) );		images.push( new ImageData( "bush-0"	,	70.5,	782.6,	1.67973327636719,	0,	0,	1.67973327636719,	30,	18) );		images.push( new ImageData( "chair-0"	,	467.8,	501.1,	2.25,	0,	0,	2.25,	19.5,	14.5) );		images.push( new ImageData( "bush-7"	,	125.35,	657.4,	1.67971801757813,	0,	0,	1.67971801757813,	41.45,	19) );		images.push( new ImageData( "road-v"	,	203.9,	579.4,	0.855148315429688,	-0.518386840820313,	0.518386840820313,	0.855148315429688) );		images.push( new ImageData( "building-plot"	,	390.45,	870.55,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	437.5,	309.05,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "tree-0"	,	190,	106.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	280.05,	98.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	423.7,	98.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	219.25,	222.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	376.5,	166.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	499.95,	87.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	341.05,	48.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	701.7,	62.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	158.25,	79.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	158.25,	150.7,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	811.2,	864.6,	1.67974853515625,	0,	0,	1.67974853515625) );		images.push( new ImageData( "bush-0"	,	788.9,	717.4,	1.67973327636719,	0,	0,	1.67973327636719,	30,	18.05) );		images.push( new ImageData( "bush-4"	,	876.15,	1063.85,	1.67974853515625,	0,	0,	1.67974853515625) );		images.push( new ImageData( "bush-3"	,	673.65,	972.35,	1.67973327636719,	0,	0,	1.67973327636719,	28.5,	16.5) );		images.push( new ImageData( "bush-3"	,	882.55,	836.85,	1.67973327636719,	0,	0,	1.67973327636719,	28.5,	16.5) );		images.push( new ImageData( "bush-0"	,	212.65,	1017.5,	1.67973327636719,	0,	0,	1.67973327636719,	30,	18) );		images.push( new ImageData( "rock-0"	,	204.3,	926.6,	1.67973327636719,	0,	0,	1.67973327636719,	39.5,	17.55) );		images.push( new ImageData( "bush-7"	,	759.3,	258.35,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "rock-4"	,	832.15,	972.35,	1.67973327636719,	0,	0,	1.67973327636719,	64.5,	23) );		images.push( new ImageData( "rock-0"	,	748.75,	351.1,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "road-v"	,	140.3,	478.65,	0.855148315429688,	-0.518386840820313,	0.518386840820313,	0.855148315429688) );		images.push( new ImageData( "building-plot"	,	86,	387.4,	1,	0,	0,	1) );#end	}}