package com.gt.towers.battle.fieldes;
class Quest_3 extends FieldData
{
	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")
	{
		super(index, name, times, introNum, startNum, endNum);
		// places
		places.push( new PlaceData( 0,	347.15,	400.1,	1,	1,	"1",	true,	-3	) );
		places.push( new PlaceData( 1,	540.9,	1054.7,	1,	-1,	"0,2,3",	true,	-3	) );
		places.push( new PlaceData( 2,	354.3,	1409.55,	11,	0,	"1",	true,	-3	) );
		places.push( new PlaceData( 3,	808.85,	1395.5,	1,	0,	"1",	true,	-3	) );

#if flash
		// images
		images.push( new ImageData( "road-h"	,	606.5,	1075.15,	0.492935180664063,	0.654129028320313,	-0.798599243164063,	0.601791381835938,	207.4,	39.5) );
		images.push( new ImageData( "bush-0"	,	697.55,	1101.2,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "bush-7"	,	808.2,	331.25,	1,	0,	0,	1,	41.45,	19) );
		images.push( new ImageData( "chair-1"	,	555.25,	1290.15,	1,	0,	0,	1,	45.05,	25.05) );
		images.push( new ImageData( "rock-0"	,	189.75,	667.3,	1,	0,	0,	1,	39.55,	17.5) );
		images.push( new ImageData( "road-v"	,	320.3,	456.95,	0.960174560546875,	-0.279388427734375,	0.412139892578125,	1.41641235351563,	44.45,	201.6) );
		images.push( new ImageData( "road-v"	,	493.15,	1053.3,	0.882949829101563,	0.469451904296875,	-0.469451904296875,	0.882949829101563,	44.5,	201.55) );
		images.push( new ImageData( "building-plot"	,	428.9,	972.7,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	241.05,	1326.65,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	694.85,	1312.5,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	234.15,	319.1,	1,	0,	0,	1) );
		images.push( new ImageData( "bush-0"	,	524.65,	1524,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "bush-0"	,	998.8,	1420.25,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "bush-0"	,	189.75,	1471,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "rock-5"	,	937.85,	472.05,	1,	0,	0,	1,	62,	36.5) );
		images.push( new ImageData( "bush-1"	,	178.6,	1169.25,	1,	0,	0,	1,	40.5,	26) );
		images.push( new ImageData( "bush-2"	,	979.65,	1444.45,	1,	0,	0,	1,	31,	26.55) );
		images.push( new ImageData( "bush-7"	,	736.85,	999.75,	1,	0,	0,	1,	41.5,	19) );
		images.push( new ImageData( "bush-4"	,	326.5,	1010.9,	1,	0,	0,	1,	35.5,	28) );
		images.push( new ImageData( "bush-4"	,	711.85,	961.95,	1,	0,	0,	1,	35.5,	28) );
		images.push( new ImageData( "bush-1"	,	937.85,	1380.8,	1,	0,	0,	1,	40.5,	26) );
		images.push( new ImageData( "tree-3"	,	622.25,	180.25,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-4"	,	90.6,	426.4,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-4"	,	839.95,	386.05,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-4"	,	700.25,	323.7,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-4"	,	500.9,	512.4,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-4"	,	520.05,	273.25,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-4"	,	396.75,	184.35,	1,	0,	0,	1,	-300.95,	335.95) );
		images.push( new ImageData( "tree-3"	,	783.55,	270.35,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-3"	,	543.4,	392.1,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-3"	,	742.95,	491.05,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-3"	,	275.75,	868.95,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-4"	,	654.95,	426.4,	1,	0,	0,	1) );
#end
	}
}