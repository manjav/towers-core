package com.gt.towers.battle.fieldes;
class Quest_1 extends FieldData
{
	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")
	{
		super(index, name, hasStart, hasIntro, hasFinal, times);
		// create places
		places.push( new PlaceData( 0,	551.6,	1041.15,	11,	-1,	"2,1",	true,	11	) );
		places.push( new PlaceData( 1,	779.65,	1471.45,	12,	0,	"0",	true,	10	) );
		places.push( new PlaceData( 2,	402.65,	771.25,	1,	1,	"0",	true,	-3	) );
		// create images
		images.push( new ImageData( "road-v"	,	392.3,	811.5,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );
		images.push( new ImageData( "road-v"	,	558.45,	1143.9,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );
		images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		images.push( new ImageData( "bush-0"	,	573.05,	667.1,	2.25,	0,	0,	2.25,	30,	18) );
		images.push( new ImageData( "bush-7"	,	810.75,	938.2,	2.25,	0,	0,	2.25,	41.5,	19) );
		images.push( new ImageData( "bush-4"	,	307.45,	387.8,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		images.push( new ImageData( "rock-0"	,	393.8,	1257.8,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		images.push( new ImageData( "rock-3"	,	510.8,	1224.1,	2.24998474121094,	0,	0,	2.24998474121094,	27,	15) );
		images.push( new ImageData( "building-plot"	,	440.6,	978.15,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	662.6,	1400.1,	1,	0,	0,	1) );
		images.push( new ImageData( "hole-1"	,	730.85,	874.1,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28.5) );
		images.push( new ImageData( "hole-2"	,	226.6,	900.95,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );
		images.push( new ImageData( "building-plot"	,	291.65,	708.25,	1,	0,	0,	1) );
	}
}