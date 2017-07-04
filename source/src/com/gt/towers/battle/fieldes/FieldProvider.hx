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
		field.places.push( new PlaceData( 0,	400,	690,	1,	1,	"1",	false,	2	) );
		field.places.push( new PlaceData( 1,	680,	1230,	12,	0,	"0",	true,	1	) );
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
		field.places.push( new PlaceData( 0,	551.6,	1041.15,	1,	-1,	"1,2",	false,	12	) );
		field.places.push( new PlaceData( 1,	779.65,	1471.45,	12,	0,	"0",	true,	11	) );
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
		field.places.push( new PlaceData( 0,	521.45,	669.7,	1,	1,	"1,2",	false,	3	) );
		field.places.push( new PlaceData( 1,	285.95,	1208.35,	11,	0,	"0",	true,	1	) );
		field.places.push( new PlaceData( 2,	796.55,	1080.6,	11,	0,	"0",	true,	2	) );
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
		field.images.push( new ImageData( "chair-1"	,	441.85,	285.55,	2.24998474121094,	0,	0,	2.24998474121094,	45,	25) );
		field.images.push( new ImageData( "road-v"	,	399.4,	829.45,	0.913772583007813,	0.403274536132813,	-0.403289794921875,	0.913742065429688,	44.45,	201.5) );
		fields.set( "quest_2" , field );




		field = new FieldData(3, "quest_3", true, true, "60,100,120" );
		// create places
		field.places.push( new PlaceData( 0,	576.45,	1060.95,	1,	-1,	"3,1,2",	true,	0	) );
		field.places.push( new PlaceData( 1,	340.95,	1599.6,	12,	0,	"0",	true,	0	) );
		field.places.push( new PlaceData( 2,	860.75,	1441.55,	1,	0,	"0",	true,	-10	) );
		field.places.push( new PlaceData( 3,	571.95,	456.05,	11,	1,	"0",	true,	0	) );
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
		field.images.push( new ImageData( "tree-0"	,	212.95,	915.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-0"	,	253.55,	1107.6,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-0"	,	186.05,	1148.1,	2.25,	0,	0,	2.25,	30,	18) );
		fields.set( "quest_3" , field );
		
		
		
		field = new FieldData(4, "quest_4", false, false, "60,100,120" );
		// create places
		field.places.push( new PlaceData( 0,	803.2,	505.55,	12,	1,	"1",	true,	-2	) );
		field.places.push( new PlaceData( 1,	566.75,	900.1,	1,	-1,	"0,2",	true,	-2	) );
		field.places.push( new PlaceData( 2,	310,	1380,	1,	-1,	"1,3",	true,	-2	) );
		field.places.push( new PlaceData( 3,	680,	1530,	12,	0,	"2",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	837.65,	836.15,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	788.8,	313.75,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	203.9,	1496.45,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "chair-1"	,	343.95,	590.6,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );
		field.images.push( new ImageData( "rock-0"	,	535.9,	1154.9,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	555.45,	1400.65,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "road-v"	,	624.75,	702.05,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "road-v"	,	447.65,	1024.55,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "road-h"	,	335.25,	1343.9,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );
		field.images.push( new ImageData( "building-plot"	,	456.15,	830.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	195.75,	1307.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	562.95,	1458.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	758.2,	457.75,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "building-plot"	,	692.2,	442.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-4"	,	93.9,	836.15,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "bush-0"	,	64.05,	749.25,	2.25,	0,	0,	2.25,	30,	18) );
		fields.set( "quest_4" , field );




		field = new FieldData(5, "quest_5", false, false, "30,55,70" );
		// create places
		field.places.push( new PlaceData( 0,	803.2,	627.8,	1,	-1,	"1,4",	true,	-2	) );
		field.places.push( new PlaceData( 1,	566.75,	1037.65,	1,	-1,	"0,2",	true,	-2	) );
		field.places.push( new PlaceData( 2,	413,	1318.15,	1,	-1,	"1,3",	true,	-2	) );
		field.places.push( new PlaceData( 3,	744.25,	1470.45,	12,	0,	"2",	true,	-2	) );
		field.places.push( new PlaceData( 4,	399.25,	643.1,	11,	1,	"0",	true,	-2	) );
		field.places.push( new PlaceData( 5,	686.7,	1202,	41,	-1,	"",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	696.4,	43.55,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	7.7,	1501.6,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
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
		fields.set( "quest_5" , field );




		field = new FieldData(6, "quest_6", false, false, "70,120,150" );
		// create places
		field.places.push( new PlaceData( 0,	749.95,	698.9,	11,	1,	"1",	true,	-2	) );
		field.places.push( new PlaceData( 1,	501.45,	1082.3,	1,	-1,	"0,2,4",	true,	-2	) );
		field.places.push( new PlaceData( 2,	391.05,	1369.65,	1,	-1,	"1,3",	true,	-2	) );
		field.places.push( new PlaceData( 3,	691,	1521.2,	12,	0,	"2",	true,	-2	) );
		field.places.push( new PlaceData( 4,	241.55,	714.95,	11,	1,	"1",	true,	-2	) );
		// create images
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
		field.images.push( new ImageData( "building-plot"	,	130.55,	651.95,	1,	0,	0,	1) );
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
		fields.set( "quest_6" , field );



		field = new FieldData(7, "quest_7", false, false, "85,140,180" );
		// create places
		field.places.push( new PlaceData( 0,	807.95,	559.8,	1,	1,	"1",	true,	0	) );
		field.places.push( new PlaceData( 1,	559.45,	943.2,	1,	-1,	"0,2,4",	true,	0	) );
		field.places.push( new PlaceData( 2,	391.05,	1274.9,	42,	-1,	"1,5,3",	true,	0	) );
		field.places.push( new PlaceData( 3,	766,	1449.45,	1,	0,	"2",	true,	0	) );
		field.places.push( new PlaceData( 4,	299.55,	575.85,	1,	1,	"1",	true,	0	) );
		field.places.push( new PlaceData( 5,	255,	1531.65,	1,	0,	"2",	true,	0	) );
		// create images
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	0,	1544.4,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	704.35,	1594.95,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	563,	301.15,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "chair-1"	,	486.65,	666.75,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );
		field.images.push( new ImageData( "rock-0"	,	597.8,	1211.9,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	572.5,	1305.45,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "road-v"	,	560,	880.2,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "road-h"	,	434.3,	1276.3,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );
		field.images.push( new ImageData( "building-plot"	,	655,	1386.45,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	763.7,	543.4,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "building-plot"	,	696.95,	496.8,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-4"	,	32.9,	853.75,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "bush-0"	,	3.05,	766.85,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "chair-0"	,	486.65,	477.65,	2.25,	0,	0,	2.25,	19.5,	14.5) );
		field.images.push( new ImageData( "bush-7"	,	152.05,	719.65,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "road-v"	,	261.9,	589.05,	0.855148315429688,	-0.518386840820313,	0.518386840820313,	0.855148315429688) );
		field.images.push( new ImageData( "building-plot"	,	188.55,	512.85,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	448.45,	880.2,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-0"	,	823.4,	274.65,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "tree-0"	,	190,	106.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	280.05,	191.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	423.7,	191.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	826.4,	1039.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	364.3,	259.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	499.95,	87.85,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	341.05,	48.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	701.7,	155.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	158.25,	172.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	70.65,	315.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-4"	,	805.4,	910.95,	2.25003051757813,	0,	0,	2.25003051757813) );
		field.images.push( new ImageData( "bush-0"	,	775.55,	824.05,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-4"	,	920.25,	1166.55,	2.25003051757813,	0,	0,	2.25003051757813) );
		field.images.push( new ImageData( "bush-4"	,	546.9,	1594.95,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28) );
		field.images.push( new ImageData( "road-v"	,	408.65,	1162.95,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "building-plot"	,	280.05,	1211.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	144,	1468.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-3"	,	253.75,	947.15,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "bush-3"	,	887.4,	1036.95,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "tree-0"	,	387.45,	871.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	664.9,	1006.2,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-3"	,	64.4,	1149.2,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "tree-0"	,	3.4,	1077.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-1"	,	876.15,	360.65,	2.25,	0,	0,	2.25,	40.5,	26) );
		field.images.push( new ImageData( "bush-2"	,	876.15,	719.65,	2.25,	0,	0,	2.25,	31,	26.5) );
		fields.set( "quest_7" , field );




		field = new FieldData(8, "quest_8", false, false, "90,140,180" );
		// create places
		field.places.push( new PlaceData( 0,	848.55,	471.4,	1,	1,	"1",	true,	0	) );
		field.places.push( new PlaceData( 1,	600.05,	854.8,	1,	-1,	"0,2,4",	true,	0	) );
		field.places.push( new PlaceData( 2,	391.05,	1274.9,	32,	-1,	"1,3,5",	true,	0	) );
		field.places.push( new PlaceData( 3,	691,	1426.45,	1,	0,	"2,5",	true,	0	) );
		field.places.push( new PlaceData( 4,	340.15,	487.45,	1,	1,	"1",	true,	0	) );
		field.places.push( new PlaceData( 5,	255,	1570.1,	1,	0,	"2,3",	true,	0	) );
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
		fields.set( "quest_8" , field );




		field = new FieldData(9, "quest_9", false, false, "110,170,220" );
		// create places
		field.places.push( new PlaceData( 0,	848.55,	471.4,	11,	1,	"1,4",	true,	0	) );
		field.places.push( new PlaceData( 1,	600.05,	854.8,	42,	-1,	"0,2,4",	true,	0	) );
		field.places.push( new PlaceData( 2,	391.05,	1274.9,	42,	-1,	"1,5,3",	true,	0	) );
		field.places.push( new PlaceData( 3,	691,	1426.45,	1,	0,	"2,5",	true,	0	) );
		field.places.push( new PlaceData( 4,	340.15,	487.45,	11,	1,	"0,1",	true,	0	) );
		field.places.push( new PlaceData( 5,	255,	1570.1,	1,	0,	"2,3",	true,	0	) );
		// create images
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	0,	1544.75,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
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
		field.images.push( new ImageData( "road-h"	,	387,	435.55,	1,	0,	0,	1) );
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
		field.images.push( new ImageData( "tree-0"	,	499.95,	97.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	341.05,	48.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	393,	159.35,	1,	0,	0,	1) );
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
		fields.set( "quest_9" , field );
		
		
				field = new FieldData(10, "quest_10", false, false, "110,170,220" );
		// create places
		field.places.push( new PlaceData( 0,	733.45,	1400.9,	1,	-1,	"4,1,6",	true,	0	) );
		field.places.push( new PlaceData( 1,	566.8,	1703.9,	1,	0,	"4,0",	true,	0	) );
		field.places.push( new PlaceData( 2,	334.05,	361.25,	12,	1,	"5,3",	true,	0	) );
		field.places.push( new PlaceData( 3,	665.8,	622.95,	1,	-1,	"5,2",	true,	0	) );
		field.places.push( new PlaceData( 4,	277.35,	1445.5,	1,	-1,	"1,0",	true,	0	) );
		field.places.push( new PlaceData( 5,	224.9,	766.6,	1,	-1,	"6,3,2",	true,	0	) );
		field.places.push( new PlaceData( 6,	478.65,	1095.85,	43,	-1,	"0,5",	true,	0	) );
		// create images
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	0.55,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	572.95,	1655.05,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	953.95,	1508.5,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-4"	,	878.95,	568.1,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "chair-1"	,	715.6,	424.25,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );
		field.images.push( new ImageData( "rock-0"	,	622.5,	829.8,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	848.1,	1043.25,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "road-v"	,	207,	821.35,	0.790695190429688,	-0.6121826171875,	0.6121826171875,	0.790695190429688) );
		field.images.push( new ImageData( "road-h"	,	364.25,	308.95,	0.776123046875,	0.63055419921875,	-0.63055419921875,	0.776123046875) );
		field.images.push( new ImageData( "road-h"	,	324.2,	1393.6,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	713.55,	1361.75,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "bush-4"	,	22.25,	910.8,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "bush-0"	,	-317.9,	766.85,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "chair-0"	,	858.3,	381.35,	2.25,	0,	0,	2.25,	19.5,	14.5) );
		field.images.push( new ImageData( "bush-7"	,	-8.65,	1165.45,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "road-v"	,	190,	1464,	0.595306396484375,	-0.803482055664063,	0.803482055664063,	0.595306396484375) );
		field.images.push( new ImageData( "building-plot"	,	166.35,	1382.5,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	459.55,	1614.2,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-0"	,	681.55,	325.55,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "tree-0"	,	190,	106.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	280.05,	58.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	402.05,	29.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	459.8,	116.6,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	499.95,	33.35,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	350.55,	95.6,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	422.15,	0,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	158.25,	172.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	91.6,	310.95,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-4"	,	827,	847.8,	2.25003051757813,	0,	0,	2.25003051757813) );
		field.images.push( new ImageData( "bush-4"	,	683.85,	933.6,	2.25003051757813,	0,	0,	2.25003051757813) );
		field.images.push( new ImageData( "bush-4"	,	772.3,	1517.15,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28) );
		field.images.push( new ImageData( "road-v"	,	275.15,	359.65,	0.971237182617188,	0.23809814453125,	-0.23809814453125,	0.971237182617188) );
		field.images.push( new ImageData( "building-plot"	,	223.05,	298.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-3"	,	-182.9,	1014.45,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "bush-3"	,	812.25,	917.25,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "tree-0"	,	-1.3,	889.85,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-3"	,	901.3,	1319.35,	2.25,	0,	0,	2.25,	28.5,	16.5) );
		field.images.push( new ImageData( "tree-0"	,	213.6,	1238.85,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-h"	,	267.9,	732,	0.934158325195313,	-0.3568115234375,	0.3568115234375,	0.934158325195313) );
		field.images.push( new ImageData( "building-plot"	,	554.8,	559.95,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-7"	,	280.45,	498.4,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "building-plot"	,	113.9,	703.6,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-0"	,	851.8,	749.15,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "tree-0"	,	790.8,	677.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	790.8,	1068.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	772.3,	1068.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	881.8,	1111.2,	1,	0,	0,	1) );
		field.images.push( new ImageData( "chair-0"	,	3.85,	1349.65,	2.25,	0,	0,	2.25,	19.5,	14.5) );
		field.images.push( new ImageData( "rock-3"	,	45.4,	453.95,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "tree-0"	,	-30.4,	479.6,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	-30.4,	551.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	91.6,	1032.85,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	631.6,	97.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	595.35,	-1.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	520.8,	153.35,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	71.4,	501.2,	1,	0,	0,	1) );
		field.images.push( new ImageData( "rock-0"	,	430.65,	1520.4,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "road-v"	,	422.15,	1114.1,	0.790695190429688,	-0.6121826171875,	0.6121826171875,	0.790695190429688) );
		field.images.push( new ImageData( "building-plot"	,	367.65,	1032.85,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	622.45,	1337.9,	1,	0,	0,	1) );
		fields.set( "quest_10" , field );




		field = new FieldData(11, "quest_11", false, false, "60,100,220" );
		// create places
		field.places.push( new PlaceData( 0,	848.55,	471.4,	1,	1,	"1,4",	true,	0	) );
		field.places.push( new PlaceData( 1,	586.65,	876.35,	1,	-1,	"2,0,4,3",	true,	0	) );
		field.places.push( new PlaceData( 2,	361.6,	1274.9,	1,	-1,	"3,5,1",	true,	0	) );
		field.places.push( new PlaceData( 3,	646.8,	1426.45,	1,	-1,	"5,2,1",	true,	0	) );
		field.places.push( new PlaceData( 4,	340.15,	487.45,	1,	-1,	"0,1",	true,	0	) );
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
		field.images.push( new ImageData( "chair-0"	,	527.25,	389.25,	2.25,	0,	0,	2.25,	19.5,	14.5) );
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
		fields.set( "quest_11" , field );	
		
		
		
		
		field = new FieldData(0, "battle_0", false, false, "90,120,180" );
		// create places
		field.places.push( new PlaceData( 0,	340,	320,	12,	1,	"1,2",	true,	-2	) );
		field.places.push( new PlaceData( 1,	770,	600,	1,	-1,	"0,2",	true,	-2	) );
		field.places.push( new PlaceData( 2,	300,	640,	1,	-1,	"0,1,3",	true,	-2	) );
		field.places.push( new PlaceData( 3,	540,	960,	1,	-1,	"2,4",	true,	-2	) );
		field.places.push( new PlaceData( 4,	780,	1280,	1,	-1,	"3,6,5",	true,	-2	) );
		field.places.push( new PlaceData( 5,	310,	1320,	1,	-1,	"4,6",	true,	-2	) );
		field.places.push( new PlaceData( 6,	740,	1600,	12,	0,	"4,5",	true,	-2	) );
		field.places.push( new PlaceData( 7,	240,	850,	41,	-1,	"",	true,	-2	) );
		field.places.push( new PlaceData( 8,	840,	1070,	41,	-1,	"",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	0,	1586.9,	1.70738220214844,	0,	0,	1.70738220214844,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	130.05,	410.05,	2.2449951171875,	0,	0,	2.2449951171875,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	810.75,	428.75,	2.17710876464844,	0,	0,	2.17710876464844,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	712.1,	769.05,	2.10711669921875,	0,	0,	2.10711669921875,	35.55,	28) );
		field.images.push( new ImageData( "chair-1"	,	395.45,	1103.7,	1.54898071289063,	0,	0,	1.54898071289063,	45,	25) );
		field.images.push( new ImageData( "rock-0"	,	324.75,	1502.55,	2.41012573242188,	0,	0,	2.41012573242188,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	456.5,	747.4,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "road-h"	,	396.7,	315.95,	0.8817138671875,	0.557357788085938,	-0.534286499023438,	0.845321655273438,	208.05,	48.5) );
		field.images.push( new ImageData( "road-h"	,	361.3,	594.4,	0.83306884765625,	-0.05389404296875,	0.0645294189453125,	0.997879028320313,	207.9,	48.4) );
		field.images.push( new ImageData( "road-v"	,	287.9,	348.35,	0.99237060546875,	0.123291015625,	-0.0737762451171875,	0.5938720703125,	39.95,	201.6) );
		field.images.push( new ImageData( "road-v"	,	281.15,	689.45,	0.793655395507813,	-0.60833740234375,	0.540908813476563,	0.705718994140625,	39.95,	201.4) );
		field.images.push( new ImageData( "bush-2"	,	409.1,	474.15,	1.94338989257813,	0,	0,	1.94338989257813,	31,	26.5) );
		field.images.push( new ImageData( "hole-0"	,	845.35,	1426.85,	1.55789184570313,	0,	0,	1.55789184570313,	38,	21.5) );
		field.images.push( new ImageData( "road-v"	,	523.6,	1007.7,	0.806716918945313,	-0.590911865234375,	0.454971313476563,	0.621109008789063,	40.2,	201.5) );
		field.images.push( new ImageData( "road-h"	,	353.35,	1274.7,	0.890670776367188,	-0.07098388671875,	0.079437255859375,	0.996780395507813,	208.35,	48.35) );
		field.images.push( new ImageData( "road-v"	,	739.35,	1298.65,	0.993881225585938,	0.110366821289063,	-0.0697479248046875,	0.628250122070313,	40.1,	201.55) );
		field.images.push( new ImageData( "road-h"	,	370.5,	1311.25,	0.827072143554688,	0.537506103515625,	-0.544921875,	0.838485717773438,	207.95,	48.35) );
		field.images.push( new ImageData( "tree-0"	,	609.65,	1300.5,	1.38604736328125,	0,	0,	1.38604736328125,	61,	71.5) );
		field.images.push( new ImageData( "hut-0"	,	-235.35,	987.45,	1.54179382324219,	0,	0,	1.54179382324219,	174,	105) );
		field.images.push( new ImageData( "building-plot"	,	623.35,	1532.6,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	201,	1256.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	669.7,	1208.45,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	424.65,	887.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	179.85,	577.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	657,	532.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	233,	253.8,	1,	0,	0,	1) );
		fields.set( "battle_0" , field );


		
		field = new FieldData(1, "battle_1", false, false, "30,55,70" );
		// create places
		field.places.push( new PlaceData( 0,	276.3,	1599.95,	11,	0,	"1,3,2",	true,	0	) );
		field.places.push( new PlaceData( 1,	575.95,	1506.15,	1,	-1,	"0,2,4",	true,	0	) );
		field.places.push( new PlaceData( 2,	877.75,	1425.15,	1,	-1,	"0,1,5",	true,	0	) );
		field.places.push( new PlaceData( 3,	276.3,	839.35,	1,	-1,	"0,4",	true,	0	) );
		field.places.push( new PlaceData( 4,	575.95,	745.55,	1,	-1,	"1,3,5",	true,	0	) );
		field.places.push( new PlaceData( 5,	877.75,	664.55,	11,	1,	"2,4",	true,	0	) );
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
		fields.set( "battle_1" , field );
		
		
				field = new FieldData(2, "battle_2", false, false, "30,50,70" );
		// create places
		field.places.push( new PlaceData( 0,	397.45,	709.9,	1,	1,	"",	true,	0	) );
		field.places.push( new PlaceData( 1,	761.65,	984.15,	1,	-1,	"",	true,	0	) );
		field.places.push( new PlaceData( 2,	355.55,	1195.75,	1,	0,	"",	true,	0	) );
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
		fields.set( "battle_2" , field );




		field = new FieldData(2, "battle_2", false, false, "30,50,70" );
		// create places
		field.places.push( new PlaceData( 0,	397.45,	709.9,	1,	1,	"2,1",	true,	0	) );
		field.places.push( new PlaceData( 1,	761.65,	984.15,	1,	-1,	"0,2",	true,	0	) );
		field.places.push( new PlaceData( 2,	355.55,	1195.75,	1,	0,	"0,1",	true,	0	) );
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
		fields.set( "battle_2" , field );




		field = new FieldData(2, "battle_2", false, false, "30,50,70" );
		// create places
		field.places.push( new PlaceData( 0,	397.45,	709.9,	1,	1,	"2,1",	true,	0	) );
		field.places.push( new PlaceData( 1,	761.65,	984.15,	1,	-1,	"0,2",	true,	0	) );
		field.places.push( new PlaceData( 2,	355.55,	1195.75,	1,	0,	"0,1",	true,	0	) );
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
		fields.set( "battle_2" , field );
	}
}