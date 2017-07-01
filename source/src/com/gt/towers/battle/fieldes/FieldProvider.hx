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
		field.places.push( new PlaceData( 0,	400,	690,	1,	1,	"1",	false,	1	) );
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




		field = new FieldData(1, "quest_1", false, false, "30,50,60" );
		// create places
		field.places.push( new PlaceData( 0,	551.6,	1041.15,	1,	-1,	"1,2",	false,	-2	) );
		field.places.push( new PlaceData( 1,	779.65,	1471.45,	12,	0,	"0",	true,	-2	) );
		field.places.push( new PlaceData( 2,	402.65,	771.25,	1,	1,	"0",	true,	-2	) );
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
		field.places.push( new PlaceData( 0,	521.45,	669.7,	1,	1,	"1,2",	false,	1	) );
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
		field.images.push( new ImageData( "chair-1"	,	441.85,	285.55,	2.24998474121094,	0,	0,	2.24998474121094,	45,	25) );
		field.images.push( new ImageData( "road-v"	,	399.4,	829.45,	0.913772583007813,	0.403274536132813,	-0.403289794921875,	0.913742065429688,	44.45,	201.5) );
		fields.set( "quest_2" , field );




		field = new FieldData(3, "quest_3", true, true, "100,100,100" );
		// create places
		field.places.push( new PlaceData( 0,	321.85,	1514.95,	1,	0,	"3",	true,	-1	) );
		field.places.push( new PlaceData( 1,	832.45,	1387.2,	11,	0,	"3",	true,	-2	) );
		field.places.push( new PlaceData( 2,	556.1,	527,	1,	1,	"3",	true,	-2	) );
		field.places.push( new PlaceData( 3,	541.75,	973.45,	1,	-1,	"0,1,2",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "road-v"	,	511.6,	565.5,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	544.25,	894.7,	0.913772583007813,	0.403274536132813,	-0.403289794921875,	0.913742065429688,	44.45,	201.5) );
		field.images.push( new ImageData( "road-v"	,	541.75,	1023.4,	0.827590942382813,	-0.561355590820313,	0.561355590820313,	0.827590942382813) );
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	58.85,	1466.45,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	709.3,	391.4,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	141.7,	444.25,	2.25,	0,	0,	2.25,	35.55,	28) );
		field.images.push( new ImageData( "rock-0"	,	604.55,	1694.65,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	462,	1461.75,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "building-plot"	,	204.8,	1443.6,	1,	0,	0,	1) );
		field.images.push( new ImageData( "hole-1"	,	901.5,	1419.2,	2.25003051757813,	0,	0,	2.25003051757813,	35.5,	28.5) );
		field.images.push( new ImageData( "building-plot"	,	715.4,	1315.85,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	608.45,	1136.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "chair-1"	,	441.85,	285.55,	2.24998474121094,	0,	0,	2.24998474121094,	45,	25) );
		field.images.push( new ImageData( "road-v"	,	435.3,	1136.05,	0.913772583007813,	0.403274536132813,	-0.403289794921875,	0.913742065429688,	44.45,	201.5) );
		field.images.push( new ImageData( "building-plot"	,	445.1,	464,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	430.75,	910.45,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-7"	,	224.8,	714.8,	2.25,	0,	0,	2.25,	41.5,	19) );
		field.images.push( new ImageData( "rock-3"	,	434.7,	702.85,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		fields.set( "quest_3" , field );




		field = new FieldData(4, "quest_4", false, false, "60,100,120" );
		// create places
		field.places.push( new PlaceData( 0,	803.2,	505.55,	1,	1,	"1",	true,	-2	) );
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
		field.places.push( new PlaceData( 0,	803.2,	505.55,	1,	1,	"1,4",	true,	-2	) );
		field.places.push( new PlaceData( 1,	566.75,	900.1,	1,	-1,	"2,0",	true,	-2	) );
		field.places.push( new PlaceData( 2,	310,	1380,	1,	-1,	"3,1",	true,	-2	) );
		field.places.push( new PlaceData( 3,	673.95,	1521.65,	11,	0,	"2",	true,	-2	) );
		field.places.push( new PlaceData( 4,	399.25,	505.55,	1,	-1,	"0",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	678.15,	1137.55,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	788.8,	313.75,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	855.25,	704.25,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "chair-1"	,	343.95,	590.6,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );
		field.images.push( new ImageData( "rock-0"	,	724.25,	1098.15,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	338.35,	1496.1,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "road-v"	,	624.75,	702.05,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "road-v"	,	447.65,	1024.55,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "road-h"	,	335.25,	1343.9,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );
		field.images.push( new ImageData( "building-plot"	,	456.15,	830.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	195.75,	1307.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	562.95,	1458.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	758.2,	457.75,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "bush-4"	,	307.45,	898.55,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "bush-0"	,	277.6,	811.65,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "road-v"	,	802.25,	461.05,	0.000091552734375,	1,	-1,	0.000091552734375,	44.5,	201.45) );
		field.images.push( new ImageData( "building-plot"	,	692.2,	442.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	288.25,	442.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "chair-0"	,	583.2,	579.5,	2.25,	0,	0,	2.25,	19.5,	14.5) );
		fields.set( "quest_5" , field );




		field = new FieldData(6, "quest_6", false, false, "70,110,140" );
		// create places
		field.places.push( new PlaceData( 0,	803.2,	505.55,	1,	1,	"1",	true,	-2	) );
		field.places.push( new PlaceData( 1,	566.75,	900.1,	1,	-1,	"2,0,4",	true,	-2	) );
		field.places.push( new PlaceData( 2,	310,	1380,	1,	-1,	"3,1",	true,	-2	) );
		field.places.push( new PlaceData( 3,	680,	1530,	11,	0,	"2",	true,	-2	) );
		field.places.push( new PlaceData( 4,	527.8,	482.8,	1,	1,	"1",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	837.65,	836.15,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	788.8,	313.75,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	203.9,	1496.45,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "chair-1"	,	573.05,	309.65,	2.25003051757813,	0,	0,	2.25003051757813,	45.05,	25.05) );
		field.images.push( new ImageData( "rock-0"	,	535.9,	1154.9,	2.25,	0,	0,	2.25,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	555.45,	1400.65,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "road-v"	,	624.75,	702.05,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "road-v"	,	447.65,	1024.55,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "road-h"	,	335.25,	1343.9,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );
		field.images.push( new ImageData( "building-plot"	,	456.15,	830.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	195.75,	1307.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	562.95,	1458.65,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	750.5,	477,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "building-plot"	,	692.2,	442.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "bush-4"	,	93.9,	836.15,	2.25003051757813,	0,	0,	2.25003051757813,	35.55,	28) );
		field.images.push( new ImageData( "bush-0"	,	64.05,	749.25,	2.25,	0,	0,	2.25,	30,	18) );
		field.images.push( new ImageData( "road-v"	,	479,	484.7,	0.999771118164063,	-0.0213775634765625,	0.0213775634765625,	0.999771118164063) );
		field.images.push( new ImageData( "building-plot"	,	390.3,	437.05,	1,	0,	0,	1) );
		field.images.push( new ImageData( "chair-0"	,	264.75,	399.25,	2.25,	0,	0,	2.25,	19.5,	14.5) );
		field.images.push( new ImageData( "bush-7"	,	213.05,	702.05,	2.24998474121094,	0,	0,	2.24998474121094,	41.5,	19) );
		fields.set( "quest_6" , field );


		
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


	}
}