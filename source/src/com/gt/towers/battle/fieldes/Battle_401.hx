package com.gt.towers.battle.fieldes;class Battle_401 extends FieldData{	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")	{		super(index, name, times, introNum, startNum, endNum);		// places		places.push( new PlaceData( 0,	320,	1200,	1,	-1,	"5",	true,	-3	) );		places.push( new PlaceData( 1,	760,	1400,	1,	-1,	"2,6",	true,	-3	) );		places.push( new PlaceData( 2,	320,	1540,	11,	0,	"1",	true,	-3	) );		places.push( new PlaceData( 3,	320,	520,	1,	-1,	"5,7",	true,	-3	) );		places.push( new PlaceData( 4,	760,	726.65,	1,	-1,	"6",	true,	-3	) );		places.push( new PlaceData( 5,	320,	860,	1,	-1,	"0,3,6",	true,	-3	) );		places.push( new PlaceData( 6,	760,	1063.3,	1,	-1,	"1,4,5",	true,	-3	) );		places.push( new PlaceData( 7,	760,	390,	11,	1,	"3",	true,	-3	) );#if flash		// images		images.push( new ImageData( "tree-0"	,	61.95,	700.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	29,	280.35,	1,	0,	0,	1) );		images.push( new ImageData( "hole-2"	,	483.75,	307.25,	1,	0,	0,	1,	51,	34) );		images.push( new ImageData( "tree-0"	,	192.75,	1275.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	159.7,	650.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	66.4,	781.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-4.4,	820.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-4.4,	926.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	60.25,	892.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	70.75,	984.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	38.7,	1084.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	18.65,	410.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	70.75,	472.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	0.95,	522.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	64.7,	572.4,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	0.95,	628.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	950.9,	681.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	818.65,	802.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	950.9,	793.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	977.7,	884.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	649.1,	491.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	579.45,	515.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	933,	392.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	908.95,	1094.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	427.6,	1714.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	974.25,	1177.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	915.1,	1338.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	854.1,	1244,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	874.55,	929.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	954.95,	522.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	882.05,	600.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	971,	1013.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	569.75,	1634.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	51.75,	1634.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	960,	280.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	893.65,	185.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	495.7,	101.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	360.35,	107.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	192.75,	185.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	244.3,	79.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	290.1,	241.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	151,	280.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	776.6,	160.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	854.1,	442.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	810.75,	1416.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	882.05,	1507.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	617,	1507.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	765.55,	1573.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	688.45,	1683.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	460.75,	1522.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	460.75,	1611.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	360.35,	1625.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	286.55,	1658.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	105.05,	1416.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	83.75,	203.65,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	476.05,	1227.45,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	709.35,	1481.9,	1,	0,	0,	1) );		images.push( new ImageData( "chair-1"	,	576.9,	1227.45,	1,	0,	0,	1) );		images.push( new ImageData( "chair-0"	,	503.4,	1383.5,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	832.7,	1120.15,	1,	0,	0,	1) );		images.push( new ImageData( "bush-6"	,	230.15,	911.45,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	842.25,	588.3,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	202.4,	1564.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	395.55,	194.4,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	569.75,	191.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	46.45,	104.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	643.55,	138.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	709.35,	48.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	508,	554.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	814.25,	1125.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	268.7,	1308.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	38.7,	1155.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	66.4,	1223.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	117.05,	1295.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	41,	1325.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	467.9,	606.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	460.75,	675.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	503.4,	740.85,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	341.3,	471.8,	0.960098266601563,	-0.279647827148438,	0.279647827148438,	0.960098266601563) );		images.push( new ImageData( "road-h"	,	341.3,	1487.9,	0.960098266601563,	-0.279647827148438,	0.279647827148438,	0.960098266601563) );		images.push( new ImageData( "road-h"	,	367.05,	837.95,	0.906494140625,	0.422210693359375,	-0.422210693359375,	0.906494140625,	207.55,	39.4) );		images.push( new ImageData( "road-v"	,	275.55,	559.65,	1,	0,	0,	1.44769287109375,	44.5,	201.5) );		images.push( new ImageData( "road-v"	,	712.15,	762.35,	1,	0,	0,	1.46270751953125,	44.5,	201.6) );		images.push( new ImageData( "building-plot"	,	209.05,	1117.15,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	209.05,	778.95,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	198.75,	440.75,	1.0927734375,	0,	0,	1,	111,	63) );		images.push( new ImageData( "building-plot"	,	645.65,	306.4,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	645.65,	1315.9,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	645.65,	979.4,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	204.15,	1455.35,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	645.65,	642.9,	1,	0,	0,	1) );#end	}}