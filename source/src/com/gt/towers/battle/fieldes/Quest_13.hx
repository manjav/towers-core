package com.gt.towers.battle.fieldes;
class Quest_13 extends FieldData
{
	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")
	{
		super(index, name, hasStart, hasIntro, hasFinal, times);
		// create places
		places.push( new PlaceData( 0,	733.45,	587.1,	1,	1,	"4,2,1",	true,	-3	) );
		places.push( new PlaceData( 1,	496,	489.65,	1,	-1,	"0,2",	true,	-3	) );
		places.push( new PlaceData( 2,	277.35,	631.7,	1,	1,	"0,1,4",	true,	-3	) );
		places.push( new PlaceData( 3,	771.85,	1308.45,	12,	0,	"5,4",	true,	-3	) );
		places.push( new PlaceData( 4,	542.55,	1205.3,	1,	-1,	"0,2,3,5",	true,	-3	) );
		places.push( new PlaceData( 5,	309.55,	1322.2,	12,	0,	"3,4",	true,	-3	) );
		// create images
		images.push( new ImageData( "road-v"	,	733.25,	575.5,	0.933578491210938,	0.358367919921875,	-0.5504150390625,	1.4339599609375,	44.55,	201.6) );
		images.push( new ImageData( "road-v"	,	236.5,	653.85,	0.913543701171875,	-0.406723022460938,	0.624755859375,	1.4031982421875,	44.55,	201.6) );
		images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		images.push( new ImageData( "background-0-r"	,	704.75,	-3.6,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		images.push( new ImageData( "foreground-0-l"	,	0.55,	1541.25,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		images.push( new ImageData( "foreground-0-r"	,	572.95,	1633.5,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		images.push( new ImageData( "bush-0"	,	976.45,	1417.25,	1.50003051757813,	0,	0,	1.50003051757813,	30,	18) );
		images.push( new ImageData( "road-h"	,	324.2,	579.8,	1,	0,	0,	1) );
		images.push( new ImageData( "road-v"	,	511.6,	514,	0.481353759765625,	-0.87652587890625,	0.443923950195313,	0.243789672851563,	44.5,	201.45) );
		images.push( new ImageData( "chair-0"	,	324.75,	350.9,	2.25,	0,	0,	2.25,	19.5,	14.5) );
		images.push( new ImageData( "road-v"	,	296.4,	630.05,	-0.398178100585938,	-0.917282104492188,	0.495285034179688,	-0.214996337890625,	44.45,	201.5) );
		images.push( new ImageData( "building-plot"	,	166.35,	568.7,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	385,	426.65,	1,	0,	0,	1) );
		images.push( new ImageData( "bush-0"	,	681.55,	220.8,	2.25,	0,	0,	2.25,	30,	18) );
		images.push( new ImageData( "tree-0"	,	423.6,	0,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	560.95,	-38.15,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	423.6,	-71.5,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	459.8,	116.6,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	499.95,	33.35,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	559.95,	88.65,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	484.6,	-71.5,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	158.25,	172.15,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	91.6,	206.2,	1,	0,	0,	1) );
		images.push( new ImageData( "bush-4"	,	897.6,	588.75,	1.50003051757813,	0,	0,	1.50003051757813,	35.5,	28) );
		images.push( new ImageData( "bush-3"	,	922.65,	1227,	1.5,	0,	0,	1.5,	28.55,	16.5) );
		images.push( new ImageData( "bush-7"	,	484.6,	276.6,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		images.push( new ImageData( "chair-0"	,	396.85,	694.7,	2.25,	0,	0,	2.25,	19.5,	14.5) );
		images.push( new ImageData( "tree-0"	,	631.6,	97.05,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	595.35,	-1.15,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	401,	17,	1,	0,	0,	1) );
		images.push( new ImageData( "rock-0"	,	540,	1557.45,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		images.push( new ImageData( "building-plot"	,	622.45,	524.1,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	301.6,	71.5,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	240.6,	143,	1,	0,	0,	1) );
		images.push( new ImageData( "rock-0"	,	776.8,	1679.1,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		images.push( new ImageData( "tree-0"	,	65.75,	712.35,	1,	0,	0,	1) );
		images.push( new ImageData( "bush-6"	,	955.55,	978.45,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	605.45,	362,	1,	0,	0,	1) );
		images.push( new ImageData( "road-h"	,	362.6,	1301.15,	1,	0,	0,	1) );
		images.push( new ImageData( "road-v"	,	550,	1235.35,	0.481353759765625,	-0.87652587890625,	0.443923950195313,	0.243789672851563,	44.5,	201.45) );
		images.push( new ImageData( "road-v"	,	324.6,	1345.9,	-0.398193359375,	-0.917251586914063,	0.595123291015625,	-0.258331298828125,	44.45,	201.4) );
		images.push( new ImageData( "building-plot"	,	198.55,	1259.2,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	660.85,	1245.45,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	431.55,	1142.3,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	36.25,	1076.35,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	202.2,	959.2,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	138.95,	1471.25,	1,	0,	0,	1) );
		images.push( new ImageData( "bush-3"	,	840.75,	1074.75,	1,	0,	0,	1) );
		images.push( new ImageData( "bush-2"	,	835.55,	815.4,	1,	0,	0,	1) );
	}
}
