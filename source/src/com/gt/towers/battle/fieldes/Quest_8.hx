package com.gt.towers.battle.fieldes;
class Quest_8 extends FieldData
{
	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")
	{
		super(index, name, times, introNum, startNum, endNum);
		// places
		places.push( new PlaceData( 0,	520.95,	960,	1,	-1,	"3,1,4,2",	true,	-3	) );
		places.push( new PlaceData( 1,	831,	1414.85,	11,	0,	"0,3",	true,	-3	) );
		places.push( new PlaceData( 2,	520.95,	413.25,	11,	1,	"0,4",	true,	-3	) );
		places.push( new PlaceData( 3,	831,	960,	1,	-1,	"0,1",	true,	-3	) );
		places.push( new PlaceData( 4,	255.85,	741.55,	1,	-1,	"0,2",	true,	-3	) );

#if flash
		// images
		images.push( new ImageData( "road-h"	,	249.5,	687.25,	0.766021728515625,	0.642776489257813,	-0.642776489257813,	0.766021728515625,	207.45,	39.5) );
		images.push( new ImageData( "rock-0"	,	302.55,	179.85,	1,	0,	0,	1,	39.5,	17.5) );
		images.push( new ImageData( "road-v"	,	786.3,	1003.55,	1,	0,	0,	0.90069580078125,	44.5,	201.5) );
		images.push( new ImageData( "road-v"	,	481,	458.75,	1,	0,	0,	1.13137817382813,	44.5,	201.5) );
		images.push( new ImageData( "road-h"	,	542.05,	920.05,	0.763137817382813,	0,	0,	1,	207.5,	39.5) );
		images.push( new ImageData( "road-v"	,	504.3,	1015.55,	0.829055786132813,	-0.559188842773438,	0.620162963867188,	0.919418334960938,	44.55,	201.5) );
		images.push( new ImageData( "bush-0"	,	720.35,	418.2,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "bush-7"	,	681.2,	615.8,	1,	0,	0,	1,	41.55,	19) );
		images.push( new ImageData( "bush-4"	,	649,	577.8,	1,	0,	0,	1,	35.55,	28) );
		images.push( new ImageData( "rock-0"	,	277.95,	1473.8,	1,	0,	0,	1,	39.5,	17.5) );
		images.push( new ImageData( "hole-2"	,	344.45,	1192.55,	1,	0,	0,	1,	51,	34) );
		images.push( new ImageData( "bush-7"	,	397.25,	1219.2,	2.25,	0,	0,	2.25,	41.5,	19) );
		images.push( new ImageData( "building-plot"	,	407.6,	330.2,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	717.2,	879.45,	1,	0,	0,	1) );
		images.push( new ImageData( "road-v"	,	449.45,	420,	0.799209594726563,	0.601043701171875,	-0.601043701171875,	0.799209594726563) );
		images.push( new ImageData( "building-plot"	,	140.95,	659.75,	1,	0,	0,	1) );
		images.push( new ImageData( "rock-0"	,	40.65,	605.25,	1,	0,	0,	1,	39.5,	17.55) );
		images.push( new ImageData( "rock-1"	,	261.9,	353.05,	1,	0,	0,	1,	16,	12.5) );
		images.push( new ImageData( "rock-5"	,	572.6,	94.85,	1,	0,	0,	1,	62,	36.55) );
		images.push( new ImageData( "rock-6-"	,	108.75,	156.45,	1,	0,	0,	1,	54.55,	48.55) );
		images.push( new ImageData( "bush-4"	,	140.85,	442.95,	1,	0,	0,	1,	35.6,	28) );
		images.push( new ImageData( "tree-0"	,	127.85,	1060.2,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	191.9,	1182.2,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	22.85,	1219.2,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	231.65,	1298,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	140.85,	1333.6,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "bush-7"	,	914.2,	1319.7,	2.25,	0,	0,	2.25,	41.5,	19) );
		images.push( new ImageData( "bush-4"	,	1021.05,	1422.3,	1.125,	0,	0,	1.125,	35.55,	28) );
		images.push( new ImageData( "bush-4"	,	364.05,	1595.8,	1.125,	0,	0,	1.125,	35.55,	28) );
		images.push( new ImageData( "bush-7"	,	600.6,	1672.35,	2.25,	0,	0,	2.25,	41.5,	19) );
		images.push( new ImageData( "tree-0"	,	640.7,	474.4,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	87.5,	830.35,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "building-plot"	,	405.6,	879.45,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	717.2,	1332.35,	1,	0,	0,	1) );
		images.push( new ImageData( "hole-0"	,	822.35,	553.85,	1,	0,	0,	1,	38,	21.5) );
		images.push( new ImageData( "tree-0"	,	658.2,	956.75,	0.999984741210938,	0,	0,	0.999984741210938,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	18.85,	1362.2,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	-39.4,	1128.8,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	79.85,	1262.1,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	112.6,	1160.75,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	-68.35,	914.7,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	22.85,	1004.7,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	179.35,	956.75,	1,	0,	0,	1,	61,	71.5) );
		images.push( new ImageData( "tree-0"	,	-24.95,	1508.55,	1,	0,	0,	1,	61,	71.5) );
#end
	}
}