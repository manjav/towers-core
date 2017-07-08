package com.gt.towers.battle.fieldes;
import com.gt.towers.utils.maps.StringFieldMap;
/**
 * ...
 * @author Mansour Djawadi
 */
class FieldProvider 
{
	public var fields:StringFieldMap;
	
	public function new() 
	{
		fields = new StringFieldMap();
		var field:FieldData = null;
	
		
		
		field = new FieldData(0, "quest_0", true, true, "100,100,100" );
		// create places
		field.places.push( new PlaceData( 0,	400,	690,	1,	1,	"1",	false,	0	) );
		field.places.push( new PlaceData( 1,	680,	1230,	12,	0,	"0",	true,	0	) );
		// create images
		field.images.push( new ImageData( "road-v"	,	330.2,	642.85,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );
		field.images.push( new ImageData( "road-v"	,	458.8,	902.45,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	190.05,	352.2,	2.2449951171875,	0,	0,	2.2449951171875,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	650.1,	1003.55,	2.17710876464844,	0,	0,	2.17710876464844,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	211.2,	1242.85,	3.05917358398438,	0,	0,	3.05917358398438,	35.55,	28) );
		field.images.push( new ImageData( "rock-0"	,	598.25,	1596.05,	2.41012573242188,	0,	0,	2.41012573242188,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	490.4,	1071.35,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "building-plot"	,	284.25,	625.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	562.95,	1158.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "hole-1"	,	658.4,	249.45,	2.170166015625,	0,	0,	2.170166015625,	35.5,	28.5) );
		field.images.push( new ImageData( "hole-2"	,	210.75,	608.75,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );
		fields.set( "quest_0" , field );




		field = new FieldData(1, "quest_1", true, true, "30,50,60" );
		// create places
		field.places.push( new PlaceData( 0,	551.6,	1041.15,	1,	-1,	"1,2",	false,	0	) );
		field.places.push( new PlaceData( 1,	779.65,	1471.45,	12,	0,	"0",	true,	0	) );
		field.places.push( new PlaceData( 2,	402.65,	771.25,	1,	1,	"0",	true,	0	) );
		// create images
		field.images.push( new ImageData( "road-v"	,	392.3,	811.5,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );
		field.images.push( new ImageData( "road-v"	,	558.45,	1143.9,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	573.05,	667.1,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	810.75,	938.2,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	307.45,	387.8,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "rock-0"	,	393.8,	1257.8,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	510.8,	1224.1,	2.24998474121094,	0,	0,	2.24998474121094,	27,	15) );
		field.images.push( new ImageData( "building-plot"	,	440.6,	978.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	662.6,	1400.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "hole-1"	,	730.85,	874.1,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28.5) );
		field.images.push( new ImageData( "hole-2"	,	226.6,	900.95,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );
		field.images.push( new ImageData( "building-plot"	,	291.65,	708.25,	1,	0,	0,	1) );
		fields.set( "quest_1" , field );




		field = new FieldData(2, "quest_2", true, true, "100,100,100" );
		// create places
		field.places.push( new PlaceData( 0,	521.45,	669.7,	1,	1,	"1,2",	false,	0	) );
		field.places.push( new PlaceData( 1,	285.95,	1208.35,	11,	0,	"0",	true,	0	) );
		field.places.push( new PlaceData( 2,	796.55,	1080.6,	11,	0,	"0",	true,	0	) );
		// create images
		field.images.push( new ImageData( "road-v"	,	508.35,	588.1,	0.913772583007813,	0.403274536132813,	-0.403289794921875,	0.913742065429688,	44.45,	201.5) );
		field.images.push( new ImageData( "road-v"	,	505.85,	716.8,	0.827590942382813,	-0.561355590820313,	0.561355590820313,	0.827590942382813) );
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	189.9,	1403.6,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	709.3,	391.4,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	141.7,	444.25,	2.25,	0,	0,	2.25,	35.55,	28) );
		field.images.push( new ImageData( "rock-0"	,	604.55,	1598.85,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	426.1,	1155.15,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "building-plot"	,	405.7,	604.85,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	168.9,	1137,	1,	0,	0,	1) );
		field.images.push( new ImageData( "hole-1"	,	698.9,	1358.05,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28.5) );
		field.images.push( new ImageData( "building-plot"	,	679.5,	1009.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	572.55,	829.45,	1,	0,	0,	1) );
		field.images.push( new ImageData( "chair-1"	,	587.2,	515.85,	2.24998474121094,	0,	0,	2.24998474121094,	45,	25) );
		field.images.push( new ImageData( "road-v"	,	399.4,	829.45,	0.913772583007813,	0.403274536132813,	-0.403289794921875,	0.913742065429688,	44.45,	201.5) );
		fields.set( "quest_2" , field );
		
		
		
		
		field = new FieldData(3, "quest_3", false, false, "30,60,80" );
		// create places
		field.places.push( new PlaceData( 0,	397.45,	709.9,	1,	1,	"2,1",	true,	-2	) );
		field.places.push( new PlaceData( 1,	761.65,	984.15,	1,	-1,	"2,0",	true,	-2	) );
		field.places.push( new PlaceData( 2,	355.55,	1195.75,	1,	0,	"1,0",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "road-v"	,	351.8,	725.15,	0.998199462890625,	0.0603485107421875,	-0.0603485107421875,	0.998199462890625) );
		field.images.push( new ImageData( "road-v"	,	376.4,	761.95,	0.5513916015625,	-0.834274291992188,	0.834274291992188,	0.5513916015625) );
		field.images.push( new ImageData( "road-v"	,	347.7,	831.5,	0.998199462890625,	0.0603485107421875,	-0.0603485107421875,	0.998199462890625) );
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	190.05,	352.2,	2.2449951171875,	0,	0,	2.2449951171875,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	635.4,	575.3,	2.17710876464844,	0,	0,	2.17710876464844,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	71.2,	1242.85,	3.05917358398438,	0,	0,	3.05917358398438,	35.55,	28) );
		field.images.push( new ImageData( "rock-0"	,	598.25,	1596.05,	2.41012573242188,	0,	0,	2.41012573242188,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	654.7,	1225.05,	1.71110534667969,	0,	0,	1.71110534667969,	-103.2,	-77.15) );
		field.images.push( new ImageData( "building-plot"	,	281.7,	645.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	244.55,	1132.75,	1,	0,	0,	1) );
		field.images.push( new ImageData( "hole-1"	,	658.4,	249.45,	2.170166015625,	0,	0,	2.170166015625,	35.5,	28.5) );
		field.images.push( new ImageData( "hole-2"	,	436.55,	899.85,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );
		field.images.push( new ImageData( "road-v"	,	408.6,	1224.05,	-0.446792602539063,	-0.894638061523438,	0.8946533203125,	-0.446792602539063) );
		field.images.push( new ImageData( "building-plot"	,	650.65,	921.15,	1,	0,	0,	1) );
		fields.set( "quest_3" , field );




		field = new FieldData(4, "quest_4", true, true, "100,100,100" );
		// create places
		field.places.push( new PlaceData( 0,	576.45,	1060.95,	1,	-1,	"1,2,3",	true,	-2	) );
		field.places.push( new PlaceData( 1,	340.95,	1599.6,	12,	0,	"0",	true,	-2	) );
		field.places.push( new PlaceData( 2,	860.75,	1441.55,	1,	0,	"0",	true,	-2	) );
		field.places.push( new PlaceData( 3,	571.95,	456.05,	1,	1,	"0",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "road-v"	,	563.35,	979.35,	0.913772583007813,	0.403274536132813,	-0.403289794921875,	0.913742065429688,	44.45,	201.5) );
		field.images.push( new ImageData( "road-v"	,	560.85,	1108.05,	0.827590942382813,	-0.561355590820313,	0.561355590820313,	0.827590942382813) );
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	697.7,	6,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	713.15,	1597.75,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	709.3,	391.4,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	251.8,	670,	2.25,	0,	0,	2.25,	35.55,	28) );
		field.images.push( new ImageData( "rock-0"	,	732.75,	734.9,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	481.1,	1546.4,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "building-plot"	,	460.7,	996.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	223.9,	1528.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "hole-1"	,	826.75,	979.35,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28.5) );
		field.images.push( new ImageData( "building-plot"	,	734.5,	1382.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	627.55,	1220.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "chair-1"	,	338.8,	557.5,	2.24998474121094,	0,	0,	2.24998474121094,	45,	25) );
		field.images.push( new ImageData( "road-v"	,	454.4,	1220.7,	0.913772583007813,	0.403274536132813,	-0.403289794921875,	0.913742065429688,	44.45,	201.5) );
		field.images.push( new ImageData( "road-v"	,	527.45,	618.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	527.45,	456.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	460.95,	393.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	25.4,	813.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	25.4,	795.35,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	64.05,	878.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	0,	915.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	64.05,	964.6,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	122,	1021.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	122,	949.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	125.05,	806.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	42.5,	1141.6,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	42.5,	1070.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	190.8,	724.5,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-0"	,	253.55,	1107.6,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-0"	,	186.05,	1148.1,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "tree-0"	,	70.2,	1209.3,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	70.2,	1191,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	108.85,	1273.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	44.8,	1310.75,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	108.85,	1360.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	166.8,	1416.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	166.8,	1345.2,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	169.85,	1202.2,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	87.3,	1537.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	87.3,	1465.75,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	30.15,	407.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	30.15,	388.8,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	68.8,	471.5,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	4.75,	508.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	68.8,	558.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	126.75,	614.5,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	126.75,	543,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	-13.15,	701.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	65.75,	686,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	91.15,	245.8,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	91.15,	227.5,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	91.15,	317.3,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	129.8,	400,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	239.95,	238.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	202.75,	333.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-4"	,	212.95,	915.1,	2.25,	0,	0,	2.25,	35.55,	28) );
		field.images.push( new ImageData( "bush-0"	,	257.25,	436.4,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "tree-0"	,	-19.3,	1210.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	-40.85,	1387.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	-40.85,	1315.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	-13.15,	1454.75,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	-13.15,	1436.45,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	-18.5,	1070.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	4.75,	614.5,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	4.75,	325.85,	1,	0,	0,	1) );
		fields.set( "quest_4" , field );




		field = new FieldData(5, "quest_5", false, false, "40,70,100" );
		// create places
		field.places.push( new PlaceData( 0,	803.2,	505.55,	1,	1,	"1",	true,	-2	) );
		field.places.push( new PlaceData( 1,	496.6,	1025.15,	1,	-1,	"2,0",	true,	-2	) );
		field.places.push( new PlaceData( 2,	310,	1380,	1,	-1,	"3,1",	true,	-2	) );
		field.places.push( new PlaceData( 3,	680,	1530,	1,	0,	"2",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "bush-0"	,	896.35,	1054.5,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-0"	,	804.9,	1339.8,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-0"	,	759.1,	1104.9,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-0"	,	645.15,	1213.8,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-0"	,	926.5,	1380.3,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "tree-0"	,	587.2,	1067.6,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "bush-7"	,	853.1,	1262.6,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "bush-6"	,	811.5,	1185.9,	2.25,	0,	0,	2.25,	24.5,	20) );
		field.images.push( new ImageData( "bush-5"	,	666.5,	1086.85,	1.42678833007813,	0,	0,	1.67498779296875,	28,	22) );
		field.images.push( new ImageData( "bush-4"	,	712.65,	1254.3,	2.25,	0,	0,	2.25,	35.5,	28) );
		field.images.push( new ImageData( "bush-4"	,	786.75,	1167.9,	2.25,	0,	0,	2.25,	35.5,	28) );
		field.images.push( new ImageData( "tree-0"	,	793.1,	1287.35,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "bush-1"	,	781.6,	1036.5,	2.25,	0,	0,	2.25,	40.5,	26) );
		field.images.push( new ImageData( "bush-2"	,	894.1,	1093.85,	2.25,	0,	0,	2.25,	31,	26.5) );
		field.images.push( new ImageData( "bush-7"	,	870.45,	1170.35,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	977.35,	1192.85,	2.25,	0,	0,	2.25,	35.5,	28) );
		field.images.push( new ImageData( "bush-0"	,	948.75,	785.15,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-0"	,	811.5,	835.55,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-4"	,	839.15,	898.55,	2.25,	0,	0,	2.25,	35.5,	28) );
		field.images.push( new ImageData( "bush-1"	,	834,	767.15,	2.25,	0,	0,	2.25,	40.5,	26) );
		field.images.push( new ImageData( "bush-2"	,	946.5,	824.5,	2.25,	0,	0,	2.25,	31,	26.5) );
		field.images.push( new ImageData( "bush-0"	,	744.85,	848.75,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-0"	,	607.6,	899.15,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-4"	,	635.25,	962.15,	2.25,	0,	0,	2.25,	35.5,	28) );
		field.images.push( new ImageData( "bush-1"	,	630.1,	830.75,	2.25,	0,	0,	2.25,	40.5,	26) );
		field.images.push( new ImageData( "bush-2"	,	742.6,	888.1,	2.25,	0,	0,	2.25,	31,	26.5) );
		field.images.push( new ImageData( "bush-0"	,	368.4,	383.05,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-4"	,	258.8,	496.45,	2.25,	0,	0,	2.25,	35.5,	28) );
		field.images.push( new ImageData( "bush-1"	,	253.65,	365.05,	2.25,	0,	0,	2.25,	40.5,	26) );
		field.images.push( new ImageData( "bush-2"	,	366.15,	422.4,	2.25,	0,	0,	2.25,	31,	26.5) );
		field.images.push( new ImageData( "tree-0"	,	144.4,	365.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	179.5,	529.5,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	23.4,	1054.5,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	789.2,	986.6,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	788.8,	313.75,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	203.9,	1496.45,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "chair-1"	,	457.55,	590.6,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );
		field.images.push( new ImageData( "rock-0"	,	535.9,	1154.9,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	555.45,	1400.65,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "road-v"	,	624.75,	702.05,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "road-v"	,	447.65,	1024.55,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "road-h"	,	335.25,	1343.9,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );
		field.images.push( new ImageData( "building-plot"	,	385.6,	962.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	195.75,	1307.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	562.95,	1458.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	758.2,	457.75,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "building-plot"	,	692.2,	442.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-4"	,	93.9,	836.15,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "bush-0"	,	64.05,	749.25,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-0"	,	841.6,	717.25,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-0"	,	637.7,	780.85,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-0"	,	261.25,	315.15,	2.25,	0,	0,	2.25,	30,	18) );
		fields.set( "quest_5" , field );




		field = new FieldData(6, "quest_6", false, false, "60,100,160" );
		// create places
		field.places.push( new PlaceData( 0,	803.2,	505.55,	1,	1,	"4,1",	true,	-2	) );
		field.places.push( new PlaceData( 1,	496.6,	1025.15,	1,	-1,	"2,4,0",	true,	-2	) );
		field.places.push( new PlaceData( 2,	310,	1380,	1,	-1,	"3,1",	true,	-2	) );
		field.places.push( new PlaceData( 3,	673.95,	1521.65,	1,	0,	"2",	true,	-2	) );
		field.places.push( new PlaceData( 4,	849.25,	864.85,	1,	-1,	"1,0",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "bush-7"	,	860.3,	1293.8,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "bush-6"	,	818.7,	1217.1,	2.25,	0,	0,	2.25,	24.5,	20) );
		field.images.push( new ImageData( "bush-5"	,	673.7,	1118.05,	1.42678833007813,	0,	0,	1.67500305175781,	28,	22) );
		field.images.push( new ImageData( "bush-4"	,	719.85,	1285.5,	2.25,	0,	0,	2.25,	35.5,	28) );
		field.images.push( new ImageData( "bush-3"	,	960.65,	999.95,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "bush-4"	,	793.95,	1199.1,	2.25,	0,	0,	2.25,	35.5,	28) );
		field.images.push( new ImageData( "bush-1"	,	788.8,	1067.7,	2.25,	0,	0,	2.25,	40.5,	26) );
		field.images.push( new ImageData( "bush-2"	,	901.3,	1125.05,	2.25,	0,	0,	2.25,	31,	26.5) );
		field.images.push( new ImageData( "bush-7"	,	877.65,	1201.55,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "bush-7"	,	786.5,	1024.95,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	984.55,	1224.05,	2.25,	0,	0,	2.25,	35.5,	28) );
		field.images.push( new ImageData( "bush-1"	,	161.7,	442.55,	2.25,	0,	0,	2.25,	40.5,	26) );
		field.images.push( new ImageData( "road-v"	,	812.2,	803.05,	0.518402099609375,	0.855117797851563,	-0.855117797851563,	0.518402099609375) );
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	903.55,	1085.7,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	788.8,	313.75,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	203.9,	1496.45,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "chair-1"	,	343.95,	590.6,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );
		field.images.push( new ImageData( "rock-0"	,	535.9,	1154.9,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	555.45,	1400.65,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "road-v"	,	624.75,	702.05,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "road-v"	,	447.65,	1024.55,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "road-h"	,	335.25,	1343.9,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );
		field.images.push( new ImageData( "building-plot"	,	385.6,	962.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	195.75,	1307.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	562.95,	1458.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	790.8,	489.1,	0.999771118164063,	-0.0213775634765625,	0.0213775634765625,	0.999771118164063) );
		field.images.push( new ImageData( "road-v"	,	758.2,	457.75,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "building-plot"	,	692.2,	442.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-4"	,	93.9,	836.15,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "bush-0"	,	64.05,	749.25,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "building-plot"	,	738.25,	801.85,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-3"	,	587.2,	876.5,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "bush-0"	,	812.1,	1371,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-0"	,	766.3,	1136.1,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-0"	,	652.35,	1245,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-0"	,	933.7,	1411.5,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-0"	,	849.55,	1496.45,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "tree-0"	,	800.3,	1318.55,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	594.4,	1098.8,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "rock-6-"	,	205.9,	321.2,	1.29998779296875,	0,	0,	1.29998779296875,	54.5,	48.5) );
		field.images.push( new ImageData( "bush-7"	,	58.7,	568.55,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		fields.set( "quest_6" , field );




		field = new FieldData(7, "battle_7", false, false, "80,150,200" );
		// create places
		field.places.push( new PlaceData( 0,	800,	500,	1,	-1,	"1,3",	true,	-2	) );
		field.places.push( new PlaceData( 1,	280,	1420,	1,	-1,	"2,0",	true,	-2	) );
		field.places.push( new PlaceData( 2,	757,	1424.4,	1,	-1,	"4,1",	true,	-2	) );
		field.places.push( new PlaceData( 3,	319.55,	620.2,	1,	1,	"0",	true,	-2	) );
		field.places.push( new PlaceData( 4,	752.8,	999.65,	1,	0,	"2",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "road-h"	,	300.6,	1381.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	434.15,	1050.1,	0.866012573242188,	0.5,	-0.5,	0.866012573242188) );
		field.images.push( new ImageData( "road-v"	,	623.45,	727.65,	0.866012573242188,	0.5,	-0.5,	0.866012573242188) );
		field.images.push( new ImageData( "road-v"	,	757.95,	488.6,	0.866012573242188,	0.5,	-0.5,	0.866012573242188) );
		field.images.push( new ImageData( "road-h"	,	352.55,	574.85,	0.965927124023438,	-0.258804321289063,	0.258804321289063,	0.965927124023438) );
		field.images.push( new ImageData( "building-plot"	,	687.5,	447.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	167.85,	1367.5,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-4"	,	421.95,	1258.4,	2.25,	0,	0,	2.25,	64.5,	23) );
		field.images.push( new ImageData( "tree-0"	,	153.35,	166.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	0,	214.5,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	74.05,	259,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	30.3,	292.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	-5.25,	351.95,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	74.05,	351.95,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	153.35,	259,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "background-0-l"	,	-2.55,	2.5,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-1.3,	1510.6,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	158.95,	797,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	116.5,	1070.55,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	279.05,	898.5,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "rock-0"	,	844.45,	732.35,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "hole-1"	,	844.45,	794.25,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28.5) );
		field.images.push( new ImageData( "hole-2"	,	773.85,	615,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );
		field.images.push( new ImageData( "bush-7"	,	863.8,	1189.65,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "rock-3"	,	64.45,	637.35,	2.24998474121094,	0,	0,	2.24998474121094,	27,	15) );
		field.images.push( new ImageData( "bush-0"	,	472.1,	124.45,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-4"	,	355.7,	225.95,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "tree-0"	,	887.4,	1460.7,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "road-v"	,	708.3,	999.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	646,	1361.4,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	199.5,	567.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-7"	,	491.35,	1156.05,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "building-plot"	,	641.8,	936.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	276.4,	133,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	232.65,	166.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	197.1,	225.95,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	117.8,	318.9,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	74.05,	351.95,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	38.5,	411.85,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	-40.8,	504.8,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	27.35,	452.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	117.8,	411.85,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	311.95,	259,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	197.1,	318.9,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	79.3,	121.55,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	197.1,	40.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	352.55,	0,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	9.25,	640.6,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	40.9,	700.85,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	-38.4,	793.8,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	0.35,	1024.5,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	708.3,	106.15,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "bush-4"	,	718.85,	263.85,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "bush-4"	,	548.55,	214.5,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "rock-0"	,	574.8,	1607.05,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		fields.set( "battle_7" , field );




		field = new FieldData(8, "quest_8", false, false, "60,110,200" );
		// create places
		field.places.push( new PlaceData( 0,	540,	960,	1,	-1,	"1,3,2,4",	true,	-2	) );
		field.places.push( new PlaceData( 1,	800,	1500,	1,	0,	"3,0",	true,	-2	) );
		field.places.push( new PlaceData( 2,	548.65,	413.25,	1,	1,	"0,4",	true,	-2	) );
		field.places.push( new PlaceData( 3,	800,	960,	1,	-1,	"1,0",	true,	-2	) );
		field.places.push( new PlaceData( 4,	279.25,	741.55,	1,	-1,	"2,0",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "rock-0"	,	321.7,	93.2,	2.24990844726563,	0,	0,	2.24990844726563,	39.5,	17.5) );
		field.images.push( new ImageData( "road-v"	,	776,	1082.3,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	504.4,	541.4,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	775.85,	944.4,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	504.4,	406.3,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-h"	,	499.45,	911.65,	0.763137817382813,	0,	0,	1,	207.5,	39.5) );
		field.images.push( new ImageData( "road-v"	,	573.05,	1124.75,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );
		field.images.push( new ImageData( "background-0-l"	,	6.15,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	925.75,	302.95,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	682.35,	582.85,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	810.75,	624.8,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "rock-0"	,	297.2,	1346.25,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "building-plot"	,	690.95,	1425,	1,	0,	0,	1) );
		field.images.push( new ImageData( "hole-1"	,	377.2,	622.55,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28.5) );
		field.images.push( new ImageData( "hole-2"	,	334.45,	1160.75,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );
		field.images.push( new ImageData( "bush-7"	,	420.65,	1219.2,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "rock-3"	,	715.6,	1357.5,	2.24998474121094,	0,	0,	2.24998474121094,	27,	15) );
		field.images.push( new ImageData( "building-plot"	,	433.85,	353.6,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	426.15,	894.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	687.85,	901.4,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	505.55,	990.9,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );
		field.images.push( new ImageData( "road-v"	,	439.1,	411.05,	0.86602783203125,	0.499984741210938,	-0.499984741210938,	0.86602783203125) );
		field.images.push( new ImageData( "road-v"	,	549.5,	928.7,	-0.70709228515625,	0.70709228515625,	-0.509124755859375,	-0.509140014648438,	44.5,	201.5) );
		field.images.push( new ImageData( "building-plot"	,	168.25,	678.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-0"	,	41.4,	462.65,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-1"	,	201.6,	382.9,	2.25,	0,	0,	2.25,	16,	12.5) );
		field.images.push( new ImageData( "rock-2"	,	64.05,	382.9,	2.25,	0,	0,	2.25,	17.5,	15.5) );
		field.images.push( new ImageData( "rock-3"	,	175.7,	479.6,	2.25,	0,	0,	2.25,	27,	15) );
		field.images.push( new ImageData( "rock-4"	,	58.85,	280.45,	2.25,	0,	0,	2.25,	64.5,	23) );
		field.images.push( new ImageData( "rock-5"	,	271,	171.95,	2.25,	0,	0,	2.25,	62,	36.5) );
		field.images.push( new ImageData( "rock-0"	,	0,	541.4,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-6-"	,	64.05,	99.6,	2.25,	0,	0,	2.25,	54.5,	48.5) );
		field.images.push( new ImageData( "rock-3"	,	82.05,	384,	2.25,	0,	0,	2.25,	27,	15) );
		field.images.push( new ImageData( "rock-3"	,	-19.35,	428.9,	2.25,	0,	0,	2.25,	27,	15) );
		field.images.push( new ImageData( "rock-3"	,	-1.9,	350.2,	2.25,	0,	0,	2.25,	27,	15) );
		field.images.push( new ImageData( "bush-4"	,	245.25,	384,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "bush-4"	,	157.6,	544.8,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "tree-0"	,	117.7,	1067.8,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	197,	1160.75,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	64.05,	1255.15,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	197,	1394.75,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	79,	1441.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	665.75,	951.15,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "bush-7"	,	-6.8,	914.35,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	121.6,	956.3,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "bush-7"	,	871.6,	1319.7,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	1000,	1361.65,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "bush-4"	,	405,	1631.85,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "bush-7"	,	624,	1672.35,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "tree-0"	,	728.8,	324.1,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		fields.set( "quest_8" , field );




		field = new FieldData(9, "quest_9", false, false, "60,120,210" );
		// create places
		field.places.push( new PlaceData( 0,	763.3,	643.1,	1,	-1,	"1,4",	true,	-2	) );
		field.places.push( new PlaceData( 1,	575.9,	1037.65,	1,	-1,	"2,0",	true,	-2	) );
		field.places.push( new PlaceData( 2,	413,	1318.15,	1,	-1,	"3,1,4",	true,	-2	) );
		field.places.push( new PlaceData( 3,	744.25,	1470.45,	1,	0,	"2",	true,	-2	) );
		field.places.push( new PlaceData( 4,	399.25,	643.1,	1,	1,	"0,2",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "background-0-l"	,	-13.45,	-6,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	702.75,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	7.7,	1544.7,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-4"	,	855.25,	1038.95,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "bush-0"	,	867.6,	1106.15,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	27.65,	494.6,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "chair-1"	,	467.2,	477.25,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );
		field.images.push( new ImageData( "rock-0"	,	692.25,	1211.25,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	374.85,	1450.25,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "road-v"	,	624.75,	839.6,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "road-v"	,	568.85,	949.2,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "road-h"	,	441.5,	1291.95,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );
		field.images.push( new ImageData( "building-plot"	,	465.3,	967.8,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	302,	1255.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	633.25,	1407.45,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-4"	,	147.7,	954.5,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28) );
		field.images.push( new ImageData( "bush-4"	,	37.85,	715.5,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "bush-0"	,	179.25,	801,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "road-v"	,	802.25,	598.6,	0.000091552734375,	1,	-1,	0.000091552734375,	44.5,	201.45) );
		field.images.push( new ImageData( "road-v"	,	758.2,	595.3,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "building-plot"	,	652.3,	580.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	288.25,	580.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "chair-0"	,	583.2,	717.05,	2.25,	0,	0,	2.25,	19.5,	14.5) );
		field.images.push( new ImageData( "bush-4"	,	5.25,	797.1,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28) );
		field.images.push( new ImageData( "tree-0"	,	595.6,	1202.3,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	185.45,	191.25,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	307.45,	230.95,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	166.25,	334.25,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	337.1,	398.45,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	494.25,	246.3,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	528.25,	287.2,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	555.25,	317.8,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "bush-7"	,	394.3,	1570.7,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "tree-0"	,	47.5,	515.2,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "road-v"	,	340.45,	888.95,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	340.45,	683.2,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-7"	,	394.3,	784.5,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "tree-0"	,	246.45,	837.25,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	398.1,	161.1,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	494.25,	80.45,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	528.25,	121.35,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	589.25,	215.7,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	246.45,	262.75,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	7.7,	294.95,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	337.1,	89.6,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	197.6,	48.25,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	153.4,	423.1,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	555.25,	8.95,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	830.95,	243.65,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	698.35,	100.65,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	959.15,	430.2,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	669.7,	372.2,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "bush-0"	,	821.55,	429.45,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-4"	,	671.2,	232.7,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28) );
		field.images.push( new ImageData( "bush-7"	,	336.1,	331.2,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "tree-0"	,	398.1,	326.95,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "bush-4"	,	47.5,	1259.25,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "bush-0"	,	59.85,	1326.45,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "rock-0"	,	64.05,	1093.8,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "hole-0"	,	759.4,	802.7,	2.25,	0,	0,	2.25,	38,	21.5) );
		field.images.push( new ImageData( "chair-0"	,	751.55,	858.3,	2.25,	0,	0,	2.25,	19.5,	14.5) );
		fields.set( "quest_9" , field );




		field = new FieldData(10, "quest_10", false, false, "90,150,230" );
		// create places
		field.places.push( new PlaceData( 0,	789.8,	552.7,	1,	-1,	"1,4",	true,	-2	) );
		field.places.push( new PlaceData( 1,	600.05,	854.8,	1,	-1,	"2,0,4",	true,	-2	) );
		field.places.push( new PlaceData( 2,	391.05,	1274.9,	31,	-1,	"3,5,1",	true,	-2	) );
		field.places.push( new PlaceData( 3,	691,	1426.45,	1,	-1,	"5,2",	true,	-2	) );
		field.places.push( new PlaceData( 4,	374.8,	552.7,	11,	1,	"0,1",	true,	-2	) );
		field.places.push( new PlaceData( 5,	320.05,	1553.2,	1,	0,	"3,2",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "hole-0"	,	243.45,	762.7,	2.25,	0,	0,	2.25,	38,	21.5) );
		field.images.push( new ImageData( "road-h"	,	280.05,	1535.5,	0.934158325195313,	-0.3568115234375,	0.3568115234375,	0.934158325195313) );
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	0,	1539.8,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	704.35,	1594.95,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	563,	301.15,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	857.35,	631.25,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "chair-1"	,	508.55,	570.15,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );
		field.images.push( new ImageData( "rock-0"	,	597.8,	1211.9,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	572.5,	1305.45,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "road-v"	,	560,	852.6,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "road-h"	,	352.3,	1248.7,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );
		field.images.push( new ImageData( "building-plot"	,	580,	1363.45,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	744.05,	530.2,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "bush-4"	,	32.9,	853.75,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "bush-0"	,	3.05,	766.85,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "chair-0"	,	335.5,	684.1,	2.25,	0,	0,	2.25,	19.5,	14.5) );
		field.images.push( new ImageData( "bush-7"	,	192.65,	631.25,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "road-v"	,	366,	591.85,	0.855148315429688,	-0.518386840820313,	0.518386840820313,	0.855148315429688) );
		field.images.push( new ImageData( "building-plot"	,	489.05,	791.8,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-0"	,	823.4,	274.65,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "tree-0"	,	190,	106.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	280.05,	191.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	341.05,	119.75,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	324.5,	259.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	499.95,	97.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	341.05,	48.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	393,	159.35,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	158.25,	172.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	212.15,	242.8,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-4"	,	805.4,	910.95,	2.25003051757813,	0,	0,	2.25003051757813) );
		field.images.push( new ImageData( "bush-4"	,	887.4,	1406.85,	2.25003051757813,	0,	0,	2.25003051757813) );
		field.images.push( new ImageData( "bush-4"	,	546.9,	1594.95,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28) );
		field.images.push( new ImageData( "road-v"	,	328.8,	1275.05,	0.971237182617188,	0.23809814453125,	-0.153793334960938,	0.6273193359375,	44.45,	201.5) );
		field.images.push( new ImageData( "building-plot"	,	280.05,	1211.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-3"	,	253.75,	947.15,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "bush-3"	,	887.4,	1036.95,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "tree-0"	,	428.05,	783.3,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-3"	,	64.4,	1149.2,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "tree-0"	,	3.4,	1077.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	209.05,	1490.2,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-0"	,	830.2,	812.3,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "tree-0"	,	769.2,	740.8,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	653.55,	1068.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	714.55,	1068.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	744.55,	1111.2,	1,	0,	0,	1) );
		field.images.push( new ImageData( "chair-0"	,	483.35,	421.85,	2.25,	0,	0,	2.25,	19.5,	14.5) );
		field.images.push( new ImageData( "rock-3"	,	582.3,	552.7,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "tree-0"	,	36.25,	355.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	36.25,	427.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	97.25,	498.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	631.6,	97.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	595.35,	158.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	659.55,	155.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	158.25,	315.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-0"	,	41.5,	1387.4,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "road-h"	,	374.8,	513.2,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	678.8,	489.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	263.8,	489.7,	1,	0,	0,	1) );
		fields.set( "quest_10" , field );




		field = new FieldData(11, "quest_11", false, false, "80,140,230" );
		// create places
		field.places.push( new PlaceData( 0,	382.45,	1506.15,	1,	0,	"1,2",	true,	-2	) );
		field.places.push( new PlaceData( 1,	684.25,	1425.15,	1,	-1,	"0,3",	true,	-2	) );
		field.places.push( new PlaceData( 2,	363.2,	734.05,	1,	-1,	"3,0",	true,	-2	) );
		field.places.push( new PlaceData( 3,	684.25,	664.55,	1,	1,	"1,2",	true,	-2	) );
		field.places.push( new PlaceData( 4,	541.4,	1061.25,	41,	-1,	"",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "road-v"	,	729.5,	1372.6,	0.258804321289063,	0.965927124023438,	-0.965927124023438,	0.258804321289063) );
		field.images.push( new ImageData( "road-v"	,	729.5,	612,	0.258804321289063,	0.965927124023438,	-0.965927124023438,	0.258804321289063) );
		field.images.push( new ImageData( "road-v"	,	651.2,	612,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	337.85,	767.6,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	336.8,	1131.5,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	650.15,	975.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	572.65,	1645.7,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-7"	,	563,	301.15,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "chair-1"	,	159.7,	1645.7,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );
		field.images.push( new ImageData( "rock-0"	,	823.2,	1557.65,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	678.9,	703.2,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "bush-0"	,	823.4,	274.65,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "tree-0"	,	190,	106.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	280.05,	191.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	341.05,	119.75,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	324.5,	259.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	499.95,	97.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	341.05,	48.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	393,	159.35,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	135.2,	172.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	212.15,	242.8,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	252.2,	1431.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-3"	,	850.85,	1647.9,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "building-plot"	,	587.3,	1343.6,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-0"	,	663.55,	1606.3,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "tree-0"	,	599.75,	1552.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-3"	,	316,	1620.05,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "tree-0"	,	142.55,	498.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	631.6,	97.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	595.35,	158.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	659.55,	155.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	341.7,	498.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-0"	,	437.35,	1648.7,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "tree-0"	,	393,	378.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	524.65,	378.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	488.4,	440,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	552.6,	437.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	605.8,	334.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	737.45,	334.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	701.2,	395.35,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	765.4,	392.45,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-5"	,	400.65,	305.9,	2,	0,	0,	2,	62,	36.5) );
		field.images.push( new ImageData( "tree-0"	,	640.2,	466.85,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	458.15,	754.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	519.15,	754.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	549.15,	796.85,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-4"	,	135.55,	375.4,	2.25,	0,	0,	2.25,	64.5,	23) );
		field.images.push( new ImageData( "tree-0"	,	116,	364.95,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	280.7,	427.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	252.2,	671.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-3"	,	434.75,	1333,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "building-plot"	,	573.25,	601.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "hut-0"	,	810.75,	205.9,	1.29998779296875,	0,	0,	1.29998779296875,	174,	105) );
		field.images.push( new ImageData( "hole-2"	,	27,	1176.15,	2.00001525878906,	0,	0,	2.00001525878906,	51,	34) );
		field.images.push( new ImageData( "rock-0"	,	823.2,	845.15,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "bush-3"	,	810.75,	940.75,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "tree-0"	,	202.5,	458.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "hole-0"	,	25.45,	931.7,	2.25,	0,	0,	2.25,	38,	21.5) );
		field.images.push( new ImageData( "hole-1"	,	80.15,	1026.15,	2.25,	0,	0,	2.25,	35.5,	28.5) );
		field.images.push( new ImageData( "rock-4"	,	809.3,	599.7,	2.25,	0,	0,	2.25,	64.5,	23) );
		fields.set( "quest_11" , field );

		
				field = new FieldData(12, "quest_12", false, false, "70,130,200" );
		// create places
		field.places.push( new PlaceData( 0,	803.2,	627.8,	1,	-1,	"1,4",	true,	0	) );
		field.places.push( new PlaceData( 1,	566.75,	1037.65,	1,	-1,	"2,0",	true,	0	) );
		field.places.push( new PlaceData( 2,	413,	1318.15,	1,	-1,	"3,1",	true,	0	) );
		field.places.push( new PlaceData( 3,	744.25,	1470.45,	12,	0,	"2",	true,	0	) );
		field.places.push( new PlaceData( 4,	399.25,	643.1,	1,	1,	"0",	true,	0	) );
		field.places.push( new PlaceData( 5,	688.6,	1202,	41,	-1,	"",	true,	0	) );
		// create images
		field.images.push( new ImageData( "bush-7"	,	689.2,	296.45,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "tree-0"	,	467.25,	115.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	626.15,	92.35,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	467.25,	43.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	519.2,	154.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-5"	,	526.85,	301.2,	2,	0,	0,	2,	62,	36.5) );
		field.images.push( new ImageData( "tree-0"	,	519.2,	374.2,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	650.85,	374.2,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	350.55,	95.6,	1,	0,	0,	1) );
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	696.4,	43.55,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	7.7,	1544.7,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	678.15,	1275.1,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	27.65,	494.6,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	855.25,	704.25,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "chair-1"	,	343.95,	728.15,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );
		field.images.push( new ImageData( "rock-0"	,	724.25,	1235.7,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	374.85,	1450.25,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "road-v"	,	624.75,	839.6,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "road-v"	,	568.85,	949.2,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "road-h"	,	441.5,	1291.95,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );
		field.images.push( new ImageData( "building-plot"	,	456.15,	967.8,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	302,	1255.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	633.25,	1407.45,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	758.2,	595.3,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "bush-4"	,	194.35,	1036.1,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28) );
		field.images.push( new ImageData( "bush-4"	,	84.5,	886.2,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "bush-0"	,	176.75,	971.7,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "road-v"	,	802.25,	598.6,	0.000091552734375,	1,	-1,	0.000091552734375,	44.5,	201.45) );
		field.images.push( new ImageData( "building-plot"	,	692.2,	580.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	288.25,	580.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "chair-0"	,	583.2,	717.05,	2.25,	0,	0,	2.25,	19.5,	14.5) );
		field.images.push( new ImageData( "bush-4"	,	51.9,	967.8,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28) );
		field.images.push( new ImageData( "tree-0"	,	870,	886.2,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	185.45,	191.25,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	307.45,	230.95,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	166.25,	334.25,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	337.1,	398.45,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	398.1,	326.95,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	494.25,	246.3,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	528.25,	287.2,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	635.4,	287.2,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "bush-7"	,	394.3,	1570.7,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "tree-0"	,	395.15,	959.3,	1,	0,	0,	1,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	115.75,	981.2,	1,	0,	0,	1,	61,	71.5) );
		fields.set( "quest_12" , field );




		field = new FieldData(13, "quest_13", false, false, "70,130,210" );
		// create places
		field.places.push( new PlaceData( 0,	749.95,	698.9,	1,	1,	"1",	true,	0	) );
		field.places.push( new PlaceData( 1,	501.45,	1082.3,	1,	-1,	"2,0,4",	true,	0	) );
		field.places.push( new PlaceData( 2,	391.05,	1369.65,	1,	-1,	"3,1",	true,	0	) );
		field.places.push( new PlaceData( 3,	691,	1521.2,	1,	0,	"2",	true,	0	) );
		field.places.push( new PlaceData( 4,	197,	599.15,	1,	1,	"1",	true,	0	) );
		// create images
		field.images.push( new ImageData( "tree-0"	,	715.55,	148.25,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	562.2,	196.7,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	636.25,	241.2,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	592.5,	274.25,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	556.95,	334.15,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	636.25,	334.15,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	715.55,	241.2,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	794.85,	148.25,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	759.3,	208.15,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	724.7,	259.5,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	636.25,	334.15,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	477.65,	241.2,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	680,	394.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	542.65,	432.8,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	641.5,	103.75,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	759.3,	22.25,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	339.9,	330.5,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	432.4,	787.6,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	837.65,	483.45,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	408.85,	734.1,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	203.9,	1496.45,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "chair-1"	,	352.55,	541.8,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );
		field.images.push( new ImageData( "rock-0"	,	597.8,	1306.65,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	572.5,	1400.2,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "road-v"	,	502,	1019.3,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "road-h"	,	352.3,	1343.45,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );
		field.images.push( new ImageData( "building-plot"	,	280.05,	1306.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	580,	1458.2,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	705.7,	682.5,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "building-plot"	,	638.95,	635.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-4"	,	14.15,	1051.25,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "bush-0"	,	-15.7,	964.35,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "chair-0"	,	467.8,	649.85,	2.25,	0,	0,	2.25,	19.5,	14.5) );
		field.images.push( new ImageData( "bush-7"	,	133.3,	917.15,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "road-v"	,	203.9,	728.15,	0.855148315429688,	-0.518386840820313,	0.518386840820313,	0.855148315429688) );
		field.images.push( new ImageData( "building-plot"	,	390.45,	1019.3,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-0"	,	437.5,	402,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "tree-0"	,	190,	106.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	280.05,	191.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	423.7,	191.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	219.25,	315.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	376.5,	259,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	499.95,	87.85,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	341.05,	48.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	701.7,	155.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	158.25,	172.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	158.25,	243.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-4"	,	773.95,	977.9,	2.25003051757813,	0,	0,	2.25003051757813) );
		field.images.push( new ImageData( "bush-0"	,	744.1,	891,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-4"	,	860.95,	1244.8,	2.25003051757813,	0,	0,	2.25003051757813) );
		field.images.push( new ImageData( "bush-3"	,	673.75,	1122.25,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "bush-3"	,	869.55,	940.75,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "bush-0"	,	-8.8,	1171.4,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "rock-0"	,	58.7,	1211.9,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "bush-7"	,	759.3,	351.3,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "rock-4"	,	802,	1122.25,	2.25,	0,	0,	2.25,	64.5,	23) );
		field.images.push( new ImageData( "rock-0"	,	748.75,	444.05,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "road-v"	,	140.3,	627.4,	0.855148315429688,	-0.518386840820313,	0.518386840820313,	0.855148315429688) );
		field.images.push( new ImageData( "building-plot"	,	86,	536.15,	1,	0,	0,	1) );
		fields.set( "quest_13" , field );





		field = new FieldData(14, "quest_14", false, false, "80,140,230" );
		// create places
		field.places.push( new PlaceData( 0,	848.55,	471.4,	1,	1,	"1",	true,	0	) );
		field.places.push( new PlaceData( 1,	600.05,	854.8,	1,	-1,	"2,0,4",	true,	0	) );
		field.places.push( new PlaceData( 2,	391.05,	1274.9,	32,	-1,	"5,3,1",	true,	0	) );
		field.places.push( new PlaceData( 3,	691,	1426.45,	1,	0,	"5,2",	true,	0	) );
		field.places.push( new PlaceData( 4,	340.15,	487.45,	1,	1,	"1",	true,	0	) );
		field.places.push( new PlaceData( 5,	255,	1570.1,	1,	0,	"3,2",	true,	0	) );
		// create images
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	0,	1544.4,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	704.35,	1594.95,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	563,	301.15,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	857.35,	631.25,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "chair-1"	,	527.25,	578.35,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );
		field.images.push( new ImageData( "rock-0"	,	597.8,	1211.9,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	572.5,	1305.45,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "road-v"	,	560,	852.6,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "road-h"	,	352.3,	1248.7,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );
		field.images.push( new ImageData( "building-plot"	,	580,	1363.45,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	804.3,	455,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "building-plot"	,	737.55,	408.4,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-4"	,	32.9,	853.75,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "bush-0"	,	3.05,	766.85,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "chair-0"	,	527.25,	389.25,	2.25,	0,	0,	2.25,	19.5,	14.5) );
		field.images.push( new ImageData( "bush-7"	,	192.65,	631.25,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "road-v"	,	302.5,	500.65,	0.855148315429688,	-0.518386840820313,	0.518386840820313,	0.855148315429688) );
		field.images.push( new ImageData( "building-plot"	,	229.15,	424.45,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	489.05,	791.8,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-0"	,	823.4,	274.65,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "tree-0"	,	190,	106.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	280.05,	191.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	341.05,	119.75,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	324.5,	259.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	499.95,	87.85,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	341.05,	48.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	438.95,	159.35,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	158.25,	172.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	212.15,	242.8,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-4"	,	805.4,	910.95,	2.25003051757813,	0,	0,	2.25003051757813) );
		field.images.push( new ImageData( "bush-4"	,	887.4,	1406.85,	2.25003051757813,	0,	0,	2.25003051757813) );
		field.images.push( new ImageData( "bush-4"	,	546.9,	1594.95,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28) );
		field.images.push( new ImageData( "road-v"	,	408.65,	1162.95,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "building-plot"	,	280.05,	1211.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-3"	,	253.75,	947.15,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "bush-3"	,	887.4,	1036.95,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "tree-0"	,	428.05,	783.3,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-3"	,	64.4,	1149.2,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "tree-0"	,	3.4,	1077.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-h"	,	293.1,	1535.5,	0.934158325195313,	-0.3568115234375,	0.3568115234375,	0.934158325195313) );
		field.images.push( new ImageData( "building-plot"	,	144,	1507.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-0"	,	830.2,	812.3,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "tree-0"	,	769.2,	740.8,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	653.55,	1068.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	714.55,	1068.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	744.55,	1111.2,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	42.15,	317.25,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	-41.15,	686.35,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	-37.15,	410.2,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	-10.85,	763.9,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	-46.4,	823.8,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	-37.15,	503.15,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	42.15,	410.2,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	121.45,	317.25,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	85.9,	377.15,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	6.6,	470.1,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	-37.15,	503.15,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	-2.65,	883.7,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	6.6,	563.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	85.9,	470.1,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	-31.9,	272.75,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	85.9,	191.25,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		fields.set( "quest_14" , field );
		
		
		
				field = new FieldData(15, "quest_15", false, false, "90,180,270" );
		// create places
		field.places.push( new PlaceData( 0,	848.55,	471.4,	1,	1,	"1",	true,	0	) );
		field.places.push( new PlaceData( 1,	600.05,	854.8,	1,	-1,	"2,0,4",	true,	0	) );
		field.places.push( new PlaceData( 2,	391.05,	1274.9,	42,	-1,	"3,5,1",	true,	0	) );
		field.places.push( new PlaceData( 3,	691,	1426.45,	1,	0,	"5,2",	true,	0	) );
		field.places.push( new PlaceData( 4,	340.15,	487.45,	1,	1,	"1",	true,	0	) );
		field.places.push( new PlaceData( 5,	255,	1570.1,	1,	0,	"3,2",	true,	0	) );
		// create images
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	0,	1544.4,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	704.35,	1594.95,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	563,	301.15,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	857.35,	631.25,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "chair-1"	,	527.25,	578.35,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );
		field.images.push( new ImageData( "rock-0"	,	597.8,	1211.9,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	572.5,	1305.45,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "road-v"	,	560,	852.6,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "road-h"	,	352.3,	1248.7,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );
		field.images.push( new ImageData( "building-plot"	,	580,	1363.45,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	804.3,	455,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "building-plot"	,	737.55,	408.4,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-4"	,	32.9,	853.75,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "bush-0"	,	3.05,	766.85,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "chair-0"	,	527.25,	389.25,	2.25,	0,	0,	2.25,	19.5,	14.5) );
		field.images.push( new ImageData( "bush-7"	,	192.65,	631.25,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "road-v"	,	302.5,	500.65,	0.855148315429688,	-0.518386840820313,	0.518386840820313,	0.855148315429688) );
		field.images.push( new ImageData( "building-plot"	,	229.15,	424.45,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	489.05,	791.8,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-0"	,	823.4,	274.65,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "tree-0"	,	190,	106.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	280.05,	191.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	341.05,	119.75,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	324.5,	259.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	499.95,	87.85,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	341.05,	48.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	438.95,	159.35,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	158.25,	172.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	212.15,	242.8,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-4"	,	805.4,	910.95,	2.25003051757813,	0,	0,	2.25003051757813) );
		field.images.push( new ImageData( "bush-4"	,	887.4,	1406.85,	2.25003051757813,	0,	0,	2.25003051757813) );
		field.images.push( new ImageData( "bush-4"	,	546.9,	1594.95,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28) );
		field.images.push( new ImageData( "road-v"	,	408.65,	1162.95,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "building-plot"	,	280.05,	1211.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-3"	,	253.75,	947.15,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "bush-3"	,	887.4,	1036.95,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "tree-0"	,	428.05,	783.3,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-3"	,	64.4,	1149.2,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "tree-0"	,	3.4,	1077.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-h"	,	293.1,	1535.5,	0.934158325195313,	-0.3568115234375,	0.3568115234375,	0.934158325195313) );
		field.images.push( new ImageData( "building-plot"	,	144,	1507.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-0"	,	830.2,	812.3,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "tree-0"	,	769.2,	740.8,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	653.55,	1068.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	714.55,	1068.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	744.55,	1111.2,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-4"	,	42.15,	796,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "bush-0"	,	12.3,	709.1,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "tree-0"	,	12.65,	1019.95,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	51.4,	259.5,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	-31.9,	628.6,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	-27.9,	352.45,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	-1.6,	706.15,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	-37.15,	766.05,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	-27.9,	445.4,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	51.4,	352.45,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	95.15,	319.4,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	15.85,	412.35,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	-27.9,	445.4,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	6.6,	825.95,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	15.85,	505.3,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	95.15,	412.35,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	-22.65,	215,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "tree-0"	,	95.15,	133.5,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		fields.set( "quest_15" , field );




		field = new FieldData(16, "quest_16", false, false, "90,180,280" );
		// create places
		field.places.push( new PlaceData( 0,	733.45,	1296.15,	1,	-1,	"1,4,6",	true,	0	) );
		field.places.push( new PlaceData( 1,	563.85,	1532.4,	1,	0,	"0,4",	true,	0	) );
		field.places.push( new PlaceData( 2,	334.05,	342.5,	12,	1,	"3,5",	true,	0	) );
		field.places.push( new PlaceData( 3,	665.8,	518.2,	1,	-1,	"5,2",	true,	0	) );
		field.places.push( new PlaceData( 4,	277.35,	1340.75,	1,	0,	"0,1",	true,	0	) );
		field.places.push( new PlaceData( 5,	243.35,	661.85,	1,	-1,	"6,3,2",	true,	0	) );
		field.places.push( new PlaceData( 6,	478.65,	991.1,	42,	-1,	"0,5",	true,	0	) );
		// create images
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	704.75,	-3.6,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	9.8,	1541.25,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	572.95,	1633.5,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	953.95,	1403.75,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-4"	,	878.95,	463.35,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "chair-1"	,	715.6,	319.5,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );
		field.images.push( new ImageData( "rock-0"	,	622.5,	725.05,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	848.1,	938.5,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "road-v"	,	207,	716.6,	0.790695190429688,	-0.6121826171875,	0.6121826171875,	0.790695190429688) );
		field.images.push( new ImageData( "road-h"	,	374,	279.5,	0.776123046875,	0.63055419921875,	-0.63055419921875,	0.776123046875) );
		field.images.push( new ImageData( "road-h"	,	324.2,	1288.85,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	713.55,	1223.2,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "bush-4"	,	22.25,	806.05,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "chair-0"	,	858.3,	276.6,	2.25,	0,	0,	2.25,	19.5,	14.5) );
		field.images.push( new ImageData( "bush-7"	,	-8.65,	1060.7,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "road-v"	,	214.7,	1337.2,	0.595306396484375,	-0.803482055664063,	0.803482055664063,	0.595306396484375) );
		field.images.push( new ImageData( "building-plot"	,	166.35,	1277.75,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	452.85,	1469.4,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-0"	,	681.55,	220.8,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "tree-0"	,	423.6,	0,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	560.95,	-38.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	423.6,	-71.5,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	459.8,	116.6,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	499.95,	33.35,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	559.95,	88.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	484.6,	-71.5,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	158.25,	172.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	91.6,	206.2,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-4"	,	827,	743.05,	2.25003051757813,	0,	0,	2.25003051757813) );
		field.images.push( new ImageData( "bush-4"	,	683.85,	828.85,	2.25003051757813,	0,	0,	2.25003051757813) );
		field.images.push( new ImageData( "bush-4"	,	772.3,	1412.4,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28) );
		field.images.push( new ImageData( "road-v"	,	275.15,	316.3,	0.971237182617188,	0.23809814453125,	-0.23809814453125,	0.971237182617188) );
		field.images.push( new ImageData( "building-plot"	,	223.05,	279.5,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-3"	,	812.25,	812.5,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "tree-0"	,	-1.3,	889.85,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-3"	,	901.3,	1214.6,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "tree-0"	,	213.6,	1134.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-h"	,	267.9,	627.25,	0.934158325195313,	-0.3568115234375,	0.3568115234375,	0.934158325195313) );
		field.images.push( new ImageData( "building-plot"	,	554.8,	455.2,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-7"	,	484.6,	276.6,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "building-plot"	,	113.9,	598.85,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-0"	,	851.8,	644.4,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "tree-0"	,	790.8,	572.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	790.8,	964.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	772.3,	964.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	881.8,	1006.45,	1,	0,	0,	1) );
		field.images.push( new ImageData( "chair-0"	,	3.85,	1349.65,	2.25,	0,	0,	2.25,	19.5,	14.5) );
		field.images.push( new ImageData( "rock-3"	,	45.4,	453.95,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "tree-0"	,	-30.4,	479.6,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	-30.4,	551.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	91.6,	928.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	631.6,	97.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	595.35,	-1.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	401,	17,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	71.4,	396.45,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-0"	,	463.1,	1376.8,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "road-v"	,	422.15,	1009.35,	0.790695190429688,	-0.6121826171875,	0.6121826171875,	0.790695190429688) );
		field.images.push( new ImageData( "building-plot"	,	367.65,	928.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	622.45,	1233.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	301.6,	71.5,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	240.6,	143,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-0"	,	776.8,	1679.1,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		fields.set( "quest_16" , field );




		field = new FieldData(17, "quest_17", false, false, "80,170,290" );
		// create places
		field.places.push( new PlaceData( 0,	848.55,	471.4,	1,	1,	"1,4",	true,	0	) );
		field.places.push( new PlaceData( 1,	586.65,	876.35,	1,	-1,	"2,3,0,4",	true,	0	) );
		field.places.push( new PlaceData( 2,	361.6,	1274.9,	1,	-1,	"3,5,1",	true,	0	) );
		field.places.push( new PlaceData( 3,	646.8,	1426.45,	1,	-1,	"5,2,1",	true,	0	) );
		field.places.push( new PlaceData( 4,	340.15,	487.45,	1,	1,	"1,0",	true,	0	) );
		field.places.push( new PlaceData( 5,	254.35,	1542.85,	1,	0,	"3,2",	true,	0	) );
		// create images
		field.images.push( new ImageData( "road-v"	,	586.65,	876.35,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	586.65,	994.2,	1,	0,	0,	1) );
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	3.4,	1538.25,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	704.35,	1594.95,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	563,	301.15,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	873.05,	1090,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "chair-1"	,	527.25,	578.35,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );
		field.images.push( new ImageData( "rock-0"	,	772.55,	986.7,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	872.4,	703.2,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "road-h"	,	322.85,	1248.7,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );
		field.images.push( new ImageData( "road-h"	,	387,	435.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	804.3,	455,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "building-plot"	,	737.55,	408.4,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-4"	,	32.9,	853.75,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "bush-0"	,	3.05,	766.85,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "chair-0"	,	519.1,	354,	2.25,	0,	0,	2.25,	19.5,	14.5) );
		field.images.push( new ImageData( "bush-7"	,	192.65,	631.25,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "road-v"	,	302.5,	500.65,	0.855148315429688,	-0.518386840820313,	0.518386840820313,	0.855148315429688) );
		field.images.push( new ImageData( "building-plot"	,	229.15,	424.45,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	560,	852.6,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "bush-0"	,	823.4,	274.65,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "tree-0"	,	190,	106.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	280.05,	191.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	341.05,	119.75,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	324.5,	259.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	499.95,	97.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	341.05,	48.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	393,	159.35,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	158.25,	172.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	212.15,	242.8,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-4"	,	821.1,	1369.7,	2.25003051757813,	0,	0,	2.25003051757813) );
		field.images.push( new ImageData( "bush-4"	,	887.4,	1406.85,	2.25003051757813,	0,	0,	2.25003051757813) );
		field.images.push( new ImageData( "bush-4"	,	546.9,	1594.95,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28) );
		field.images.push( new ImageData( "road-v"	,	379.2,	1162.95,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "building-plot"	,	250.6,	1211.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-3"	,	253.75,	947.15,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "bush-3"	,	903.1,	1495.7,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "tree-0"	,	332.35,	783.3,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	489.05,	791.8,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-3"	,	64.4,	1149.2,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "tree-0"	,	3.4,	1077.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-h"	,	240.85,	1505.5,	0.975448608398438,	-0.22015380859375,	0.22015380859375,	0.975448608398438) );
		field.images.push( new ImageData( "building-plot"	,	535.8,	1363.45,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	157.4,	1468.95,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-0"	,	845.9,	1271.05,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "tree-0"	,	784.9,	1199.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	828.3,	843.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	889.3,	843.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	919.3,	886,	1,	0,	0,	1) );
		field.images.push( new ImageData( "chair-0"	,	483.35,	545.7,	2.25,	0,	0,	2.25,	19.5,	14.5) );
		field.images.push( new ImageData( "rock-3"	,	582.3,	552.7,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "tree-0"	,	36.25,	355.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	36.25,	427.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	97.25,	498.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	631.6,	97.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	595.35,	158.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	659.55,	155.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	198.05,	435.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-0"	,	41.5,	1387.4,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		fields.set( "quest_17" , field );




		field = new FieldData(18, "battle_18", false, false, "90,180,280" );
		// create places
		field.places.push( new PlaceData( 0,	276.3,	1599.95,	1,	0,	"1,3",	true,	0	) );
		field.places.push( new PlaceData( 1,	575.95,	1506.15,	1,	-1,	"0,2",	true,	0	) );
		field.places.push( new PlaceData( 2,	877.75,	1425.15,	1,	-1,	"1,5",	true,	0	) );
		field.places.push( new PlaceData( 3,	276.3,	839.35,	1,	-1,	"4,0",	true,	0	) );
		field.places.push( new PlaceData( 4,	575.95,	745.55,	1,	-1,	"5,3",	true,	0	) );
		field.places.push( new PlaceData( 5,	877.75,	664.55,	12,	1,	"2,4",	true,	0	) );
		field.places.push( new PlaceData( 6,	734.9,	1061.25,	41,	-1,	"",	true,	0	) );
		field.places.push( new PlaceData( 7,	408.05,	1131.1,	41,	-1,	"",	true,	0	) );
		// create images
		field.images.push( new ImageData( "road-v"	,	923,	1372.6,	0.258804321289063,	0.965927124023438,	-0.965927124023438,	0.258804321289063) );
		field.images.push( new ImageData( "road-v"	,	609.9,	1458.45,	0.25885009765625,	0.965896606445313,	-0.96588134765625,	0.258834838867188) );
		field.images.push( new ImageData( "road-v"	,	234.45,	1211.75,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	609.9,	697.85,	0.25885009765625,	0.965896606445313,	-0.96588134765625,	0.258834838867188) );
		field.images.push( new ImageData( "road-v"	,	235.5,	851.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	923,	612,	0.258804321289063,	0.965927124023438,	-0.965927124023438,	0.258804321289063) );
		field.images.push( new ImageData( "road-v"	,	531.35,	767.6,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	530.3,	1131.5,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	843.65,	975.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	844.7,	612,	1,	0,	0,	1) );
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-6.6,	1558.25,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	572.65,	1645.7,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-7"	,	563,	301.15,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "chair-1"	,	350.1,	1645.7,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );
		field.images.push( new ImageData( "rock-0"	,	823.2,	1557.65,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	872.4,	703.2,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "bush-7"	,	308.7,	1384.05,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "bush-0"	,	823.4,	274.65,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "tree-0"	,	190,	106.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	280.05,	191.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	341.05,	119.75,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	324.5,	259.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	499.95,	97.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	341.05,	48.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	393,	159.35,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	135.2,	172.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	212.15,	242.8,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	445.7,	1431.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-3"	,	850.85,	1647.9,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "building-plot"	,	167.15,	1515.4,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	780.8,	1343.6,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-0"	,	737.25,	1606.3,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "tree-0"	,	704.15,	1552.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-3"	,	405.15,	1620.05,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "tree-0"	,	97.7,	355.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	97.7,	427.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	158.7,	498.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	631.6,	97.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	595.35,	158.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	659.55,	155.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	265.35,	550.45,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-0"	,	526.4,	1648.7,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "building-plot"	,	445.7,	671.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	167.15,	754.8,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	780.8,	583,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	393,	378.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	524.65,	378.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	488.4,	440,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	552.6,	437.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	605.8,	334.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	737.45,	334.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	701.2,	395.35,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	765.4,	392.45,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-5"	,	400.65,	305.9,	2,	0,	0,	2,	62,	36.5) );
		field.images.push( new ImageData( "tree-0"	,	280.7,	427.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	640.2,	466.85,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	651.65,	754.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	712.65,	754.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	742.65,	796.85,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-4"	,	135.55,	375.4,	2.25,	0,	0,	2.25,	64.5,	23) );
		field.images.push( new ImageData( "tree-0"	,	64.05,	1068.75,	1,	0,	0,	1) );
		fields.set( "battle_18" , field );
		
		
		
		
		field = new FieldData(0, "battle_0", false, false, "50,90,110" );
		// create places
		field.places.push( new PlaceData( 0,	540,	960,	1,	-1,	"1,2",	true,	-2	) );
		field.places.push( new PlaceData( 1,	800,	1500,	1,	0,	"0",	true,	-2	) );
		field.places.push( new PlaceData( 2,	280,	420,	1,	1,	"0",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "road-v"	,	573.05,	1124.75,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );
		field.images.push( new ImageData( "background-0-l"	,	0,	3.1,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	174.5,	1174.05,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	461.4,	1287.25,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	301.5,	1160.15,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "rock-0"	,	494.25,	708.1,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "building-plot"	,	690.95,	1425,	1,	0,	0,	1) );
		field.images.push( new ImageData( "hole-1"	,	301.45,	1222,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28.5) );
		field.images.push( new ImageData( "hole-2"	,	531.5,	522.6,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );
		field.images.push( new ImageData( "bush-7"	,	617.7,	581.05,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "road-v"	,	247.4,	478.65,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );
		field.images.push( new ImageData( "rock-3"	,	309.5,	771.7,	2.24998474121094,	0,	0,	2.24998474121094,	27,	15) );
		field.images.push( new ImageData( "building-plot"	,	165.2,	360.35,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	410.2,	799.6,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );
		field.images.push( new ImageData( "building-plot"	,	426.15,	894.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	728.8,	917.8,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		fields.set( "battle_0" , field );




		field = new FieldData(1, "battle_1", false, false, "50,90,120" );
		// create places
		field.places.push( new PlaceData( 0,	540,	960,	1,	-1,	"3,4,2,1",	true,	-2	) );
		field.places.push( new PlaceData( 1,	800,	1500,	1,	0,	"0,3",	true,	-2	) );
		field.places.push( new PlaceData( 2,	280,	420,	1,	1,	"0,4",	true,	-2	) );
		field.places.push( new PlaceData( 3,	800,	960,	1,	-1,	"0,1",	true,	-2	) );
		field.places.push( new PlaceData( 4,	280,	960,	1,	-1,	"0,2",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "rock-0"	,	99.2,	668.35,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "road-v"	,	776,	1082.3,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	235.75,	548.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	775.85,	944.4,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	235.75,	413.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-h"	,	328.2,	928.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	573.05,	1124.75,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );
		field.images.push( new ImageData( "background-0-l"	,	0,	3.1,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	472.4,	400.4,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	624,	582.85,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	810.75,	624.8,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "rock-0"	,	297.2,	1346.25,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "building-plot"	,	690.95,	1425,	1,	0,	0,	1) );
		field.images.push( new ImageData( "hole-1"	,	599.35,	448.35,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28.5) );
		field.images.push( new ImageData( "hole-2"	,	334.45,	1160.75,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );
		field.images.push( new ImageData( "bush-7"	,	420.65,	1219.2,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "road-v"	,	247.4,	478.65,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );
		field.images.push( new ImageData( "rock-3"	,	715.6,	1357.5,	2.24998474121094,	0,	0,	2.24998474121094,	27,	15) );
		field.images.push( new ImageData( "building-plot"	,	165.2,	360.35,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	410.2,	799.6,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );
		field.images.push( new ImageData( "building-plot"	,	426.15,	894.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	197,	1160.75,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "building-plot"	,	165.2,	901.95,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	687.85,	901.4,	1,	0,	0,	1) );
		fields.set( "battle_1" , field );




		field = new FieldData(2, "battle_2", false, false, "30,60,80" );
		// create places
		field.places.push( new PlaceData( 0,	540,	960,	1,	-1,	"1,2",	true,	-2	) );
		field.places.push( new PlaceData( 1,	540,	1420,	1,	0,	"0",	true,	-2	) );
		field.places.push( new PlaceData( 2,	540,	500,	1,	1,	"0",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "road-v"	,	496.35,	520.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	496.35,	993.5,	1,	0,	0,	1) );
		field.images.push( new ImageData( "background-0-l"	,	0,	3.1,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	180.45,	747.35,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	138,	1020.9,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	64.05,	848.85,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "rock-0"	,	804.45,	864.75,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "building-plot"	,	431.2,	1363.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "hole-1"	,	119.7,	569.2,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28.5) );
		field.images.push( new ImageData( "hole-2"	,	841.7,	679.25,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );
		field.images.push( new ImageData( "bush-7"	,	595.6,	661.85,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "rock-3"	,	119.7,	713.6,	2.24998474121094,	0,	0,	2.24998474121094,	27,	15) );
		field.images.push( new ImageData( "building-plot"	,	426.15,	894.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	753.4,	974.85,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "building-plot"	,	427.95,	443.2,	1,	0,	0,	1) );
		fields.set( "battle_2" , field );




		field = new FieldData(3, "battle_3", false, false, "50,90,120" );
		// create places
		field.places.push( new PlaceData( 0,	800,	500,	1,	-1,	"",	true,	-2	) );
		field.places.push( new PlaceData( 1,	280,	1420,	1,	-1,	"",	true,	-2	) );
		field.places.push( new PlaceData( 2,	760,	1420,	1,	0,	"",	true,	-2	) );
		field.places.push( new PlaceData( 3,	320,	500,	1,	1,	"",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "road-v"	,	434.15,	1050.1,	0.866012573242188,	0.5,	-0.5,	0.866012573242188) );
		field.images.push( new ImageData( "road-v"	,	623.45,	727.65,	0.866012573242188,	0.5,	-0.5,	0.866012573242188) );
		field.images.push( new ImageData( "road-v"	,	757.95,	488.6,	0.866012573242188,	0.5,	-0.5,	0.866012573242188) );
		field.images.push( new ImageData( "road-h"	,	355.7,	467.6,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	687.5,	447.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	167.85,	1367.5,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-h"	,	300.6,	1381.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-4"	,	653.35,	1152.45,	2.25,	0,	0,	2.25,	64.5,	23) );
		field.images.push( new ImageData( "background-0-l"	,	0,	3.1,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-1.3,	1510.6,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	158.95,	797,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	116.5,	1070.55,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	42.55,	898.5,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "rock-0"	,	792.2,	803.35,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "hole-1"	,	792.2,	865.25,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28.5) );
		field.images.push( new ImageData( "hole-2"	,	721.6,	686,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );
		field.images.push( new ImageData( "bush-7"	,	258.55,	922.5,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "rock-3"	,	64.45,	637.35,	2.24998474121094,	0,	0,	2.24998474121094,	27,	15) );
		field.images.push( new ImageData( "bush-0"	,	472.1,	124.45,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-4"	,	355.7,	225.95,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "tree-0"	,	887.4,	1460.7,	1.29998779296875,	0,	0,	1.29998779296875,	61,	71.5) );
		field.images.push( new ImageData( "building-plot"	,	646,	1361.4,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	199.95,	447.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-7"	,	722.75,	1050.1,	2.25,	0,	0,	2.25,	41.5,	19) );
		fields.set( "battle_3" , field );
	}
}