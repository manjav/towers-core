package com.gt.towers.battle.fieldes;class Quest_28 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// create places		places.push( new PlaceData( 0,	552.75,	1213.85,	11,	-1,	"1,2,3",	true,	-3	) );		places.push( new PlaceData( 1,	539.55,	1508.35,	11,	0,	"0",	true,	-3	) );		places.push( new PlaceData( 2,	843.6,	1012.35,	11,	-1,	"0,3,4,7",	true,	-3	) );		places.push( new PlaceData( 3,	265.6,	1012.35,	11,	-1,	"0,2,4,6",	true,	-3	) );		places.push( new PlaceData( 4,	552.75,	865.75,	1,	-1,	"2,3,5",	true,	-3	) );		places.push( new PlaceData( 5,	552.75,	616.95,	11,	1,	"4,7,6",	true,	-3	) );		places.push( new PlaceData( 6,	302.8,	358.25,	1,	-1,	"3,5",	true,	-3	) );		places.push( new PlaceData( 7,	804.25,	358.25,	1,	-1,	"2,5",	true,	-3	) );		// create images		images.push( new ImageData( "road-v"	,	532.15,	843.65,	0.358367919921875,	0.933578491210938,	-0.79693603515625,	0.305923461914063,	44.5,	201.5) );		images.push( new ImageData( "road-h"	,	345.15,	976.4,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	508.7,	621.55,	1,	0.0000152587890625,	-0.0000152587890625,	0.660980224609375,	44.45,	201.5) );		images.push( new ImageData( "road-v"	,	261.7,	355.6,	0.996200561523438,	0.087158203125,	-0.14093017578125,	1.6107177734375,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	760.65,	363.4,	0.996200561523438,	-0.087158203125,	0.14093017578125,	1.6107177734375,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	553.75,	921.5,	0.406753540039063,	-0.913558959960938,	0.721038818359375,	0.321044921875,	44.5,	201.6) );		images.push( new ImageData( "road-v"	,	764.25,	314.85,	0.777130126953125,	0.629348754882813,	-0.629348754882813,	0.777130126953125,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	238.6,	345.6,	0.748519897460938,	-0.66314697265625,	0.66314697265625,	0.748519897460938) );		images.push( new ImageData( "road-v"	,	847.5,	954.85,	0.5877685546875,	0.809036254882813,	-0.809036254882813,	0.5877685546875,	44.45,	201.5) );		images.push( new ImageData( "road-v"	,	237.15,	1053.7,	0.5513916015625,	-0.834274291992188,	0.834274291992188,	0.5513916015625) );		images.push( new ImageData( "road-v"	,	509.3,	1229.25,	1.00003051757813,	0.0000152587890625,	-0.0000152587890625,	0.602401733398438,	44.5,	201.45) );		images.push( new ImageData( "background-0-l"	,	0,	3.1,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "rock-0"	,	421.7,	429.25,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "building-plot"	,	428.55,	1445.35,	1,	0,	0,	1) );		images.push( new ImageData( "hole-2"	,	322.15,	675,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );		images.push( new ImageData( "bush-7"	,	25.45,	547.95,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "rock-3"	,	76.85,	805.45,	2.24998474121094,	0,	0,	2.24998474121094,	27,	15) );		images.push( new ImageData( "building-plot"	,	732.6,	949.35,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	453.25,	1127.7,	1,	0,	0,	1.36746215820313,	111,	63) );		images.push( new ImageData( "building-plot"	,	146.9,	949.35,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	420.9,	820.4,	1.03466796875,	0,	0,	1,	111,	63) );		images.push( new ImageData( "building-plot"	,	441.75,	560.1,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	191.15,	301.35,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	681.15,	301.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	544.05,	198.95,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );		images.push( new ImageData( "rock-2"	,	701.7,	965.8,	1.50570678710938,	0,	0,	1.50570678710938,	17.5,	15.5) );		images.push( new ImageData( "rock-0"	,	768.6,	1026.05,	-0.831649780273438,	0,	0,	1,	39.5,	17.5) );		images.push( new ImageData( "rock-2"	,	344.85,	1022.85,	1.50570678710938,	0,	0,	1.50570678710938,	17.5,	15.5) );		images.push( new ImageData( "rock-1"	,	360.55,	971.65,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	25.45,	1210.9,	1.91656494140625,	0,	0,	1.91656494140625,	30,	18) );		images.push( new ImageData( "bush-7"	,	261.6,	1312.1,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	181.05,	1165.4,	1.91659545898438,	0,	0,	1.91659545898438,	35.55,	28) );		images.push( new ImageData( "hole-1"	,	101.65,	1246.85,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28.5) );		images.push( new ImageData( "tree-0"	,	1153.95,	1211.7,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );	}}