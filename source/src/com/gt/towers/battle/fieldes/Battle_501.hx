package com.gt.towers.battle.fieldes;class Battle_501 extends FieldData{	public function new(index:Int, name:String, introNum:String="", startNum:String="", endNum:String="", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	825,	620,	1,	-1,	"7,4,2",	true,	-3	) );		places.push( new PlaceData( 1,	540,	1300,	1,	-1,	"6,2,5,4",	true,	-3	) );		places.push( new PlaceData( 2,	540,	620,	1,	-1,	"0,1,7,3",	true,	-3	) );		places.push( new PlaceData( 3,	255,	620,	1,	-1,	"2,7,5",	true,	-3	) );		places.push( new PlaceData( 4,	825,	1300,	1,	-1,	"0,1,6",	true,	-3	) );		places.push( new PlaceData( 5,	255,	1300,	1,	-1,	"1,3,6",	true,	-3	) );		places.push( new PlaceData( 6,	540,	1500,	11,	0,	"1,4,5",	true,	-3	) );		places.push( new PlaceData( 7,	540,	420,	11,	1,	"0,2,3",	true,	-3	) );#if flash		// images		images.push( new ImageData( "tree-0"	,	-52.3,	530.25,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	514.15,	458.85,	0.49993896484375,	-0.86602783203125,	0.86602783203125,	0.49993896484375) );		images.push( new ImageData( "road-v"	,	526.9,	379.25,	0.5,	0.866012573242188,	-0.866012573242188,	0.5) );		images.push( new ImageData( "road-v"	,	177.9,	1346.05,	0.49993896484375,	-0.86602783203125,	0.86602783203125,	0.49993896484375) );		images.push( new ImageData( "road-v"	,	842.9,	1268.9,	0.500015258789063,	0.865997314453125,	-0.865997314453125,	0.500015258789063) );		images.push( new ImageData( "road-h"	,	288.05,	1256.85,	1.17662048339844,	0,	0,	1,	207.5,	39.5) );		images.push( new ImageData( "road-h"	,	288.05,	581.35,	1.17662048339844,	0,	0,	1,	207.5,	39.5) );		images.push( new ImageData( "road-v"	,	495.5,	418.25,	1,	0,	0,	1.51663208007813,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	494.35,	882.15,	1,	0,	0,	1.59677124023438,	44.5,	201.5) );		images.push( new ImageData( "building-plot"	,	429,	1237,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	557,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	1437,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	777.05,	585.35,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	777.05,	913.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	711.7,	1237,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	711.7,	557,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	211.55,	585.35,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	211.55,	913.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	146.2,	1237,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	146.2,	557,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	355.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	89.55,	826.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-14.55,	771.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-32.45,	963.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-14.55,	877.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	18.75,	864.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	18.75,	970.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-13.95,	880.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-9.2,	473.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-27.1,	666.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-33.25,	1175.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-54.8,	1352.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-54.8,	1280.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-27.1,	1420,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-27.1,	1401.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-32.45,	1035.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-9.2,	579.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	44.75,	872.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	44.75,	854.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	83.4,	936.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	19.35,	973.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	61.85,	1200.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	61.85,	1128.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	89.55,	1268.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	89.55,	1249.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-14.55,	734.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	49.5,	465.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	49.5,	447.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	88.15,	530.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	24.1,	567.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	88.15,	616.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	6.2,	759.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	85.1,	744.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	0.05,	1268.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-21.5,	1374.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	0.85,	1128.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	24.1,	673.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	33.9,	1348.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-52.3,	387.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	45.05,	337.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-19,	374.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	45.05,	424.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	343.65,	868,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	300.55,	781.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	397.9,	732.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	333.85,	769.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	397.9,	818.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	300.55,	924.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	376.95,	961.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	343.65,	973.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	587.2,	1029.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	663.6,	1066.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	630.3,	1078.95,	1,	0,	0,	1) );		images.push( new ImageData( "rock-1"	,	836.15,	938.15,	1,	0,	0,	1) );		images.push( new ImageData( "rock-2"	,	675.75,	553.75,	1,	0,	0,	1) );		images.push( new ImageData( "rock-5"	,	640.75,	663.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	651,	809.3,	1,	0,	0,	1) );#end	}}