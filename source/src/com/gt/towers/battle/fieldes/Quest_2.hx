package com.gt.towers.battle.fieldes;
class Quest_2 extends FieldData
{
	public function new(index:Int, name:String, times:String="", introNum:String="", startNum:String="", endNum:String="")
	{
		super(index, name, times, introNum, startNum, endNum);
		// places
		places.push( new PlaceData( 0,	891.35,	1439.75,	1,	0,	"1",	true,	-11	) );
		places.push( new PlaceData( 1,	571.95,	1134.75,	11,	-1,	"0,2",	true,	-3	) );
		places.push( new PlaceData( 2,	571.95,	569.95,	1,	1,	"1,3",	true,	-3	) );
		places.push( new PlaceData( 3,	769.7,	467.1,	1,	-1,	"2",	true,	-3	) );

#if flash
		// images
		images.push( new ImageData( "tree-0"	,	859.05,	990.05,	1,	0,	0,	1) );
		images.push( new ImageData( "road-v"	,	539.8,	1155.2,	0.69451904296875,	-0.719436645507813,	0.719436645507813,	0.69451904296875,	44.65,	201.8) );
		images.push( new ImageData( "road-v"	,	727.5,	431.8,	0.54461669921875,	0.838653564453125,	-0.550811767578125,	0.357711791992188,	44.55,	201.55) );
		images.push( new ImageData( "road-v"	,	532.25,	621.95,	1,	0,	0,	1.15541076660156,	44.5,	201.5) );
		images.push( new ImageData( "tree-0"	,	351.95,	1249.15,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	-66.5,	726.5,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	13,	817.35,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	-21.7,	589.1,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	-64.2,	1243.15,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	-46.45,	1361.15,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	473.1,	1339.5,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	-53.4,	445.9,	1,	0,	0,	1) );
		images.push( new ImageData( "bush-0"	,	766.9,	1630.85,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "bush-7"	,	732.75,	709.85,	2.25,	0,	0,	2.25,	41.5,	19) );
		images.push( new ImageData( "bush-4"	,	711.9,	898.4,	1,	0,	0,	1,	35.55,	28) );
		images.push( new ImageData( "rock-0"	,	785.85,	890.05,	1,	0,	0,	1,	39.55,	17.5) );
		images.push( new ImageData( "building-plot"	,	776.4,	1355.15,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	876.4,	1070.1,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	460.05,	489.25,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	139.15,	945.15,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	118.8,	1109.95,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	42.5,	1048.1,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	227.8,	848.8,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	113.75,	817.35,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	-21.7,	945.15,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	209.3,	693.1,	1,	0,	0,	1) );
		images.push( new ImageData( "bush-0"	,	769.35,	1014.55,	1,	0,	0,	1,	30,	18) );
		images.push( new ImageData( "tree-0"	,	70.2,	1209.3,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	65.75,	1334.55,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	177.8,	1282.45,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	269.9,	1299.95,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	217.9,	1182.1,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	77.4,	1602.45,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	87.3,	1465.75,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	87.3,	507.6,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	65.75,	686,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	75.85,	238.7,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	-28.55,	232.25,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	100.3,	371.75,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	251.75,	238.7,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	202.75,	333.9,	1,	0,	0,	1) );
		images.push( new ImageData( "bush-4"	,	676.35,	844.25,	1,	0,	0,	1,	35.55,	28) );
		images.push( new ImageData( "tree-0"	,	-40.2,	1602.45,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	235.75,	1056.4,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	-38.8,	1473.15,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	209.3,	1538.45,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	-21.7,	1140.85,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	-17.85,	344.25,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	302.55,	936.1,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	190.8,	471.5,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	312.8,	724.5,	1,	0,	0,	1) );
		images.push( new ImageData( "bush-4"	,	713.15,	181.85,	2.25,	0,	0,	2.25,	35.55,	28) );
		images.push( new ImageData( "building-plot"	,	460.05,	1054.7,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	411.55,	1426.45,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	291.35,	1404.45,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	334.95,	1538.45,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	191.3,	1416.7,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	326.9,	141.1,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	654.35,	-82.9,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	351.95,	325.85,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	491.7,	132.1,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	407,	227.5,	1,	0,	0,	1) );
		images.push( new ImageData( "building-plot"	,	656.7,	385.5,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	82.3,	-16.75,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	-28.55,	-21.65,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	73.25,	109.9,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	186.4,	14.5,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	184.85,	153.35,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	-35.75,	120.25,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	298,	29.1,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	565,	8.25,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	456,	-42.85,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	407,	52.35,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-0"	,	142.75,	597.85,	1,	0,	0,	1) );
		images.push( new ImageData( "tree-1"	,	787.4,	1118.3,	1,	0,	0,	1) );
		images.push( new ImageData( "tanker-0"	,	445.8,	686,	1,	0,	0,	1) );
#end
	}
}