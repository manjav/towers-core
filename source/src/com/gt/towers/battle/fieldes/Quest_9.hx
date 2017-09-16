package com.gt.towers.battle.fieldes;class Quest_9 extends FieldData{	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasStart, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	540,	960,	1,	-1,	"3,1,4,2",	true,	-3	) );		places.push( new PlaceData( 1,	800,	1500,	11,	0,	"0,3",	true,	-3	) );		places.push( new PlaceData( 2,	548.65,	413.25,	11,	1,	"0,4",	true,	-3	) );		places.push( new PlaceData( 3,	800,	960,	1,	-1,	"0,1",	true,	-3	) );		places.push( new PlaceData( 4,	279.25,	741.55,	1,	-1,	"0,2",	true,	-3	) );		// create images		images.push( new ImageData( "road-v"	,	237.65,	732.2,	0.707122802734375,	-0.70709228515625,	0.70709228515625,	0.707122802734375) );		images.push( new ImageData( "rock-0"	,	272.85,	138.6,	2.24990844726563,	0,	0,	2.24990844726563,	39.5,	17.5) );		images.push( new ImageData( "rock-0"	,	-88.85,	456.45,	2.24990844726563,	0,	0,	2.24990844726563,	39.5,	17.5) );		images.push( new ImageData( "road-v"	,	776,	1082.3,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	504.4,	541.4,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	775.85,	944.4,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	504.4,	406.3,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	499.45,	911.65,	0.763137817382813,	0,	0,	1,	207.5,	39.5) );		images.push( new ImageData( "road-v"	,	573.05,	1124.75,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );		images.push( new ImageData( "background-0-l"	,	6.15,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-0"	,	738.4,	414.9,	1.125,	0,	0,	1.125,	30,	18) );		images.push( new ImageData( "bush-7"	,	682.35,	625.75,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	680.9,	575.8,	1.125,	0,	0,	1.125,	35.55,	28) );		images.push( new ImageData( "rock-0"	,	297.2,	1346.25,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "hole-1"	,	377.2,	622.55,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28.5) );		images.push( new ImageData( "hole-2"	,	334.45,	1160.75,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );		images.push( new ImageData( "bush-7"	,	420.65,	1219.2,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "rock-3"	,	715.6,	1357.5,	2.24998474121094,	0,	0,	2.24998474121094,	27,	15) );		images.push( new ImageData( "building-plot"	,	433.85,	353.6,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	687.85,	901.4,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	505.55,	990.9,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );		images.push( new ImageData( "road-v"	,	439.1,	411.05,	0.86602783203125,	0.499984741210938,	-0.499984741210938,	0.86602783203125) );		images.push( new ImageData( "building-plot"	,	168.25,	678.55,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	296.2,	366.1,	1.125,	0,	0,	1.125,	39.5,	17.5) );		images.push( new ImageData( "rock-1"	,	201.6,	382.9,	2.25,	0,	0,	2.25,	16,	12.5) );		images.push( new ImageData( "rock-2"	,	150.85,	349.2,	2.25,	0,	0,	2.25,	17.5,	15.5) );		images.push( new ImageData( "rock-3"	,	175.7,	479.6,	2.25,	0,	0,	2.25,	27,	15) );		images.push( new ImageData( "rock-5"	,	271,	171.95,	2.25,	0,	0,	2.25,	62,	36.5) );		images.push( new ImageData( "rock-0"	,	86.8,	507.7,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "rock-6-"	,	64.05,	99.6,	2.25,	0,	0,	2.25,	54.5,	48.5) );		images.push( new ImageData( "bush-4"	,	135.7,	448.1,	1.125,	0,	0,	1.125,	35.55,	28) );		images.push( new ImageData( "bush-4"	,	137.75,	588.65,	1.125,	0,	0,	1.125,	35.55,	28) );		images.push( new ImageData( "tree-0"	,	136,	1089.25,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	215.3,	1182.2,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	46.25,	1219.2,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	255.05,	1298,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	164.25,	1333.6,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );		images.push( new ImageData( "bush-7"	,	871.6,	1319.7,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	978.45,	1422.3,	1.125,	0,	0,	1.125,	35.55,	28) );		images.push( new ImageData( "bush-4"	,	387.45,	1595.8,	1.125,	0,	0,	1.125,	35.55,	28) );		images.push( new ImageData( "bush-7"	,	624,	1672.35,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "tree-0"	,	664.1,	474.4,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	110.9,	830.35,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );		images.push( new ImageData( "building-plot"	,	437.9,	881.4,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	690.95,	1425,	1,	0,	0,	1) );		images.push( new ImageData( "hole-0"	,	944.35,	847.15,	1.5,	0,	0,	1.5,	38,	21.5) );		images.push( new ImageData( "tree-0"	,	615.6,	956.75,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	42.25,	1362.2,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-14.75,	1147.7,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	103.25,	1262.1,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	136,	1160.75,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-14.75,	1076.2,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	46.25,	1004.7,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	202.75,	956.75,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	-53.3,	888.5,	1,	0,	0,	1,	61,	71.5) );	}}