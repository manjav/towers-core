package com.gt.towers.battle.fieldes;

/**
 * ...
 * @author ...
 */
class Quest_0 extends FieldData 
{
	public function new(index:Int, name:String, hasIntro:Bool=false, hasFinal:Bool=false, times:String="") 
	{
		super(index, name, hasIntro, hasFinal, times);
		
		// create places
		places.push( new PlaceData( 0,	400,	690,	1,	1,	"1",	false,	1	) );
		places.push( new PlaceData( 1,	680,	1230,	12,	0,	"0",	true,	0	) );
		// create images
		images.push( new ImageData( "road-v"	,	330.2,	642.85,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );
		images.push( new ImageData( "road-v"	,	458.8,	902.45,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );
		images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		images.push( new ImageData( "bush-0"	,	190.05,	352.2,	2.2449951171875,	0,	0,	2.2449951171875,	30,	18) );
		images.push( new ImageData( "bush-7"	,	650.1,	1003.55,	2.17710876464844,	0,	0,	2.17710876464844,	41.5,	19) );
		images.push( new ImageData( "bush-4"	,	211.2,	1242.85,	3.05917358398438,	0,	0,	3.05917358398438,	35.55,	28) );
		images.push( new ImageData( "rock-0"	,	598.25,	1596.05,	2.41012573242188,	0,	0,	2.41012573242188,	39.5,	17.5) );
		images.push( new ImageData( "rock-3"	,	490.4,	1071.35,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		images.push( new ImageData( "building-plot"	,	284.25,	625.15,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	562.95,	1158.65,	1,	0,	0,	1) );
		images.push( new ImageData( "hole-1"	,	658.4,	249.45,	2.170166015625,	0,	0,	2.170166015625,	35.5,	28.5) );
		images.push( new ImageData( "hole-2"	,	210.75,	608.75,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );
	}
}