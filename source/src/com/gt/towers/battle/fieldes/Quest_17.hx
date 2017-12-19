package com.gt.towers.battle.fieldes;class Quest_17 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	832.1,	380.85,	11,	1,	"1",	true,	-3	) );		places.push( new PlaceData( 1,	626.9,	763.6,	31,	-1,	"0,2,4",	true,	-3	) );		places.push( new PlaceData( 2,	397.55,	1191.5,	31,	-1,	"1,5,3",	true,	-3	) );		places.push( new PlaceData( 3,	754.3,	1371.9,	1,	0,	"2,5",	true,	-3	) );		places.push( new PlaceData( 4,	340.15,	380.85,	11,	1,	"1",	true,	-3	) );		places.push( new PlaceData( 5,	226.55,	1510.5,	1,	0,	"2,3",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-h"	,	298,	1456.8,	0.965133666992188,	-0.261688232421875,	0.261688232421875,	0.965133666992188) );		images.push( new ImageData( "road-h"	,	382.8,	1142.85,	0.894882202148438,	0.446258544921875,	-0.446258544921875,	0.894882202148438) );		images.push( new ImageData( "road-v"	,	312.6,	424.25,	0.809616088867188,	-0.586944580078125,	0.586944580078125,	0.809616088867188) );		images.push( new ImageData( "road-v"	,	395.3,	1107.2,	0.881607055664063,	0.472030639648438,	-0.4742431640625,	0.885772705078125,	44.6,	201.5) );		images.push( new ImageData( "road-v"	,	564.85,	789,	0.881607055664063,	0.472030639648438,	-0.462570190429688,	0.86395263671875,	44.5,	201.45) );		images.push( new ImageData( "road-v"	,	788.2,	372,	0.881607055664063,	0.472030639648438,	-0.472030639648438,	0.881607055664063) );		images.push( new ImageData( "bush-0"	,	656.15,	1633.55,	1.56126403808594,	0,	0,	1.56126403808594,	30,	18) );		images.push( new ImageData( "bush-4"	,	910.2,	830.95,	1,	0,	0,	1,	35.55,	28) );		images.push( new ImageData( "chair-1"	,	571.2,	468.05,	1,	0,	0,	1,	45.05,	25.05) );		images.push( new ImageData( "rock-0"	,	650.9,	1157.3,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	638.2,	1287.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	719.2,	296.2,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	941.2,	627.8,	1,	0,	0,	1,	35.55,	28) );		images.push( new ImageData( "bush-0"	,	929.3,	554.45,	1,	0,	0,	1,	30,	18) );		images.push( new ImageData( "chair-0"	,	542.2,	438.5,	1,	0,	0,	1,	19.5,	14.5) );		images.push( new ImageData( "bush-7"	,	212,	552.9,	1,	0,	0,	1,	41.5,	19) );		images.push( new ImageData( "building-plot"	,	225.15,	300.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	509.25,	680.2,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	877.15,	211.9,	1,	0,	0,	1,	30,	18) );		images.push( new ImageData( "tree-0"	,	588.75,	76.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	653.55,	191.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	588.75,	279.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	64.4,	838.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	447.15,	-46.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	502,	133.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	681.4,	-35.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	400.25,	76.3,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	686.25,	898.75,	1,	0,	0,	1,	35.5,	28) );		images.push( new ImageData( "bush-4"	,	546.9,	1633.55,	1.561279296875,	0,	0,	1.561279296875,	35.5,	28) );		images.push( new ImageData( "building-plot"	,	285.25,	1112.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	393.05,	718.95,	1,	0,	0,	1) );		images.push( new ImageData( "bush-3"	,	95,	1080.2,	1,	0,	0,	1,	28.55,	16.5) );		images.push( new ImageData( "tree-0"	,	3.4,	981.85,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	117.45,	1427.8,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	900.05,	975.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	769.2,	644.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	600,	990.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	714.55,	973.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	709,	1067.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	35,	238.2,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-6.75,	718.95,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-20.8,	331.15,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	22.95,	613.65,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-20.8,	424.1,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	95,	146.95,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	137.75,	238.2,	1,	0,	0,	1,	61.05,	71.5) );		images.push( new ImageData( "tree-0"	,	112.4,	350.2,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	64.4,	408.7,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	102.25,	520.7,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	215.75,	152.9,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-50.15,	184.2,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	306.3,	112.2,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-1.3,	-35.7,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	229.15,	-13.9,	1,	0,	0,	1,	61.05,	71.5) );		images.push( new ImageData( "tree-0"	,	94.8,	35.45,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	5.35,	76.3,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	479.75,	224.2,	1,	0,	0,	1) );#end	}}