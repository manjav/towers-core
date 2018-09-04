package com.gt.towers.battle.fieldes;class Operation_20 extends FieldData{	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")	{		super(index, name, times, introNum, startNum, endNum);		// places		places.push( new PlaceData( 0,	771.75,	1537.3,	1,	-1,	"1,2,3",	true,	-3	) );		places.push( new PlaceData( 1,	507.15,	1283.6,	1,	0,	"0,2,6",	true,	-3	) );		places.push( new PlaceData( 2,	273,	1537.3,	1,	-1,	"0,1,5",	true,	-3	) );		places.push( new PlaceData( 3,	771.75,	353.4,	1,	-1,	"0,4,5",	true,	-3	) );		places.push( new PlaceData( 4,	572.85,	656.9,	12,	1,	"3,6,5",	true,	-3	) );		places.push( new PlaceData( 5,	273,	463.55,	1,	-1,	"2,3,4",	true,	-3	) );		places.push( new PlaceData( 6,	543.4,	970.25,	44,	-1,	"1,4",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-v"	,	225.75,	489.15,	1,	0,	0,	2.46710205078125,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	524.25,	662.25,	0.9957275390625,	0.0924072265625,	-0.143356323242188,	1.5447998046875,	44.45,	201.6) );		images.push( new ImageData( "road-v"	,	731,	344.1,	1,	0,	0,	2.94195556640625,	44.5,	201.5) );		images.push( new ImageData( "road-h"	,	303.7,	1496.75,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	296.75,	416.05,	0.97869873046875,	-0.205245971679688,	0.205245971679688,	0.97869873046875) );		images.push( new ImageData( "road-h"	,	261.45,	414.2,	0.836669921875,	0.547698974609375,	-0.547698974609375,	0.836669921875) );		images.push( new ImageData( "road-v"	,	746.15,	321.45,	0.839126586914063,	0.543914794921875,	-0.543914794921875,	0.839126586914063) );		images.push( new ImageData( "road-h"	,	226.55,	1533.75,	0.682403564453125,	-0.73095703125,	0.73095703125,	0.682403564453125) );		images.push( new ImageData( "road-h"	,	824.85,	1550.45,	-0.700393676757813,	-0.713729858398438,	-0.713729858398438,	0.700393676757813) );		images.push( new ImageData( "building-plot"	,	459.8,	574.45,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429.55,	893.45,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	654.1,	1454,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	944,	1463.55,	1,	0,	0,	1,	30,	18) );		images.push( new ImageData( "building-plot"	,	167.75,	1448.65,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	394.15,	1202.75,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	847.7,	574.45,	1,	0,	0,	1,	30,	18) );		images.push( new ImageData( "tree-0"	,	386.35,	31,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	616.15,	-40.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	423.6,	-71.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	430.3,	201.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	499.95,	33.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	581.9,	94.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	224.15,	-17.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	157.15,	116.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	39.7,	159.35,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	832.3,	1545,	1,	0,	0,	1,	35.55,	28) );		images.push( new ImageData( "bush-3"	,	931.95,	1241.45,	1,	0,	0,	1,	28.5,	16.55) );		images.push( new ImageData( "bush-7"	,	533.55,	296.55,	1,	0,	0,	1,	41.45,	19) );		images.push( new ImageData( "chair-0"	,	91.6,	1271.3,	2.25,	0,	0,	2.25,	19.5,	14.5) );		images.push( new ImageData( "tree-0"	,	690.9,	94.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	767.1,	4.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	280.75,	211.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	306.4,	99.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	72.6,	4.6,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	120.5,	1664.7,	1,	0,	0,	1,	39.5,	17.5) );		images.push( new ImageData( "building-plot"	,	157.15,	385.25,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	629.45,	1109.35,	1,	0,	0,	1,	39.5,	17.5) );		images.push( new ImageData( "building-plot"	,	654.1,	275.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	335.85,	694.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	3.5,	663.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	39.7,	869.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	79.85,	786.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-19.1,	769.75,	1,	0,	0,	1) );		images.push( new ImageData( "bush-6"	,	955.55,	436.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	444.85,	1371.4,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	909.5,	825,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	860.25,	689.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	909.5,	940.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	950,	1085.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	882.85,	159.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	919.05,	365.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	960,	265.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	888.3,	40.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	932.05,	806.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	940.5,	497.75,	1,	0,	0,	1) );		images.push( new ImageData( "chair-1"	,	480.65,	436.7,	1.092529296875,	0,	0,	1.092529296875,	45.05,	25.05) );#end	}}