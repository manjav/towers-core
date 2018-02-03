package com.gt.towers.battle.fieldes;class Battle_101 extends FieldData{	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")	{		super(index, name, times, introNum, startNum, endNum);		// places		places.push( new PlaceData( 0,	800,	1500,	12,	0,	"4,1",	true,	-3	) );		places.push( new PlaceData( 1,	700,	1000,	1,	-1,	"2,0,5",	true,	-3	) );		places.push( new PlaceData( 2,	380,	920,	1,	-1,	"4,1,3",	true,	-3	) );		places.push( new PlaceData( 3,	280,	420,	12,	1,	"5,2",	true,	-3	) );		places.push( new PlaceData( 4,	380,	1500,	1,	-1,	"0,2",	true,	-3	) );		places.push( new PlaceData( 5,	700,	420,	1,	-1,	"1,3",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-h"	,	270.95,	383.65,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	394,	1457.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	126.65,	1521.3,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "road-v"	,	659.05,	469.9,	1,	0,	0,	1.1685791015625,	44.5,	201.5) );		images.push( new ImageData( "road-h"	,	349.8,	868.15,	0.965927124023438,	0.258804321289063,	-0.258804321289063,	0.965927124023438) );		images.push( new ImageData( "road-v"	,	245.1,	466,	0.98162841796875,	-0.190811157226563,	0.194580078125,	1.0009765625,	44.6,	201.45) );		images.push( new ImageData( "bush-0"	,	316.95,	1650.1,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "bush-4"	,	920.25,	816.9,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );		images.push( new ImageData( "tree-0"	,	45.15,	1000.65,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	64.05,	784.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "bush-7"	,	788.4,	703.95,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "building-plot"	,	687.3,	1415.9,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	586.25,	916.95,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	266.85,	837.9,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	163.3,	335.45,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	265.8,	1418,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	588.6,	337.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	0,	599.85,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	588.7,	1597.45,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	907.2,	355.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "bush-4"	,	133.2,	1307.75,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );		images.push( new ImageData( "tree-0"	,	377.75,	243.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	798.2,	465.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	798.2,	212.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	897.65,	131.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	321.6,	11.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1.3,	284.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	459.95,	132.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	310.4,	160.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-3"	,	373.4,	506.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-4"	,	546.6,	577.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-3"	,	472.15,	745.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-4"	,	500.7,	1221.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-1"	,	21.3,	1242.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-2"	,	920.25,	1352.9,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	668,	1060.55,	0.98162841796875,	-0.190811157226563,	0.193634033203125,	0.996124267578125,	44.6,	201.45) );		images.push( new ImageData( "road-v"	,	331.95,	967,	1,	0,	0,	1.20904541015625,	44.5,	201.5) );#end	}}