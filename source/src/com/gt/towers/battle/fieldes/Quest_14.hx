package com.gt.towers.battle.fieldes;class Quest_14 extends FieldData{	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasStart, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	803.2,	591.3,	1,	-1,	"1,4",	true,	-3	) );		places.push( new PlaceData( 1,	543.45,	1032.7,	1,	-1,	"0,2,3",	true,	-3	) );		places.push( new PlaceData( 2,	319.25,	1451.3,	1,	-1,	"1,3",	true,	-3	) );		places.push( new PlaceData( 3,	731.9,	1304.5,	1,	0,	"1,2",	true,	-3	) );		places.push( new PlaceData( 4,	399.25,	592.6,	11,	1,	"0",	true,	-3	) );		places.push( new PlaceData( 5,	794.95,	1108.55,	41,	-1,	"",	true,	-3	) );		// create images		images.push( new ImageData( "bush-7"	,	689.2,	245.95,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "tree-0"	,	467.25,	64.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	626.15,	41.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	467.25,	43.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	519.2,	104.15,	1,	0,	0,	1) );		images.push( new ImageData( "rock-5"	,	589.25,	280.75,	2,	0,	0,	2,	62,	36.5) );		images.push( new ImageData( "tree-0"	,	519.2,	323.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	650.85,	323.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	350.55,	45.1,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	484.7,	1043.3,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "road-h"	,	301.45,	1434.85,	0.92596435546875,	-0.377532958984375,	0.377532958984375,	0.92596435546875) );		images.push( new ImageData( "road-v"	,	510.35,	1055.6,	0.855133056640625,	-0.518386840820313,	0.43890380859375,	0.723983764648438,	44.5,	201.5) );		images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.6,	-49.9,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	1.6,	1544.7,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-0"	,	74.8,	1264.5,	1.52394104003906,	0,	0,	1.52394104003906,	30,	18) );		images.push( new ImageData( "bush-7"	,	27.65,	444.1,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	842.9,	731.8,	1.52395629882813,	0,	0,	1.52395629882813,	35.55,	28) );		images.push( new ImageData( "chair-1"	,	343.95,	677.65,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );		images.push( new ImageData( "rock-0"	,	473.1,	1212.8,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "rock-3"	,	448.35,	1301.75,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "road-v"	,	624.75,	789.1,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "building-plot"	,	428.25,	970.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	203.45,	1376.5,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	620.9,	1241.5,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	758.2,	544.8,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "bush-4"	,	253,	943.85,	1.52395629882813,	0,	0,	1.52395629882813,	35.5,	28) );		images.push( new ImageData( "bush-4"	,	178.6,	842.35,	1.52395629882813,	0,	0,	1.52395629882813,	35.55,	28) );		images.push( new ImageData( "bush-0"	,	241.05,	900.25,	1.52394104003906,	0,	0,	1.52394104003906,	30,	18) );		images.push( new ImageData( "road-v"	,	802.25,	548.1,	0.000091552734375,	1,	-1,	0.000091552734375,	44.5,	201.45) );		images.push( new ImageData( "building-plot"	,	692.2,	529.6,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	288.25,	529.6,	1,	0,	0,	1) );		images.push( new ImageData( "chair-0"	,	583.2,	666.55,	2.25,	0,	0,	2.25,	19.5,	14.5) );		images.push( new ImageData( "bush-4"	,	156.5,	897.6,	1.52395629882813,	0,	0,	1.52395629882813,	35.5,	28) );		images.push( new ImageData( "tree-0"	,	870,	886.2,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	185.45,	140.75,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	307.45,	180.45,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	166.25,	283.75,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	337.1,	347.95,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	398.1,	276.45,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	494.25,	195.8,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	528.25,	236.7,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	635.4,	236.7,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "bush-7"	,	394.3,	1570.7,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "tree-0"	,	202.75,	692.7,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	227.25,	355.25,	1,	0,	0,	1,	61,	71.5) );	}}