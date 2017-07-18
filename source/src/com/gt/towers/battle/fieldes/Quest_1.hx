package com.gt.towers.battle.fieldes;class Quest_1 extends FieldData{	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasStart, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	670.3,	1091.75,	1,	1,	"2,1",	true,	11	) );		places.push( new PlaceData( 1,	728.85,	1463.1,	12,	0,	"0",	true,	10	) );		places.push( new PlaceData( 2,	344.9,	754.4,	1,	1,	"0",	true,	-3	) );		// create images		images.push( new ImageData( "hut-0"	,	489.3,	104.15,	1.49998474121094,	0,	0,	1.49998474121094,	174,	105) );		images.push( new ImageData( "road-v"	,	336.45,	790.1,	0.748519897460938,	-0.663131713867188,	0.663131713867188,	0.748519897460938) );		images.push( new ImageData( "road-v"	,	609.85,	1083.15,	0.979812622070313,	-0.200057983398438,	0.200057983398438,	0.979812622070313) );		images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );		images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-0"	,	499.5,	667.1,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "bush-7"	,	810.75,	938.2,	2.25,	0,	0,	2.25,	41.5,	19) );		images.push( new ImageData( "bush-4"	,	307.45,	387.8,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );		images.push( new ImageData( "rock-0"	,	216.35,	1257.8,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "rock-3"	,	320.25,	986,	2.24998474121094,	0,	0,	2.24998474121094,	27,	15) );		images.push( new ImageData( "building-plot"	,	559.3,	1028.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	617.85,	1400.1,	1,	0,	0,	1) );		images.push( new ImageData( "hole-1"	,	657.3,	874.1,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28.5) );		images.push( new ImageData( "hole-2"	,	153.05,	900.95,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );		images.push( new ImageData( "building-plot"	,	233.9,	691.4,	1,	0,	0,	1) );	}}