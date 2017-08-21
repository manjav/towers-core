package com.gt.towers.battle.fieldes;class Quest_25 extends FieldData{	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasStart, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	938.75,	484.95,	11,	1,	"2,8",	true,	-3	) );		places.push( new PlaceData( 1,	469.85,	256.8,	11,	1,	"2,8",	true,	-3	) );		places.push( new PlaceData( 2,	843.6,	243.5,	1,	1,	"1,0",	true,	-3	) );		places.push( new PlaceData( 3,	207.4,	1628,	1,	0,	"5,4",	true,	-3	) );		places.push( new PlaceData( 4,	588.8,	1628,	1,	0,	"3,9",	true,	-3	) );		places.push( new PlaceData( 5,	178.45,	1382.45,	1,	0,	"6,3",	true,	-3	) );		places.push( new PlaceData( 6,	280.5,	880.85,	32,	-1,	"7,5",	true,	-3	) );		places.push( new PlaceData( 7,	355.05,	1128.65,	41,	-1,	"9,6",	true,	-3	) );		places.push( new PlaceData( 8,	524.95,	738.75,	32,	-1,	"0,1,9",	true,	-3	) );		places.push( new PlaceData( 9,	793.35,	716.3,	42,	-1,	"8,7,4",	true,	-3	) );		// create images		images.push( new ImageData( "background-0-l"	) );		images.push( new ImageData( "road-h"	,	876.3,	221.65,	0.300064086914063,	0.643463134765625,	-0.906295776367188,	0.422622680664063,	207.55,	39.5) );		images.push( new ImageData( "road-v"	,	421.05,	284.7,	0.996200561523438,	-0.087158203125,	0.10113525390625,	1.15556335449219,	44.55,	201.5) );		images.push( new ImageData( "road-v"	,	766.3,	711.95,	0.97430419921875,	0.22491455078125,	-0.51513671875,	2.231201171875,	44.5,	201.5) );		images.push( new ImageData( "road-h"	,	444.2,	222.7,	0.998626708984375,	-0.052337646484375,	0.052337646484375,	0.998626708984375,	207.45,	39.5) );		images.push( new ImageData( "background-0-r"	,	757,	-2.6,	1,	0,	0,	1) );		images.push( new ImageData( "foreground-0-l"	,	1.15,	1724.35,	1,	0,	0,	1) );		images.push( new ImageData( "foreground-0-r"	,	637.7,	1687.15,	1,	0,	0,	1) );		images.push( new ImageData( "road-h"	,	221.75,	1599.15,	0.75,	0,	0,	1,	207.45,	39.5) );		images.push( new ImageData( "road-v"	,	149,	1419.4,	0.990264892578125,	-0.13916015625,	0.0765380859375,	0.544631958007813,	44.5,	201.4) );		images.push( new ImageData( "road-v"	,	924.25,	436.9,	0.573577880859375,	0.819137573242188,	-0.999343872070313,	0.699752807617188,	44.6,	201.5) );		images.push( new ImageData( "building-plot"	,	819.2,	428.4,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	732.55,	191.7,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	352.2,	204.6,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	578.8,	796.95,	-0.139129638671875,	-0.989974975585938,	0.554550170898438,	-0.07794189453125,	44.4,	201.55) );		images.push( new ImageData( "road-v"	,	396.8,	1148.15,	-0.97021484375,	0.241912841796875,	-0.162109375,	-0.65008544921875,	44.4,	201.55) );		images.push( new ImageData( "building-plot"	,	423.35,	688.7,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	750.65,	693.65,	0.707061767578125,	0.70709228515625,	-0.97576904296875,	0.97576904296875,	44.65,	201.45) );		images.push( new ImageData( "building-plot"	,	673.25,	663.15,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	236.8,	1076.25,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	206.6,	885.95,	0.987686157226563,	0.1531982421875,	-0.189971923828125,	1.22471618652344,	44.55,	201.5) );		images.push( new ImageData( "building-plot"	,	152.6,	829.5,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	471.65,	1574.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	91,	1574.75,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	64.05,	1325.15,	1,	0,	0,	1) );	}}