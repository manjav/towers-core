package com.gt.towers.battle.fieldes;class Quest_21 extends FieldData{	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")	{		super(index, name, times, introNum, startNum, endNum);		// places		places.push( new PlaceData( 0,	814.6,	1218.2,	1,	-1,	"1,4,6",	true,	-3	) );		places.push( new PlaceData( 1,	629.45,	1506.55,	1,	0,	"0,4",	true,	-3	) );		places.push( new PlaceData( 2,	402.7,	315.85,	13,	1,	"5,3",	true,	-3	) );		places.push( new PlaceData( 3,	755.3,	498.8,	1,	-1,	"2,5,6",	true,	-3	) );		places.push( new PlaceData( 4,	312,	1218.2,	1,	-1,	"0,1,6",	true,	-3	) );		places.push( new PlaceData( 5,	295.65,	633.25,	1,	-1,	"2,3,6",	true,	-3	) );		places.push( new PlaceData( 6,	552,	917.65,	44,	-1,	"0,3,4,5",	true,	-3	) );#if flash		// images		images.push( new ImageData( "road-v"	,	538.45,	856.25,	0.79296875,	0.609237670898438,	-0.609237670898438,	0.79296875) );		images.push( new ImageData( "road-v"	,	287.7,	689.1,	0.751327514648438,	-0.659912109375,	1.12625122070313,	1.28225708007813,	44.55,	201.55) );		images.push( new ImageData( "road-h"	,	399.85,	266,	0.881790161132813,	0.471603393554688,	-0.471603393554688,	0.881790161132813) );		images.push( new ImageData( "road-v"	,	692.1,	518.45,	0.910140991210938,	0.414230346679688,	-0.414230346679688,	0.910140991210938) );		images.push( new ImageData( "road-h"	,	371.75,	1178.95,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	796.35,	1159.75,	0.846160888671875,	0.532928466796875,	-0.532928466796875,	0.846160888671875) );		images.push( new ImageData( "road-v"	,	279.2,	1251.85,	0.663345336914063,	-0.748260498046875,	0.748260498046875,	0.663345336914063) );		images.push( new ImageData( "road-v"	,	367.1,	275.45,	0.951141357421875,	0.308700561523438,	-0.308700561523438,	0.951141357421875) );		images.push( new ImageData( "road-h"	,	328.6,	586.25,	0.957901000976563,	-0.28704833984375,	0.28704833984375,	0.957901000976563) );		images.push( new ImageData( "building-plot"	,	201.05,	1134.6,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	293.4,	234.35,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	643.3,	415.2,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	178.85,	552.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	436,	831.95,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	697.95,	1131.6,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	518.6,	1421.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-16.95,	11.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	92.05,	-34.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	421.7,	-87.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	981.8,	-25.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	193.05,	-77.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	230.6,	0,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	158.25,	57.8,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	639.8,	153.45,	1,	0,	0,	1) );		images.push( new ImageData( "bush-0"	,	882.7,	1353.55,	1,	0,	0,	1,	30.05,	18) );		images.push( new ImageData( "bush-4"	,	853.2,	487.2,	1,	0,	0,	1,	35.6,	28) );		images.push( new ImageData( "chair-1"	,	611.2,	330.4,	1.12567138671875,	0,	0,	1.12567138671875,	45.05,	25) );		images.push( new ImageData( "bush-4"	,	126.25,	880.3,	1,	0,	0,	1,	35.55,	28) );		images.push( new ImageData( "chair-0"	,	571.1,	301.6,	1.12567138671875,	0,	0,	1.12567138671875,	19.55,	14.5) );		images.push( new ImageData( "bush-7"	,	151.25,	916.3,	1,	0,	0,	1,	41.5,	19) );		images.push( new ImageData( "bush-0"	,	730.7,	136.6,	1,	0,	0,	1,	30,	18) );		images.push( new ImageData( "tree-0"	,	458.8,	24.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	559.95,	-25.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	222.2,	143.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	63.55,	276.05,	1,	0,	0,	1) );		images.push( new ImageData( "bush-4"	,	812.95,	704.15,	1,	0,	0,	1) );		images.push( new ImageData( "bush-7"	,	504,	179.75,	1,	0,	0,	1,	41.45,	19) );		images.push( new ImageData( "tree-0"	,	-30.4,	479.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-40.15,	614.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	786.75,	-34.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	71.4,	396.45,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	925.7,	164.05,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	408.5,	1637.9,	1,	0,	0,	1,	39.5,	17.55) );		images.push( new ImageData( "tree-0"	,	816.7,	98.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	668.95,	31.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	525.15,	109.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	895.75,	41.45,	1,	0,	0,	1,	61,	71.5) );		images.push( new ImageData( "tree-0"	,	49.25,	123.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	362.6,	28.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	677.75,	-80.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	1004.75,	104.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-40.15,	235.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	139.6,	189.6,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-80.15,	112,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-30.4,	375.2,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	990.7,	261.3,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	-40.15,	726.1,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	990.7,	1016.15,	1,	0,	0,	1,	39.55,	17.5) );		images.push( new ImageData( "bush-4"	,	729.8,	729.45,	1.7452392578125,	0,	0,	1.7452392578125) );		images.push( new ImageData( "bush-3"	,	493.5,	666.7,	1,	0,	0,	1,	28.55,	16.55) );		images.push( new ImageData( "tree-0"	,	416.15,	396.45,	1,	0,	0,	1) );#end	}}