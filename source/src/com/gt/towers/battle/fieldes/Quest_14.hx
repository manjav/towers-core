package com.gt.towers.battle.fieldes;class Quest_14 extends FieldData{	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")	{		super(index, name, times, introNum, startNum, endNum);		// places		places.push( new PlaceData( 0,	749.95,	564.15,	1,	1,	"1",	true,	-3	) );		places.push( new PlaceData( 1,	522.5,	988.5,	11,	-1,	"0,2,4",	true,	-3	) );		places.push( new PlaceData( 2,	391.05,	1234.9,	1,	-1,	"1,3",	true,	-3	) );		places.push( new PlaceData( 3,	691,	1386.45,	1,	0,	"2",	true,	-3	) );		places.push( new PlaceData( 4,	197,	464.4,	1,	1,	"1",	true,	-3	) );#if flash		// images		images.push( new ImageData( "tree-0"	,	548.6,	-47.3,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "bush-0"	,	891.4,	423.6,	1,	0,	0,	1,	30,	18) );		images.push( new ImageData( "bush-7"	,	428.2,	602.85,	1,	0,	0,	1,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	243.9,	1494.75,	1,	0,	0,	1,	35.6,	28) );		images.push( new ImageData( "chair-1"	,	394.4,	423.05,	1,	0,	0,	1,	45.05,	25.05) );		images.push( new ImageData( "rock-0"	,	650.9,	1199.15,	1,	0,	0,	1,	39.5,	17.55) );		images.push( new ImageData( "road-v"	,	542.6,	859.4,	0.885421752929688,	0.46478271484375,	-0.46478271484375,	0.885421752929688) );		images.push( new ImageData( "road-h"	,	356.6,	1183.9,	0.898056030273438,	0.439865112304688,	-0.439865112304688,	0.898056030273438) );		images.push( new ImageData( "building-plot"	,	280.05,	1154.7,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	580,	1309.45,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	699.15,	561.2,	0.885421752929688,	0.46478271484375,	-0.46478271484375,	0.885421752929688) );		images.push( new ImageData( "building-plot"	,	637.35,	485.55,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	71.1,	1036,	1,	0,	0,	1,	35.55,	28) );		images.push( new ImageData( "bush-0"	,	99.7,	800.6,	1,	0,	0,	1,	30.05,	18) );		images.push( new ImageData( "chair-0"	,	492.8,	524.2,	1,	0,	0,	1,	19.5,	14.5) );		images.push( new ImageData( "bush-7"	,	125.35,	657.4,	1.67971801757813,	0,	0,	1.67971801757813,	41.45,	19) );		images.push( new ImageData( "building-plot"	,	411.4,	906.55,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	491.25,	342.15,	1,	0,	0,	1,	30,	18) );		images.push( new ImageData( "tree-0"	,	190,	106.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	299,	72.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	423.7,	98.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	219.25,	222.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	376.5,	166.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	415.65,	-5.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	308,	-24.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	76.7,	0,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	49.25,	125.55,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	818.1,	735.4,	1,	0,	0,	1,	30,	18.05) );		images.push( new ImageData( "bush-4"	,	895.2,	1085.6,	1,	0,	0,	1) );		images.push( new ImageData( "bush-3"	,	690.3,	987,	1,	0,	0,	1,	28.5,	16.45) );		images.push( new ImageData( "bush-0"	,	241.85,	1035.5,	1,	0,	0,	1,	30,	18) );		images.push( new ImageData( "rock-0"	,	233.2,	949.05,	1,	0,	0,	1,	39.5,	17.55) );		images.push( new ImageData( "bush-7"	,	778.65,	275.85,	1,	0,	0,	1,	41.5,	19) );		images.push( new ImageData( "rock-4"	,	861.35,	1004,	1,	0,	0,	1,	64.5,	23) );		images.push( new ImageData( "rock-0"	,	801.9,	392.35,	1,	0,	0,	1,	39.5,	17.5) );		images.push( new ImageData( "road-v"	,	175.35,	522.25,	0.845962524414063,	-0.533233642578125,	0.686447143554688,	1.08905029296875) );		images.push( new ImageData( "building-plot"	,	84.4,	385.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	753.5,	-33.6,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	560,	72.5,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	660.3,	139.5,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	660.2,	275.85,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	428.2,	602.85,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	951.2,	-57.75,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	534.45,	353.75,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	467.25,	188.6,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	1006.15,	139.5,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	308,	258.65,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	893.35,	471.5,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	621.95,	1588.55,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	880.4,	76.6,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	795.1,	146.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	891.4,	196.55,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );#end	}}