package com.gt.towers.battle.fieldes;class Battle_901 extends FieldData{	public function new(index:Int, name:String, introNum:String = "", startNum:String = "", endNum:String = "", times:String="")	{		super(index, name, introNum, startNum, endNum, times);		// places		places.push( new PlaceData( 0,	825,	620,	1,	-1,	"2,7,9",	true,	-3	) );		places.push( new PlaceData( 1,	540,	1300,	1,	-1,	"4,5,6,10,9",	true,	-3	) );		places.push( new PlaceData( 2,	540,	620,	1,	-1,	"0,9,10,3,7",	true,	-3	) );		places.push( new PlaceData( 3,	255,	620,	1,	-1,	"2,10,7",	true,	-3	) );		places.push( new PlaceData( 4,	825,	1300,	1,	-1,	"1,6,9",	true,	-3	) );		places.push( new PlaceData( 5,	255,	1300,	1,	-1,	"1,6,10",	true,	-3	) );		places.push( new PlaceData( 6,	540,	1500,	11,	0,	"1,4,5",	true,	-3	) );		places.push( new PlaceData( 7,	540,	420,	11,	1,	"0,2,3",	true,	-3	) );		places.push( new PlaceData( 8,	540,	960,	1,	-1,	"10,9",	true,	-3	) );		places.push( new PlaceData( 9,	825,	960,	41,	-1,	"0,1,2,4,8",	true,	-3	) );		places.push( new PlaceData( 10,	255,	960,	41,	-1,	"1,2,3,5,8",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-h"	,	332.25,	918.7,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	249.4,	994.55,	0.811935424804688,	-0.583709716796875,	0.583724975585938,	0.811935424804688) );		images.push( new ImageData( "road-v"	,	502.85,	1250.7,	1,	0,	0,	0.774932861328125,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	521.65,	649.8,	0.811935424804688,	-0.583709716796875,	0.583724975585938,	0.811935424804688) );		images.push( new ImageData( "road-v"	,	495.5,	360.45,	1,	0,	0,	0.774688720703125,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	448.6,	611,	0.866012573242188,	0.5,	-0.5,	0.866012573242188) );		images.push( new ImageData( "road-v"	,	758.6,	918.5,	0.866012573242188,	0.5,	-0.5,	0.866012573242188) );		images.push( new ImageData( "road-v"	,	514.15,	458.85,	0.49993896484375,	-0.86602783203125,	0.86602783203125,	0.49993896484375) );		images.push( new ImageData( "road-v"	,	526.9,	379.25,	0.5,	0.866012573242188,	-0.866012573242188,	0.5) );		images.push( new ImageData( "road-v"	,	177.9,	1346.05,	0.49993896484375,	-0.86602783203125,	0.86602783203125,	0.49993896484375) );		images.push( new ImageData( "road-v"	,	842.9,	1268.9,	0.500015258789063,	0.865997314453125,	-0.865997314453125,	0.500015258789063) );		images.push( new ImageData( "road-h"	,	288.05,	1256.85,	1.17662048339844,	0,	0,	1,	207.5,	39.5) );		images.push( new ImageData( "road-h"	,	288.05,	581.35,	1.17662048339844,	0,	0,	1,	207.5,	39.5) );		images.push( new ImageData( "background-0-l"	,	0,	3.1,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "building-plot"	,	429,	1237,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	557,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	1437,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	777.05,	585.35,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	777.05,	913.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	711.7,	1237,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	711.7,	557,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	211.55,	585.35,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	211.55,	913.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	146.2,	1237,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	146.2,	557,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	355.25,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	704,	897,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	897,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	144,	897,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-58.25,	530.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-20.5,	771.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-38.4,	963.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-20.5,	877.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	12.8,	864.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	12.8,	970.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-19.9,	880.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-15.15,	473.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-33.05,	666.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-39.2,	1175.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-60.75,	1352.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-60.75,	1280.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-33.05,	1420,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-33.05,	1401.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-38.4,	1035.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-15.15,	579.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	38.8,	872.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	38.8,	854.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	13.4,	973.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	55.9,	1200.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	55.9,	1128.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-20.5,	734.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	43.55,	465.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	43.55,	447.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	18.15,	567.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	0.25,	759.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-5.9,	1268.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-27.45,	1374.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-5.1,	1128.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	18.15,	673.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	27.95,	1348.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-58.25,	387.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-24.95,	374.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	39.1,	424.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	910.15,	547.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	947.9,	789,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	930,	981.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	947.9,	894.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	981.2,	882.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	981.2,	988.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	948.5,	898,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	953.25,	491.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	935.35,	683.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	929.2,	1192.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	907.65,	1369.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	907.65,	1298.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	935.35,	1437.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	935.35,	1419.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	930,	1053,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	953.25,	597.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1007.2,	890.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1007.2,	871.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	981.8,	991.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1024.3,	1218.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1024.3,	1146.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	947.9,	751.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1011.95,	483.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1011.95,	465.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	986.55,	585.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	968.65,	777.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	962.5,	1286.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	940.95,	1392.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	963.3,	1146.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	986.55,	691,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	996.35,	1366.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	910.15,	404.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	943.45,	392.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1007.5,	442.05,	1,	0,	0,	1) );#end	}}