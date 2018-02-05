package com.gt.towers.battle.fieldes;
class Quest_0 extends FieldData
{
	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")
	{
		super(index, name, times, introNum, startNum, endNum);
		// places
		places.push( new PlaceData( 0,	716.85,	1374.35,	13,	0,	"1",	true,	0	) );
		places.push( new PlaceData( 1,	525.15,	1003.1,	1,	-1,	"0,2",	false,	1	) );
		places.push( new PlaceData( 2,	811.25,	731.6,	1,	-1,	"1,3",	true,	-3	) );
		places.push( new PlaceData( 3,	463.1,	583.1,	1,	1,	"2",	true,	-3	) );

#if flash
		// images
		images.push( new ImageData( "road-h"	,	464.2,	541.45,	0.913955688476563,	0.405792236328125,	-0.405792236328125,	0.913955688476563) );
		images.push( new ImageData( "road-v"	,	791.9,	691.55,	0.6888427734375,	0.724899291992188,	-0.724899291992188,	0.6888427734375) );
		images.push( new ImageData( "road-v"	,	499.65,	1058.5,	0.882965087890625,	-0.469467163085938,	0.469467163085938,	0.882965087890625,	44.4,	201.5) );
		images.push( new ImageData( "bush-0"	,	397.15,	772.3,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "bush-7"	,	741.85,	1178.6,	1,	0,	0,	1,	41.5,	19) );
		images.push( new ImageData( "bush-4"	,	266.6,	1286.5,	1.50004577636719,	0,	0,	1.50004577636719,	35.55,	28) );
		images.push( new ImageData( "rock-0"	,	653.95,	1620.75,	1,	0,	0,	1,	39.5,	17.5) );
		images.push( new ImageData( "building-plot"	,	412.85,	921.9,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	604.55,	1291.85,	1,	0,	0,	1) );
		images.push( new ImageData( "hole-2"	,	612.7,	390,	1,	0,	0,	1,	51,	34) );
		images.push( new ImageData( "building-plot"	,	697.65,	650.4,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	352.1,	499.3,	1,	0,	0,	1) );
		images.push( new ImageData( "bush-4"	,	123.35,	498.65,	1,	0,	0,	1) );
		images.push( new ImageData( "bush-5"	,	186.55,	581.9,	1,	0,	0,	1) );
		images.push( new ImageData( "bush-1"	,	154.4,	612,	1,	0,	0,	1) );
		images.push( new ImageData( "bush-5"	,	168.4,	562.65,	1,	0,	0,	1) );
		images.push( new ImageData( "bush-1"	,	220.1,	600.65,	1,	0,	0,	1) );
		images.push( new ImageData( "bush-1"	,	368.15,	825.3,	1,	0,	0,	1) );
		images.push( new ImageData( "bush-4"	,	350.6,	749.5,	1,	0,	0,	1) );
#end
	}
}