package com.gt.towers.battle.fieldes;class Quest_19 extends FieldData{	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")	{		super(index, name, times, introNum, startNum, endNum);		// places		places.push( new PlaceData( 0,	737.45,	1263.7,	1,	-1,	"1,4,6",	true,	-3	) );		places.push( new PlaceData( 1,	566.75,	1566.8,	1,	0,	"0,4",	true,	-3	) );		places.push( new PlaceData( 2,	243.35,	309.05,	13,	1,	"3,5",	true,	-3	) );		places.push( new PlaceData( 3,	700.25,	480.55,	1,	-1,	"2,5",	true,	-3	) );		places.push( new PlaceData( 4,	281.35,	1263.7,	1,	-1,	"0,1",	true,	-3	) );		places.push( new PlaceData( 5,	243.35,	661.85,	1,	-1,	"2,3,6",	true,	-3	) );		places.push( new PlaceData( 6,	480.2,	941.2,	43,	-1,	"0,5",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-h"	,	296.55,	284.45,	0.934524536132813,	0.355865478515625,	-0.355865478515625,	0.934524536132813) );		images.push( new ImageData( "road-h"	,	324.75,	1219.25,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	730.5,	1204.3,	0.854965209960938,	0.518707275390625,	-0.518707275390625,	0.854965209960938) );		images.push( new ImageData( "road-v"	,	198.35,	301.55,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	279.9,	610.55,	0.929443359375,	-0.368896484375,	0.368896484375,	0.929443359375) );		images.push( new ImageData( "road-v"	,	234,	714.35,	0.771316528320313,	-0.636398315429688,	1.07478332519531,	1.30264282226563,	44.5,	201.5) );		images.push( new ImageData( "road-h"	,	297.7,	1233.6,	0.688690185546875,	0.72503662109375,	-0.72503662109375,	0.688690185546875) );		images.push( new ImageData( "bush-0"	,	949.05,	1414.85,	1,	0,	0,	1,	30.05,	17.95) );		images.push( new ImageData( "bush-4"	,	865.45,	580.55,	1,	0,	0,	1,	35.55,	28) );		images.push( new ImageData( "bush-4"	,	27.05,	932.3,	1,	0,	0,	1,	35.55,	27.95) );		images.push( new ImageData( "bush-7"	,	-0.5,	1095.55,	1,	0,	0,	1,	41.4,	19) );		images.push( new ImageData( "building-plot"	,	166.35,	1180.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	452.4,	1484.1,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	755.95,	218.8,	1,	0,	0,	1,	30,	18) );		images.push( new ImageData( "tree-0"	,	423.6,	0,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	502.5,	-57.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	989.95,	82.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	978.1,	-45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	595.35,	127.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	853.95,	167.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	950.95,	279.5,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	853.95,	768.95,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	828.25,	1422.6,	1,	0,	0,	1,	35.5,	28) );		images.push( new ImageData( "building-plot"	,	126.4,	226.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	44.35,	757.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	213.6,	1032.1,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	586.25,	396.45,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	554.8,	117.35,	1,	0,	0,	1,	41.5,	19) );		images.push( new ImageData( "building-plot"	,	127.45,	579.5,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	904.95,	685.65,	1,	0,	0,	1,	39.5,	17.5) );		images.push( new ImageData( "tree-0"	,	790.8,	572.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	790.8,	964.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	477.25,	1284.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-37.6,	445.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-31.45,	271.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	193.4,	821.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	723.9,	82.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	595.35,	-1.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	752.25,	-45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	44.35,	369.3,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	365.45,	856.95,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	621,	1180.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	300.35,	-45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	841.95,	33.35,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	276.6,	1409.1,	1,	0,	0,	1,	39.5,	17.5) );#end	}}