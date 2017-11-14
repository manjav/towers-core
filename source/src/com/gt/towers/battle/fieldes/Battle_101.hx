package com.gt.towers.battle.fieldes;class Battle_101 extends FieldData{	public function new(index:Int, name:String, introNum:String = "", startNum:String = "", endNum:String = "", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	760,	500,	1,	-1,	"5,6,3",	true,	-3	) );		places.push( new PlaceData( 1,	298.2,	1419.35,	1,	-1,	"6,4,2",	true,	-3	) );		places.push( new PlaceData( 2,	760,	1420,	1,	-1,	"1,5",	true,	-3	) );		places.push( new PlaceData( 3,	320,	500,	1,	-1,	"0,4",	true,	-3	) );		places.push( new PlaceData( 4,	320,	1040,	11,	1,	"1,3",	true,	-3	) );		places.push( new PlaceData( 5,	760,	880,	11,	0,	"0,2",	true,	-3	) );		places.push( new PlaceData( 6,	540,	960,	1,	-1,	"0,1",	true,	-3	) );#if flash		// images		images.push( new ImageData( "rock-4"	,	58.1,	1521.05,	2.25,	0,	0,	2.25,	64.5,	23) );		images.push( new ImageData( "road-h"	,	298.2,	1379.85,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	721.75,	1008.5,	1,	0,	0,	1) );		images.push( new ImageData( "background-0-l"	,	0,	3.1,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	0,	1549.1,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-7"	,	-14.75,	744.8,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	8.1,	560.85,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );		images.push( new ImageData( "hole-1"	,	877.25,	1185.75,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28.5) );		images.push( new ImageData( "hole-2"	,	407.5,	658.9,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );		images.push( new ImageData( "rock-3"	,	472.1,	400.1,	2.24998474121094,	0,	0,	2.24998474121094,	27,	15) );		images.push( new ImageData( "bush-0"	,	472.1,	124.45,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "bush-4"	,	355.7,	225.95,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );		images.push( new ImageData( "tree-0"	,	496.65,	1048.25,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "building-plot"	,	646,	1361.4,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	655.25,	1588.6,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "chair-1"	,	834.5,	632.3,	2.25,	0,	0,	2.25,	45,	25) );		images.push( new ImageData( "rock-3"	,	637.9,	974.75,	2.24998474121094,	0,	0,	2.24998474121094,	27,	15) );		images.push( new ImageData( "road-v"	,	264.3,	544.75,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	264.3,	675.25,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	719.35,	513.45,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	262.7,	1006.65,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	190,	977.65,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	719.35,	876.15,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	655.25,	803.45,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	489.6,	929.45,	0.937835693359375,	0.347030639648438,	-0.44207763671875,	1.19476318359375,	44.45,	201.5) );		images.push( new ImageData( "road-v"	,	685.9,	461.6,	0.945831298828125,	0.324615478515625,	-0.422821044921875,	1.23199462890625,	44.5,	201.45) );		images.push( new ImageData( "road-h"	,	353.3,	465.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	669.2,	505.25,	0.437835693359375,	0,	0,	0.627029418945313,	111,	63) );		images.push( new ImageData( "building-plot"	,	273.15,	1215.05,	0.386764526367188,	0,	0,	1.58648681640625,	111.05,	63) );		images.push( new ImageData( "building-plot"	,	429,	897,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	669.2,	434.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	539.55,	1103.65,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	460.25,	1196.6,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	551.75,	1456.15,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "building-plot"	,	196.2,	1346.65,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	199.95,	447.05,	1,	0,	0,	1) );#end	}}