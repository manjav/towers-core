package com.gt.towers.battle.fieldes;class Battle_609 extends FieldData{	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")	{		super(index, name, times, introNum, startNum, endNum);		// places		places.push( new PlaceData( 0,	540,	390,	1,	-1,	"2,1",	true,	-3	) );		places.push( new PlaceData( 1,	320,	580,	12,	1,	"0",	true,	-3	) );		places.push( new PlaceData( 2,	760,	580,	1,	-1,	"0,3,5",	true,	-3	) );		places.push( new PlaceData( 3,	540,	770,	13,	-1,	"2,6",	true,	-3	) );		places.push( new PlaceData( 4,	320,	960,	43,	-1,	"7",	true,	-3	) );		places.push( new PlaceData( 5,	760,	960,	43,	-1,	"2",	true,	-3	) );		places.push( new PlaceData( 6,	540,	1150,	13,	-1,	"3,7",	true,	-3	) );		places.push( new PlaceData( 7,	320,	1340,	1,	-1,	"4,6,9",	true,	-3	) );		places.push( new PlaceData( 8,	760,	1340,	12,	0,	"9",	true,	-3	) );		places.push( new PlaceData( 9,	540,	1530,	1,	-1,	"7,8",	true,	-3	) );#if flash		// images		images.push( new ImageData( "rock-0"	,	301.55,	324.25,	1,	0,	0,	1) );		images.push( new ImageData( "hole-2"	,	795.35,	346.95,	1,	0,	0,	1,	51,	34) );		images.push( new ImageData( "bush-4"	,	780.95,	1660.25,	1,	0,	0,	1) );		images.push( new ImageData( "bush-5"	,	726.6,	1700.25,	1,	0,	0,	1) );		images.push( new ImageData( "bush-3"	,	636.1,	1677.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	255.7,	697.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	863.55,	659.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	960,	1024.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	212,	1465.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	958.15,	1166.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	958.15,	1512.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	138.15,	1548.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	150.4,	1400.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	109,	771.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	972.55,	574.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	972.55,	709.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	887.4,	482.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	64.05,	1454.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	911.75,	801.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	851,	1390.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	830,	200.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	960,	142.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	192.55,	100.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	17.15,	1548.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	93.55,	66.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	80.3,	1630.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	225.95,	1623.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	232.9,	212.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	960,	254.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	946.05,	382.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	960,	1353.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	403.35,	1637.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-2.25,	622.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	727.95,	1513,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	919.75,	54.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	851,	-11.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	721,	11.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-1.3,	-32.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	810.75,	79.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	686.35,	235.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	701.75,	100.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	612,	54.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-32.65,	740.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	146.7,	313.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	4.85,	906.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-32.65,	411.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	17.15,	1014.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	497.75,	-45.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	606.75,	-45.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	470.45,	66.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	294.35,	30.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	24.4,	278.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	374.9,	-25.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	80.3,	477,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	138.15,	1013.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	215.75,	-25.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	113.85,	-25.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-15.45,	66.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	41.4,	150,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	863.55,	1588.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-44.95,	1436.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	4.85,	1342.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	0,	1118.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	126.15,	1128.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-1.3,	1237.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	106.75,	1241.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	782.5,	1024.5,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	844.5,	1126.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	887.4,	1278.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	891.5,	928.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	123.9,	606.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	701.75,	1079.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	587.15,	150,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	429,	183,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	334.95,	123.75,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	493.7,	764.85,	0.67425537109375,	-0.583160400390625,	0.654159545898438,	0.75634765625,	207.45,	39.4) );		images.push( new ImageData( "road-h"	,	284.5,	1331.5,	0.67425537109375,	-0.583160400390625,	0.654159545898438,	0.75634765625,	207.45,	39.4) );		images.push( new ImageData( "road-h"	,	270.3,	578.75,	0.67425537109375,	-0.583160400390625,	0.654159545898438,	0.75634765625,	207.45,	39.4) );		images.push( new ImageData( "road-h"	,	817.45,	570.8,	-0.720748901367188,	-0.623367309570313,	-0.654159545898438,	0.75634765625,	207.4,	39.55) );		images.push( new ImageData( "road-h"	,	477.3,	1534.95,	0.761428833007813,	-0.648239135742188,	0.648239135742188,	0.761428833007813) );		images.push( new ImageData( "road-h"	,	602.35,	1534.95,	-0.761428833007813,	-0.648239135742188,	-0.648239135742188,	0.761428833007813) );		images.push( new ImageData( "building-plot"	,	648,	1257.95,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	1447,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	648,	878.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	648,	499.7,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	306.3,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	1066.7,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	429,	686.5,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	207,	1257.95,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	207,	878.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	207,	499.7,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	495.5,	754.3,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	716.2,	530.85,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	275.7,	949,	1,	0,	0,	1) );#end	}}