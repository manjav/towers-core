package com.gt.towers.battle.fieldes;class Quest_6 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	617.45,	364.1,	11,	1,	"1",	true,	-3	) );		places.push( new PlaceData( 1,	449.8,	1018.85,	1,	-1,	"0,2",	true,	-3	) );		places.push( new PlaceData( 2,	310,	1272.55,	1,	-1,	"1,3",	true,	-3	) );		places.push( new PlaceData( 3,	680,	1422.55,	11,	0,	"2",	true,	-3	) );#if flash		// images		images.push( new ImageData( "tree-0"	,	-18.35,	345.9,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "bush-0"	,	820.1,	918.55,	1,	0,	0,	1,	30,	18) );		images.push( new ImageData( "bush-7"	,	824.5,	643.45,	1,	0,	0,	1,	41.45,	19) );		images.push( new ImageData( "bush-4"	,	481.85,	1162.95,	1.125,	0,	0,	1.125,	35.55,	28) );		images.push( new ImageData( "chair-1"	,	952.7,	452.05,	1,	0,	0,	1,	45.05,	25) );		images.push( new ImageData( "rock-0"	,	652.05,	1016.1,	1,	0,	0,	1,	39.5,	17.5) );		images.push( new ImageData( "road-v"	,	515.4,	586.35,	0.971237182617188,	0.23809814453125,	-0.23809814453125,	0.971237182617188) );		images.push( new ImageData( "road-v"	,	453.75,	929.3,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );		images.push( new ImageData( "road-h"	,	333,	1240.85,	0.920486450195313,	0.3907470703125,	-0.3907470703125,	0.920486450195313,	207.45,	39.4) );		images.push( new ImageData( "building-plot"	,	336.1,	937.15,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	195.75,	1190.35,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	564.95,	1341.8,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	577.25,	342,	0.971237182617188,	0.23809814453125,	-0.23809814453125,	0.971237182617188) );		images.push( new ImageData( "building-plot"	,	504.45,	282.4,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	665.15,	925.5,	1,	0,	0,	1,	30,	18) );		images.push( new ImageData( "bush-0"	,	998.8,	1420.25,	1,	0,	0,	1,	30,	18) );		images.push( new ImageData( "bush-0"	,	985.1,	1000.25,	1,	0,	0,	1,	30,	18) );		images.push( new ImageData( "bush-0"	,	658.9,	1176.7,	1,	0,	0,	1,	30,	18) );		images.push( new ImageData( "bush-0"	,	799.5,	1259.95,	1,	0,	0,	1,	30,	18) );		images.push( new ImageData( "rock-5"	,	820.1,	558.45,	1,	0,	0,	1,	62,	36.55) );		images.push( new ImageData( "tree-0"	,	106.55,	581.1,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	15.05,	638.9,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	15.05,	731.85,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "bush-1"	,	134.3,	1063.3,	1,	0,	0,	1,	40.5,	26) );		images.push( new ImageData( "bush-2"	,	977.45,	1442.15,	1.125,	0,	0,	1.125,	31,	26.55) );		images.push( new ImageData( "bush-7"	,	879.8,	1222.65,	1,	0,	0,	1,	41.55,	19) );		images.push( new ImageData( "bush-4"	,	282.2,	797.5,	1,	0,	0,	1,	35.5,	28) );		images.push( new ImageData( "bush-4"	,	834.45,	779.3,	1,	0,	0,	1,	35.55,	28) );		images.push( new ImageData( "bush-1"	,	936.05,	1378.7,	1.125,	0,	0,	1.125,	40.55,	26) );		images.push( new ImageData( "bush-1"	,	795.5,	625.85,	1,	0,	0,	1,	40.5,	26) );		images.push( new ImageData( "bush-4"	,	652.05,	1051.6,	1,	0,	0,	1,	35.5,	28) );		images.push( new ImageData( "tree-0"	,	203.2,	547.85,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	60.95,	438.85,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	60.95,	304.4,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	180,	199.95,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	275.75,	146,	1,	0,	0,	1,	61,	71.55) );		images.push( new ImageData( "tree-0"	,	31.25,	174.5,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	166.75,	304.4,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	180,	438.85,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	663.5,	531.45,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-44.95,	513.85,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	259.3,	345.9,	1,	0,	0,	1,	61,	71.5) );#end	}}