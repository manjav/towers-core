package com.gt.towers.battle.fieldes;
class Quest_1 extends FieldData
{
	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")
	{
		super(index, name, times, introNum, startNum, endNum);
		// places
		places.push( new PlaceData( 0,	746.25,	1323.6,	1,	0,	"2",	true,	0	) );
		places.push( new PlaceData( 1,	277.05,	1266.75,	1,	0,	"2",	true,	1	) );
		places.push( new PlaceData( 2,	422.6,	1025.15,	1,	-1,	"0,1,3",	true,	2	) );
		places.push( new PlaceData( 3,	729.2,	505.55,	1,	1,	"2",	false,	-3	) );

#if flash
		// images
		images.push( new ImageData( "road-v"	,	700.85,	459.05,	0.865997314453125,	0.5,	-0.5,	0.865997314453125,	44.45,	201.5) );
		images.push( new ImageData( "road-h"	,	475.9,	1017.8,	0.66693115234375,	0.621932983398438,	-0.681976318359375,	0.731338500976563,	207.45,	39.45) );
		images.push( new ImageData( "bush-0"	,	579.25,	995.3,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "bush-7"	,	731.2,	983.15,	1,	0,	0,	1,	41.45,	19) );
		images.push( new ImageData( "chair-1"	,	383.55,	590.6,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );
		images.push( new ImageData( "rock-0"	,	732.6,	1052.25,	1,	0,	0,	1,	39.5,	17.5) );
		images.push( new ImageData( "road-v"	,	558.05,	703.25,	0.86602783203125,	0.500015258789063,	-0.500015258789063,	0.86602783203125,	44.55,	201.55) );
		images.push( new ImageData( "road-v"	,	429.95,	916.25,	0.865997314453125,	0.5,	-0.5,	0.865997314453125,	44.5,	201.55) );
		images.push( new ImageData( "building-plot"	,	310.7,	948.15,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	164.05,	1183.75,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	631.25,	1242.6,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	616.2,	424.55,	1,	0,	0,	1) );
		images.push( new ImageData( "bush-0"	,	333.5,	1679.7,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "bush-0"	,	924.85,	1420.25,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "bush-0"	,	189.75,	1471,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "bush-0"	,	876.7,	1134,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "rock-5"	,	933.7,	900.95,	1,	0,	0,	1,	62,	36.5) );
		images.push( new ImageData( "bush-1"	,	134.3,	1063.3,	1,	0,	0,	1,	40.5,	26) );
		images.push( new ImageData( "bush-2"	,	979.65,	1444.45,	1,	0,	0,	1,	31,	26.55) );
		images.push( new ImageData( "bush-7"	,	756.1,	1098.4,	1,	0,	0,	1,	41.5,	19) );
		images.push( new ImageData( "bush-4"	,	285.9,	831.15,	1.0360107421875,	0.438522338867188,	-0.438522338867188,	1.0360107421875,	35.55,	28) );
		images.push( new ImageData( "bush-1"	,	862.05,	1378.7,	1.125,	0,	0,	1.125,	40.55,	26) );
		images.push( new ImageData( "bush-1"	,	721.5,	733.3,	1,	0,	0,	1,	40.55,	26) );
		images.push( new ImageData( "bush-4"	,	795.65,	1015.15,	1,	0,	0,	1,	35.5,	28) );
		images.push( new ImageData( "tree-3"	,	204.1,	178.8,	1.11715698242188,	0,	0,	1.11715698242188) );
		images.push( new ImageData( "tree-4"	,	-1.3,	223.2,	1.11715698242188,	0,	0,	1.11715698242188) );
		images.push( new ImageData( "tree-3"	,	31.55,	344.9,	1.11715698242188,	0,	0,	1.11715698242188) );
		images.push( new ImageData( "tree-4"	,	108.2,	213.35,	1.11715698242188,	0,	0,	1.11715698242188) );
		images.push( new ImageData( "tree-3"	,	-8.75,	80.45,	1.11715698242188,	0,	0,	1.11715698242188) );
		images.push( new ImageData( "tree-4"	,	189.75,	87.85,	1.11715698242188,	0,	0,	1.11715698242188) );
		images.push( new ImageData( "tree-3"	,	127.6,	6.55,	1.11715698242188,	0,	0,	1.11715698242188) );
		images.push( new ImageData( "tree-4"	,	275,	0,	1.11715698242188,	0,	0,	1.11715698242188) );
		images.push( new ImageData( "tree-3"	,	310.7,	181.55,	1.11715698242188,	0,	0,	1.11715698242188) );
		images.push( new ImageData( "tree-4"	,	471.5,	45.9,	1.11715698242188,	0,	0,	1.11715698242188) );
		images.push( new ImageData( "tree-3"	,	331.5,	71.45,	1.11715698242188,	0,	0,	1.11715698242188) );
		images.push( new ImageData( "tree-4"	,	556.5,	13.25,	1.11715698242188,	0,	0,	1.11715698242188) );
		images.push( new ImageData( "tree-3"	,	150.2,	327.6,	1.11715698242188,	0,	0,	1.11715698242188) );
		images.push( new ImageData( "tree-4"	,	81.75,	132.9,	1.11715698242188,	0,	0,	1.11715698242188) );
		images.push( new ImageData( "tree-3"	,	240.7,	281.3,	1.11715698242188,	0,	0,	1.11715698242188) );
		images.push( new ImageData( "tree-4"	,	451.15,	142.75,	1.11715698242188,	0,	0,	1.11715698242188) );
		images.push( new ImageData( "tree-3"	,	556.5,	91.65,	1.11715698242188,	0,	0,	1.11715698242188) );
		images.push( new ImageData( "tree-4"	,	-8.75,	451.9,	1.11715698242188,	0,	0,	1.11715698242188) );
		images.push( new ImageData( "tree-3"	,	665.6,	-22.45,	1.11715698242188,	0,	0,	1.11715698242188) );
		images.push( new ImageData( "tree-4"	,	407.5,	-29.1,	1.11715698242188,	0,	0,	1.11715698242188) );
#end
	}
}