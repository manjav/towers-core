package com.gt.towers.battle.fieldes;
class Quest_7 extends FieldData
{
	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")
	{
		super(index, name, times, introNum, startNum, endNum);
		// places
		places.push( new PlaceData( 0,	752.8,	582.5,	1,	-1,	"4,3",	true,	-3	) );
		places.push( new PlaceData( 1,	313.25,	1416.75,	11,	0,	"2",	true,	-3	) );
		places.push( new PlaceData( 2,	757,	1424.4,	1,	-1,	"1,4",	true,	-3	) );
		places.push( new PlaceData( 3,	313.95,	705.2,	11,	1,	"0",	true,	-3	) );
		places.push( new PlaceData( 4,	752.8,	1122.15,	1,	-1,	"0,2",	true,	-3	) );

#if flash
		// images
		images.push( new ImageData( "rock-4"	,	379.15,	1007.3,	1,	0,	0,	1,	64.5,	23) );
		images.push( new ImageData( "road-v"	,	710.4,	623,	1,	0,	0,	1.89816284179688,	44.5,	201.5) );
		images.push( new ImageData( "road-v"	,	712.3,	548.35,	0.25885009765625,	0.965911865234375,	-0.965911865234375,	0.25885009765625) );
		images.push( new ImageData( "road-h"	,	379.15,	1381.7,	0.81072998046875,	0,	0,	1,	207.55,	39.5) );
		images.push( new ImageData( "tree-0"	,	158.4,	170.95,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	-1.3,	33.6,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	76.95,	275.8,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	-8.1,	223.7,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	11.1,	368.75,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	169.7,	275.8,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "bush-0"	,	916.1,	818.25,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "tree-0"	,	80.9,	1581.85,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "building-plot"	,	646,	1341.9,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	199.75,	623,	1,	0,	0,	1) );
		images.push( new ImageData( "bush-7"	,	377.2,	904.8,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	636.2,	1041.95,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	338,	161.3,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	259.4,	335.7,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	151.65,	420.85,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	58.85,	436.35,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	-40.8,	504.8,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	551.15,	234.6,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	259.4,	420.85,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	167.85,	500.6,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	76.95,	122.95,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	197.1,	40.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	352.55,	0,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	-15.3,	660.95,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	58.85,	698.05,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	35.9,	852,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	11.1,	973.45,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	49.4,	1048.1,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	608.4,	122.95,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "rock-0"	,	627.9,	1648.3,	1,	0,	0,	1,	39.55,	17.5) );
		images.push( new ImageData( "tree-0"	,	444.95,	146,	1,	0,	0,	1,	61,	71.55) );
		images.push( new ImageData( "tree-0"	,	468.25,	707.9,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	444.95,	353.55,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	641.8,	0,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "building-plot"	,	641.8,	500.6,	1,	0,	0,	1,	111,	63) );
		images.push( new ImageData( "building-plot"	,	200.3,	1334.25,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	447.4,	223.7,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	470.3,	1200,	1.2669677734375,	0,	0,	1.2669677734375,	54.5,	56) );
		images.push( new ImageData( "tree-1"	,	535.3,	35.15,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-2"	,	692.85,	234.6,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-1"	,	259.4,	234.6,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-1"	,	-15.3,	772.95,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-1"	,	100.9,	934.55,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-1"	,	-53.1,	1122.65,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-2"	,	382.8,	305.75,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-2"	,	134.1,	384.7,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-2"	,	100.9,	539.05,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-1"	,	93.7,	588.9,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-2"	,	88.3,	800.45,	1,	0,	0,	1) );
		images.push( new ImageData( "bush-7"	,	783.95,	1208.4,	1,	0,	0,	1) );
#end
	}
}