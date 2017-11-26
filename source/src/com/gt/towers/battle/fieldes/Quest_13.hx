package com.gt.towers.battle.fieldes;class Quest_13 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	803.2,	591.3,	1,	-1,	"1,4",	true,	-3	) );		places.push( new PlaceData( 1,	543.45,	1032.7,	1,	-1,	"0,2,3",	true,	-3	) );		places.push( new PlaceData( 2,	319.25,	1451.3,	1,	-1,	"1,3",	true,	-3	) );		places.push( new PlaceData( 3,	731.9,	1304.5,	1,	0,	"1,2",	true,	-3	) );		places.push( new PlaceData( 4,	399.25,	592.6,	11,	1,	"0",	true,	-3	) );		places.push( new PlaceData( 5,	794.95,	1108.55,	41,	-1,	"",	true,	-3	) );#if flash		// images		images.push( new ImageData( "bush-7"	,	424.5,	180.45,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "tree-0"	,	467.25,	64.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	626.15,	41.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	467.25,	43.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	519.2,	104.15,	1,	0,	0,	1) );		images.push( new ImageData( "rock-5"	,	589.25,	280.75,	2,	0,	0,	2,	62,	36.5) );		images.push( new ImageData( "tree-0"	,	519.2,	323.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	650.85,	323.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	350.55,	45.1,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	484.7,	1043.3,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "road-h"	,	301.45,	1434.85,	0.92596435546875,	-0.377532958984375,	0.377532958984375,	0.92596435546875) );		images.push( new ImageData( "road-v"	,	510.35,	1055.6,	0.855133056640625,	-0.518386840820313,	0.43890380859375,	0.723983764648438,	44.5,	201.5) );		images.push( new ImageData( "bush-0"	,	97.35,	1278.35,	1,	0,	0,	1,	29.95,	18.05) );		images.push( new ImageData( "bush-7"	,	47,	461.6,	1,	0,	0,	1,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	857.55,	748.55,	1,	0,	0,	1,	35.55,	28) );		images.push( new ImageData( "chair-1"	,	385.8,	707.65,	1,	0,	0,	1,	45.05,	25) );		images.push( new ImageData( "rock-0"	,	526.2,	1254.05,	1,	0,	0,	1,	39.55,	17.55) );		images.push( new ImageData( "road-v"	,	624.75,	789.1,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "building-plot"	,	428.25,	970.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	203.45,	1376.5,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	620.9,	1241.5,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	758.2,	544.8,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "bush-4"	,	253,	943.85,	1.52395629882813,	0,	0,	1.52395629882813,	35.5,	28) );		images.push( new ImageData( "bush-4"	,	193.25,	859.1,	1,	0,	0,	1,	35.55,	28) );		images.push( new ImageData( "bush-0"	,	263.6,	914.1,	1,	0,	0,	1,	29.95,	18) );		images.push( new ImageData( "road-v"	,	802.25,	548.1,	0.000091552734375,	1,	-1,	0.000091552734375,	44.5,	201.45) );		images.push( new ImageData( "building-plot"	,	692.2,	529.6,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	288.25,	529.6,	1,	0,	0,	1) );		images.push( new ImageData( "chair-0"	,	608.2,	689.65,	1,	0,	0,	1,	19.5,	14.5) );		images.push( new ImageData( "bush-4"	,	171.15,	914.35,	1,	0,	0,	1,	35.5,	28) );		images.push( new ImageData( "tree-0"	,	870,	886.2,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	185.45,	140.75,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	307.45,	180.45,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	166.25,	283.75,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	337.1,	347.95,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	398.1,	276.45,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	494.25,	225.85,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	735.15,	171.75,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	635.4,	236.7,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "bush-7"	,	413.65,	1588.2,	1,	0,	0,	1,	41.5,	19) );		images.push( new ImageData( "tree-0"	,	202.75,	692.7,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	227.25,	355.25,	1,	0,	0,	1,	61,	71.5) );#end	}}