package com.gt.towers.battle.fieldes;
class Quest_5 extends FieldData
{
	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")
	{
		super(index, name, times, introNum, startNum, endNum);
		// places
		places.push( new PlaceData( 0,	781.5,	400.3,	1,	1,	"1,4",	true,	-3	) );
		places.push( new PlaceData( 1,	496.6,	919.9,	1,	-1,	"0,2,4",	true,	-3	) );
		places.push( new PlaceData( 2,	310,	1274.75,	1,	-1,	"1,3",	true,	-3	) );
		places.push( new PlaceData( 3,	673.95,	1416.4,	12,	0,	"2",	true,	-3	) );
		places.push( new PlaceData( 4,	849.25,	759.6,	1,	-1,	"0,1",	true,	-3	) );

#if flash
		// images
		images.push( new ImageData( "bush-1"	,	873.8,	1172.9,	1,	0,	0,	1) );
		images.push( new ImageData( "road-h"	,	463.75,	900.1,	0.902969360351563,	-0.426681518554688,	0.426681518554688,	0.902969360351563,	207.4,	39.55) );
		images.push( new ImageData( "rock-0"	,	810.75,	1085.15,	1,	0,	0,	1,	39.5,	17.5) );
		images.push( new ImageData( "road-v"	,	450.75,	919.3,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		images.push( new ImageData( "road-h"	,	332.95,	1240,	0.920486450195313,	0.3907470703125,	-0.3907470703125,	0.920486450195313,	207.5,	39.45) );
		images.push( new ImageData( "building-plot"	,	383.1,	838.65,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	195.75,	1193.85,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	560.95,	1335.4,	1,	0,	0,	1) );
		images.push( new ImageData( "road-v"	,	737.85,	394.15,	0.983688354492188,	-0.179885864257813,	0.179885864257813,	0.983688354492188) );
		images.push( new ImageData( "road-v"	,	716.9,	427.65,	0.87652587890625,	0.481353759765625,	-0.579254150390625,	1.0548095703125,	44.45,	201.45) );
		images.push( new ImageData( "building-plot"	,	668.5,	317.3,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	734.25,	676.6,	1,	0,	0,	1) );
		images.push( new ImageData( "rock-6-"	,	430.75,	205.95,	1,	0,	0,	1,	54.5,	48.5) );
		images.push( new ImageData( "bush-7"	,	727.6,	537.45,	1,	0,	0,	1,	41.55,	19) );
		images.push( new ImageData( "bush-4"	,	436.75,	1131.05,	1,	0,	0,	1,	35.55,	28) );
		images.push( new ImageData( "bush-4"	,	381.75,	800.9,	1,	0,	0,	1,	35.6,	28) );
		images.push( new ImageData( "bush-0"	,	368.75,	756.8,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "bush-0"	,	722.35,	1004.6,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "bush-0"	,	789.35,	945.05,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "bush-0"	,	761.5,	1192.8,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "bush-7"	,	362.6,	770.1,	1,	0,	0,	1,	41.5,	19) );
		images.push( new ImageData( "bush-4"	,	888.25,	997.15,	1,	0,	0,	1,	35.5,	28) );
		images.push( new ImageData( "tree-0"	,	6.45,	529.55,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	36.55,	298.25,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	-48,	199.75,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	-57.9,	-35.2,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	22.35,	410.25,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	-63.7,	336.2,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "bush-2"	,	849.05,	1122.45,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	-96.4,	577.45,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	22.35,	87.1,	1.17481994628906,	0,	0,	1.17481994628906,	61,	71.5) );
		images.push( new ImageData( "tree-1"	,	131.35,	411.45,	1,	0,	0,	1,	44.5,	45.5) );
		images.push( new ImageData( "tree-1"	,	100.75,	501.75,	1,	0,	0,	1,	44.5,	45.5) );
		images.push( new ImageData( "tree-1"	,	51.55,	632.05,	1,	0,	0,	1,	44.5,	45.5) );
		images.push( new ImageData( "tree-1"	,	-29.75,	705.25,	1.27581787109375,	0,	0,	1.27581787109375,	44.5,	45.5) );
		images.push( new ImageData( "tree-2"	,	202.7,	357.75,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-2"	,	188.9,	502.45,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-2"	,	115.45,	578.55,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-2"	,	68.35,	707.1,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-2"	,	308.7,	99.2,	0.800003051757813,	0,	0,	0.800003051757813,	31.5,	31.5) );
		images.push( new ImageData( "tree-0"	,	100.75,	-57.5,	1.1748046875,	0,	0,	1.1748046875,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	142.9,	74.1,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-1"	,	235.75,	119.7,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-1"	,	213.1,	8.15,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-2"	,	302.1,	36.2,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-2"	,	281.75,	-26.8,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-2"	,	367.35,	0,	0.800003051757813,	0,	0,	0.800003051757813,	31.5,	31.5) );
		images.push( new ImageData( "tree-0"	,	134.4,	176.9,	0.875,	0,	0,	0.875,	61.05,	71.5) );
		images.push( new ImageData( "tree-1"	,	124.3,	257.1,	1.09521484375,	0,	0,	1.09521484375,	44.5,	45.5) );
		images.push( new ImageData( "tree-2"	,	213.1,	233.95,	1,	0,	0,	1) );
#end
	}
}