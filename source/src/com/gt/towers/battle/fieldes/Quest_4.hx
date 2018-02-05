package com.gt.towers.battle.fieldes;
class Quest_4 extends FieldData
{
	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")
	{
		super(index, name, times, introNum, startNum, endNum);
		// places
		places.push( new PlaceData( 0,	340,	476.5,	1,	1,	"2",	true,	-3	) );
		places.push( new PlaceData( 1,	837,	1217.35,	12,	0,	"3",	true,	-3	) );
		places.push( new PlaceData( 2,	340,	1097.85,	11,	-1,	"0,3",	true,	-3	) );
		places.push( new PlaceData( 3,	613.6,	1415.85,	1,	-1,	"1,2",	true,	-3	) );

#if flash
		// images
		images.push( new ImageData( "road-h"	,	397.25,	1109.9,	0.52642822265625,	0.62738037109375,	-0.765960693359375,	0.642715454101563,	207.4,	39.5) );
		images.push( new ImageData( "tree-0"	,	526.25,	521.35,	1,	0,	0,	1,	61.05,	71.5) );
		images.push( new ImageData( "bush-0"	,	501.65,	988.2,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "bush-7"	,	808.2,	331.25,	1,	0,	0,	1,	41.45,	19) );
		images.push( new ImageData( "chair-1"	,	137.3,	769.25,	1,	0,	0,	1,	45.05,	25.05) );
		images.push( new ImageData( "rock-0"	,	655.1,	1045.2,	1,	0,	0,	1,	39.5,	17.5) );
		images.push( new ImageData( "road-v"	,	296,	498.4,	1,	0,	0,	1) );
		images.push( new ImageData( "road-v"	,	803.5,	1186.45,	0.681930541992188,	0.731307983398438,	-0.602157592773438,	0.5615234375,	44.55,	201.4) );
		images.push( new ImageData( "building-plot"	,	723.5,	1134.35,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	501.85,	1331.3,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	224.15,	393.5,	1,	0,	0,	1) );
		images.push( new ImageData( "bush-0"	,	333.5,	1679.7,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "bush-0"	,	998.8,	1420.25,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "bush-0"	,	189.75,	1471,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "bush-0"	,	715.85,	992.2,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "bush-0"	,	799.5,	1367.45,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "rock-5"	,	241.4,	236.7,	1,	0,	0,	1,	62,	36.5) );
		images.push( new ImageData( "tree-0"	,	76.9,	400.4,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	427.7,	241.4,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "bush-1"	,	178.6,	1169.25,	1,	0,	0,	1,	40.5,	26) );
		images.push( new ImageData( "bush-2"	,	979.65,	1444.45,	1,	0,	0,	1,	31,	26.55) );
		images.push( new ImageData( "bush-7"	,	606.6,	834.25,	1,	0,	0,	1,	41.5,	19) );
		images.push( new ImageData( "bush-4"	,	516,	848.95,	1,	0,	0,	1,	35.5,	28) );
		images.push( new ImageData( "bush-1"	,	937.85,	1380.8,	1,	0,	0,	1,	40.5,	26) );
		images.push( new ImageData( "bush-1"	,	664.3,	605.1,	1,	0,	0,	1,	40.5,	26) );
		images.push( new ImageData( "bush-4"	,	673.8,	902.15,	1,	0,	0,	1,	35.55,	28) );
		images.push( new ImageData( "tree-0"	,	567.1,	409.7,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	729.8,	331.25,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	781.9,	251.35,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	666.2,	491.15,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	781.9,	450.2,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	903.7,	491.15,	1,	0,	0,	1,	61.05,	71.5) );
		images.push( new ImageData( "tree-0"	,	97.8,	868.55,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	775.2,	845.85,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "road-v"	,	295.95,	700.8,	1,	0,	0,	1,	44.5,	201.45) );
		images.push( new ImageData( "tree-0"	,	489.25,	119.35,	1,	0,	0,	1,	61.05,	71.5) );
		images.push( new ImageData( "building-plot"	,	226.4,	1015.35,	1,	0,	0,	1) );
		images.push( new ImageData( "bush-7"	,	742.7,	174.9,	1,	0,	0,	1,	41.45,	19) );
		images.push( new ImageData( "tree-0"	,	664.3,	174.9,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	716.4,	95,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	905.65,	305.25,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	922.15,	62.9,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	617,	0,	1,	0,	0,	1,	61.05,	71.5) );
		images.push( new ImageData( "tree-0"	,	567.1,	268.05,	1,	0,	0,	1,	61,	71.5) );
#end
	}
}