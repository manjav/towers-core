package com.gt.towers.battle.fieldes;class Quest_18 extends FieldData{	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")	{		super(index, name, times, introNum, startNum, endNum);		// places		places.push( new PlaceData( 0,	832.1,	380.85,	21,	1,	"1",	true,	-3	) );		places.push( new PlaceData( 1,	626.9,	763.6,	1,	-1,	"0,2,4",	true,	-3	) );		places.push( new PlaceData( 2,	397.55,	1191.5,	41,	-1,	"1,5,3",	true,	-3	) );		places.push( new PlaceData( 3,	754.3,	1371.9,	1,	0,	"2,5",	true,	-3	) );		places.push( new PlaceData( 4,	340.15,	380.85,	21,	1,	"1",	true,	-3	) );		places.push( new PlaceData( 5,	226.55,	1510.5,	1,	0,	"2,3",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-h"	,	298,	1456.8,	0.965133666992188,	-0.261688232421875,	0.261688232421875,	0.965133666992188) );		images.push( new ImageData( "road-h"	,	382.8,	1142.85,	0.894882202148438,	0.446258544921875,	-0.446258544921875,	0.894882202148438) );		images.push( new ImageData( "road-v"	,	312.6,	424.25,	0.809616088867188,	-0.586944580078125,	0.586944580078125,	0.809616088867188) );		images.push( new ImageData( "road-v"	,	395.3,	1107.2,	0.881607055664063,	0.472030639648438,	-0.4742431640625,	0.885772705078125,	44.6,	201.5) );		images.push( new ImageData( "road-v"	,	564.85,	789,	0.881607055664063,	0.472030639648438,	-0.462570190429688,	0.86395263671875,	44.5,	201.45) );		images.push( new ImageData( "road-v"	,	788.2,	372,	0.881607055664063,	0.472030639648438,	-0.472030639648438,	0.881607055664063) );		images.push( new ImageData( "bush-0"	,	845.05,	1540.5,	1,	0,	0,	1,	30,	18.05) );		images.push( new ImageData( "bush-4"	,	981.8,	706.15,	1,	0,	0,	1,	35.55,	28) );		images.push( new ImageData( "chair-1"	,	569.15,	512.5,	1,	0,	0,	1,	45.05,	25.05) );		images.push( new ImageData( "rock-0"	,	650.9,	1157.3,	1,	0,	0,	1,	39.5,	17.55) );		images.push( new ImageData( "bush-4"	,	966.35,	669.85,	1,	0,	0,	1,	35.55,	28) );		images.push( new ImageData( "bush-0"	,	895.8,	653.15,	1,	0,	0,	1,	30.05,	18) );		images.push( new ImageData( "bush-7"	,	192.65,	535.4,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "bush-0"	,	870.3,	207.5,	1,	0,	0,	1,	30,	18) );		images.push( new ImageData( "tree-0"	,	569.15,	21.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	653.55,	191.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	510.15,	326.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	64.4,	838.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	428.05,	3.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	502,	133.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	649.75,	76.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	416.2,	146.95,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	925.8,	730.2,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	956.6,	1421.4,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	736.4,	1543,	1,	0,	0,	1,	35.5,	28.05) );		images.push( new ImageData( "bush-3"	,	284.4,	878.15,	1,	0,	0,	1,	28.5,	16.5) );		images.push( new ImageData( "bush-3"	,	95,	1080.2,	1,	0,	0,	1,	28.55,	16.5) );		images.push( new ImageData( "rock-0"	,	744.4,	911.95,	1,	0,	0,	1,	39.5,	17.55) );		images.push( new ImageData( "tree-0"	,	837.05,	658.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	653.55,	973.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	714.55,	973.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	744.55,	1015.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	58.5,	238.2,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	102.25,	725.65,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-44.6,	288.5,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-14,	677,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-44.6,	940.35,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	58.5,	331.15,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	155.55,	224.2,	1,	0,	0,	1,	61.05,	71.5) );		images.push( new ImageData( "tree-0"	,	93.45,	79.25,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	35,	408.7,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-15.55,	501.65,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-50.5,	809.15,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	102.25,	520.7,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	137.75,	400.5,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-15.55,	160.65,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	306.3,	112.2,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "building-plot"	,	638.2,	1287.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	719.2,	296.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	225.15,	300.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	509.25,	680.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	285.25,	1112.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	117.45,	1427.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	83.65,	613.65,	1,	0,	0,	1) );#end	}}