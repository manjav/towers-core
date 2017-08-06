package com.gt.towers.battle.fieldes;class Quest_9 extends FieldData{	public function new(index:Int, name:String, hasStart:Bool=false, hasIntro:Bool=false, hasFinal:Bool=false, times:String="")	{		super(index, name, hasStart, hasIntro, hasFinal, times);		// create places		places.push( new PlaceData( 0,	382.45,	1506.15,	1,	0,	"2,1",	true,	-3	) );		places.push( new PlaceData( 1,	684.25,	1425.15,	1,	-1,	"0,3",	true,	-3	) );		places.push( new PlaceData( 2,	363.2,	734.05,	1,	-1,	"0,3",	true,	-3	) );		places.push( new PlaceData( 3,	684.25,	664.55,	1,	1,	"1,2",	true,	-3	) );		places.push( new PlaceData( 4,	527.2,	1061.25,	41,	-1,	"",	true,	-3	) );		// create images		images.push( new ImageData( "road-v"	,	714.4,	1370.45,	0.258804321289063,	0.965927124023438,	-0.965927124023438,	0.258804321289063) );		images.push( new ImageData( "road-v"	,	714.4,	609.85,	0.258804321289063,	0.965927124023438,	-0.965927124023438,	0.258804321289063) );		images.push( new ImageData( "road-v"	,	636.1,	609.85,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	322.75,	765.45,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	321.7,	1129.35,	1,	0,	0,	1) );		images.push( new ImageData( "road-v"	,	635.05,	973.75,	1,	0,	0,	1) );		images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );		images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );		images.push( new ImageData( "foreground-0-r"	,	572.65,	1645.7,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );		images.push( new ImageData( "bush-7"	,	563,	301.15,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );		images.push( new ImageData( "chair-1"	,	159.7,	1645.7,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );		images.push( new ImageData( "rock-0"	,	823.2,	1557.65,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "rock-3"	,	678.9,	703.2,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "bush-0"	,	823.4,	274.65,	2.25,	0,	0,	2.25,	30,	18) );		images.push( new ImageData( "tree-0"	,	190,	106.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	280.05,	191.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	341.05,	119.75,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	324.5,	259.7,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	499.95,	97.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	341.05,	48.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	393,	159.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	135.2,	172.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	212.15,	242.8,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	252.2,	1431.65,	1,	0,	0,	1) );		images.push( new ImageData( "bush-3"	,	850.85,	1647.9,	2.25,	0,	0,	2.25,	28.5,	16.5) );		images.push( new ImageData( "building-plot"	,	587.3,	1343.6,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	663.55,	1606.3,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "rock-3"	,	316,	1620.05,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );		images.push( new ImageData( "tree-0"	,	142.55,	498.65,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	631.6,	97.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	595.35,	158.15,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	659.55,	155.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	341.7,	498.65,	1,	0,	0,	1) );		images.push( new ImageData( "rock-0"	,	437.35,	1648.7,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "tree-0"	,	393,	378.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	524.65,	378.9,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	488.4,	440,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	552.6,	437.1,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	605.8,	334.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	737.45,	334.25,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	701.2,	395.35,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	765.4,	392.45,	1,	0,	0,	1) );		images.push( new ImageData( "rock-5"	,	400.65,	305.9,	2,	0,	0,	2,	62,	36.5) );		images.push( new ImageData( "tree-0"	,	640.2,	466.85,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	458.15,	754.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	519.15,	754.55,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	549.15,	796.85,	1,	0,	0,	1) );		images.push( new ImageData( "rock-4"	,	135.55,	375.4,	2.25,	0,	0,	2.25,	64.5,	23) );		images.push( new ImageData( "tree-0"	,	116,	364.95,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	280.7,	427.15,	1,	0,	0,	1) );		images.push( new ImageData( "building-plot"	,	252.2,	671.05,	1,	0,	0,	1) );		images.push( new ImageData( "tree-0"	,	219.7,	685.25,	1,	0,	0,	1) );		images.push( new ImageData( "bush-3"	,	434.75,	1333,	2.25,	0,	0,	2.25,	28.5,	16.5) );		images.push( new ImageData( "building-plot"	,	573.25,	601.55,	1,	0,	0,	1) );		images.push( new ImageData( "hut-0"	,	810.75,	205.9,	1.29998779296875,	0,	0,	1.29998779296875,	174,	105) );		images.push( new ImageData( "hole-2"	,	27,	1176.15,	2,	0,	0,	2,	51,	34) );		images.push( new ImageData( "rock-0"	,	823.2,	845.15,	2.25,	0,	0,	2.25,	39.5,	17.5) );		images.push( new ImageData( "bush-3"	,	810.75,	940.75,	2.25,	0,	0,	2.25,	28.5,	16.5) );		images.push( new ImageData( "tree-0"	,	202.5,	458.55,	1,	0,	0,	1) );		images.push( new ImageData( "hole-0"	,	25.45,	931.7,	2.25,	0,	0,	2.25,	38,	21.5) );		images.push( new ImageData( "hole-1"	,	80.15,	1026.15,	2.25,	0,	0,	2.25,	35.5,	28.5) );		images.push( new ImageData( "rock-4"	,	809.3,	599.7,	2.25,	0,	0,	2.25,	64.5,	23) );	}}