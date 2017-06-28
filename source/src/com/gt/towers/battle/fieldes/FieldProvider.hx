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


		
		field = new FieldData(1, "quest_1", false, false, "30,55,70" );
		// create places
		field.places.push( new PlaceData( 0,	400,	690,	1,	1,	"1",	true,	-2	) );
		field.places.push( new PlaceData( 1,	558.95,	975.2,	1,	-1,	"0,2",	true,	-2	) );
		field.places.push( new PlaceData( 2,	779.65,	1423.45,	12,	0,	"1",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "road-v"	,	371.15,	725.75,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	190.05,	352.2,	2.2449951171875,	0,	0,	2.2449951171875,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	650.1,	683.2,	2.17710876464844,	0,	0,	2.17710876464844,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	211.2,	1242.85,	3.05917358398438,	0,	0,	3.05917358398438,	35.55,	28) );
		field.images.push( new ImageData( "rock-0"	,	598.25,	1596.05,	2.41012573242188,	0,	0,	2.41012573242188,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	284.25,	1003.55,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "building-plot"	,	284.25,	625.15,	1,	0,	0,	1) );
		field.images.push( new ImageData( "hole-1"	,	658.4,	249.45,	2.170166015625,	0,	0,	2.170166015625,	35.5,	28.5) );
		field.images.push( new ImageData( "hole-2"	,	210.75,	608.75,	1.80490112304688,	0,	0,	1.80490112304688,	51,	34) );
		field.images.push( new ImageData( "road-v"	,	539.55,	1061.3,	0.8946533203125,	-0.446823120117188,	0.446823120117188,	0.8946533203125) );
		field.images.push( new ImageData( "building-plot"	,	665,	1358.85,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	447.95,	912.2,	1,	0,	0,	1) );
		fields.set( "quest_1" , field );


		
		field = new FieldData(2, "quest_2", true, true, "100,100,100" );
		// create places
		field.places.push( new PlaceData( 0,	521.45,	669.7,	1,	1,	"1,2",	false,	-2	) );
		field.places.push( new PlaceData( 1,	285.95,	1208.35,	12,	0,	"0",	true,	-2	) );
		field.places.push( new PlaceData( 2,	796.55,	1080.6,	12,	0,	"0",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "road-v"	,	508.35,	588.1,	0.913772583007813,	0.403274536132813,	-0.403289794921875,	0.913742065429688,	44.45,	201.5) );
		field.images.push( new ImageData( "road-v"	,	505.85,	716.8,	0.827590942382813,	-0.561355590820313,	0.561355590820313,	0.827590942382813) );
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	190.05,	1403.65,	2.2449951171875,	0,	0,	2.2449951171875,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	712.3,	392.8,	2.17710876464844,	0,	0,	2.17710876464844,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	186.1,	479.25,	1,	0,	0,	1,	35.55,	28) );
		field.images.push( new ImageData( "rock-0"	,	598.25,	1596.05,	2.41012573242188,	0,	0,	2.41012573242188,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	426.1,	1155.15,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "building-plot"	,	405.7,	604.85,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	168.9,	1137,	1,	0,	0,	1) );
		field.images.push( new ImageData( "hole-1"	,	701.7,	1360.35,	2.170166015625,	0,	0,	2.170166015625,	35.5,	28.5) );
		field.images.push( new ImageData( "building-plot"	,	679.5,	1009.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	572.55,	829.45,	1,	0,	0,	1) );
		field.images.push( new ImageData( "chair-1"	,	480.75,	307.15,	1.38555908203125,	0,	0,	1.38555908203125,	45,	25) );
		field.images.push( new ImageData( "road-v"	,	399.4,	829.45,	0.913772583007813,	0.403274536132813,	-0.403289794921875,	0.913742065429688,	44.45,	201.5) );
		fields.set( "quest_2" , field );


		
		field = new FieldData(3, "quest_3", true, true, "30,45,60" );
		// create places
		field.places.push( new PlaceData( 0,	520.8,	934.85,	1,	-1,	"3,2,1",	true,	-2	) );
		field.places.push( new PlaceData( 1,	285.95,	1482.45,	1,	0,	"0",	true,	-2	) );
		field.places.push( new PlaceData( 2,	790.4,	1354.7,	11,	0,	"0",	true,	-2	) );
		field.places.push( new PlaceData( 3,	515.45,	553.1,	1,	1,	"0",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "building-plot"	,	403.3,	491.35,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	508.35,	862.2,	0.913772583007813,	0.403274536132813,	-0.403289794921875,	0.913742065429688,	44.45,	201.5) );
		field.images.push( new ImageData( "road-v"	,	505.85,	990.9,	0.827590942382813,	-0.561355590820313,	0.561355590820313,	0.827590942382813) );
		field.images.push( new ImageData( "background-0-l"	,	0,	0,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	190.05,	1677.75,	2.2449951171875,	0,	0,	2.2449951171875,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	712.3,	392.8,	2.17710876464844,	0,	0,	2.17710876464844,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	186.1,	479.25,	1,	0,	0,	1,	35.55,	28) );
		field.images.push( new ImageData( "rock-0"	,	598.25,	1596.05,	2.41012573242188,	0,	0,	2.41012573242188,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	426.1,	1429.25,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "building-plot"	,	168.9,	1411.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "hole-1"	,	701.7,	1634.45,	2.170166015625,	0,	0,	2.170166015625,	35.5,	28.5) );
		field.images.push( new ImageData( "building-plot"	,	679.5,	1283.35,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	572.55,	1103.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "chair-1"	,	480.75,	307.15,	1.38555908203125,	0,	0,	1.38555908203125,	45,	25) );
		field.images.push( new ImageData( "road-v"	,	399.4,	1103.55,	0.913772583007813,	0.403274536132813,	-0.403289794921875,	0.913742065429688,	44.45,	201.5) );
		field.images.push( new ImageData( "building-plot"	,	405.7,	878.95,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	476.3,	531.85,	1,	0,	0,	1) );
		fields.set( "quest_3" , field );


		
		field = new FieldData(4, "quest_4", false, false, "35,65,70" );
		// create places
		field.places.push( new PlaceData( 0,	698.9,	626.85,	1,	1,	"1",	true,	-2	) );
		field.places.push( new PlaceData( 1,	560.15,	883.2,	1,	-1,	"0,2",	true,	-2	) );
		field.places.push( new PlaceData( 2,	310,	1312.65,	1,	-1,	"1,3",	true,	-2	) );
		field.places.push( new PlaceData( 3,	673.95,	1454.3,	12,	0,	"2",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "background-0-l"	,	0,	43,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	-1.3,	1547.45,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	277.5,	647.2,	2.2449951171875,	0,	0,	2.2449951171875,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	882.25,	464.35,	2.17710876464844,	0,	0,	2.17710876464844,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	175.1,	1406.45,	3.05917358398438,	0,	0,	3.05917358398438,	35.55,	28) );
		field.images.push( new ImageData( "chair-1"	,	296.45,	689.85,	2.67575073242188,	0,	0,	2.67575073242188,	45.05,	25.05) );
		field.images.push( new ImageData( "rock-0"	,	672.65,	1239.75,	2.41012573242188,	0,	0,	2.41012573242188,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	370.05,	946.5,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "rock-5"	,	579.35,	338.25,	2.204833984375,	0,	0,	2.204833984375,	55.5,	31) );
		field.images.push( new ImageData( "road-v"	,	466.9,	957.2,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "road-h"	,	335.25,	1276.55,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );
		field.images.push( new ImageData( "building-plot"	,	195.75,	1239.75,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	562.95,	1391.3,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	646.95,	628.85,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "building-plot"	,	595.6,	563.85,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	437.6,	804.8,	1,	0,	0,	1) );
		fields.set( "quest_4" , field );


		
		field = new FieldData(5, "quest_5", false, false, "55,85,110" );
		// create places
		field.places.push( new PlaceData( 0,	560.65,	1020.2,	1,	-1,	"1,4",	true,	-2	) );
		field.places.push( new PlaceData( 1,	396.25,	1312.65,	1,	-1,	"0,2",	true,	-2	) );
		field.places.push( new PlaceData( 2,	760.2,	1454.3,	12,	0,	"1",	true,	-2	) );
		field.places.push( new PlaceData( 3,	278.3,	607.85,	1,	1,	"4",	true,	-2	) );
		field.places.push( new PlaceData( 4,	678.5,	783.9,	1,	-1,	"0,3",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "background-0-l"	,	0,	43,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	701.7,	0,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	0,	1528.95,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "road-h"	,	342.95,	580.6,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );
		field.images.push( new ImageData( "bush-0"	,	145.65,	797.3,	2.2449951171875,	0,	0,	2.2449951171875,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	826.85,	580.6,	2.17710876464844,	0,	0,	2.17710876464844,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	364.55,	1586.55,	3.05917358398438,	0,	0,	3.05917358398438,	35.55,	28) );
		field.images.push( new ImageData( "chair-1"	,	309.7,	688.3,	2.67575073242188,	0,	0,	2.67575073242188,	45.05,	25.05) );
		field.images.push( new ImageData( "rock-0"	,	672.65,	1239.75,	2.41012573242188,	0,	0,	2.41012573242188,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	120.6,	786.35,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "rock-5"	,	612.55,	434.7,	2.204833984375,	0,	0,	2.204833984375,	55.5,	31) );
		field.images.push( new ImageData( "road-v"	,	553.15,	957.2,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "road-h"	,	421.5,	1276.55,	0.912872314453125,	0.408218383789063,	-0.408218383789063,	0.912872314453125) );
		field.images.push( new ImageData( "building-plot"	,	282,	1239.75,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	649.2,	1391.3,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	662.1,	748.45,	0.87652587890625,	0.481353759765625,	-0.481353759765625,	0.87652587890625) );
		field.images.push( new ImageData( "building-plot"	,	567.5,	720.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	449.65,	957.2,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	167.3,	544.85,	1,	0,	0,	1) );
		fields.set( "quest_5" , field );


		
		field = new FieldData(6, "quest_6", false, false, "40,65,80" );
		// create places
		field.places.push( new PlaceData( 0,	362.3,	733.25,	1,	-1,	"2,1,4",	true,	-2	) );
		field.places.push( new PlaceData( 1,	738.9,	467.45,	11,	1,	"0",	true,	-2	) );
		field.places.push( new PlaceData( 2,	745.85,	1288.75,	12,	0,	"0,3",	true,	-2	) );
		field.places.push( new PlaceData( 3,	378.7,	1428.8,	1,	0,	"2",	true,	-2	) );
		field.places.push( new PlaceData( 4,	351.9,	380.35,	1,	1,	"0",	true,	-2	) );
		// create images
		field.images.push( new ImageData( "background-0-l"	,	0,	-26.3,	1.18948364257813,	0,	0,	1.18948364257813,	0.05,	0) );
		field.images.push( new ImageData( "background-0-r"	,	715.6,	-3.2,	1.1715087890625,	0,	0,	1.1715087890625,	2.95,	0) );
		field.images.push( new ImageData( "foreground-0-l"	,	0,	1528.95,	1.9007568359375,	0,	0,	1.9007568359375,	0,	0) );
		field.images.push( new ImageData( "foreground-0-r"	,	573.05,	1656.6,	1.14199829101563,	0,	0,	1.14199829101563,	0,	0) );
		field.images.push( new ImageData( "bush-0"	,	879.1,	655.95,	2.2449951171875,	0,	0,	2.2449951171875,	30,	18) );
		field.images.push( new ImageData( "bush-7"	,	765.75,	655,	2.17710876464844,	0,	0,	2.17710876464844,	41.5,	19) );
		field.images.push( new ImageData( "bush-4"	,	364.55,	1586.55,	3.05917358398438,	0,	0,	3.05917358398438,	35.55,	28) );
		field.images.push( new ImageData( "chair-1"	,	692.9,	524.45,	2.67575073242188,	0,	0,	2.67575073242188,	45.05,	25.05) );
		field.images.push( new ImageData( "rock-0"	,	810.75,	936.8,	2.41012573242188,	0,	0,	2.41012573242188,	39.5,	17.5) );
		field.images.push( new ImageData( "rock-3"	,	698.35,	917.55,	1.71110534667969,	0,	0,	1.71110534667969,	27,	15) );
		field.images.push( new ImageData( "rock-5"	,	757.4,	733.2,	2.204833984375,	0,	0,	2.204833984375,	55.5,	31) );
		field.images.push( new ImageData( "road-v"	,	472.4,	940.3,	0.855117797851563,	-0.518402099609375,	0.518402099609375,	0.855117797851563) );
		field.images.push( new ImageData( "road-h"	,	374.9,	673.75,	0.809951782226563,	-0.586441040039063,	0.586456298828125,	0.809951782226563) );
		field.images.push( new ImageData( "building-plot"	,	636.2,	394.55,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	349.15,	744.95,	0.855117797851563,	-0.518402099609375,	0.518402099609375,	0.855117797851563) );
		field.images.push( new ImageData( "road-h"	,	374.9,	1385.5,	0.934112548828125,	-0.356826782226563,	0.356826782226563,	0.934127807617188) );
		field.images.push( new ImageData( "building-plot"	,	266.55,	1359.45,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	646.4,	1221.9,	1,	0,	0,	1) );
		field.images.push( new ImageData( "road-v"	,	306.25,	334.1,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	244.05,	318.7,	1,	0,	0,	1) );
		field.images.push( new ImageData( "building-plot"	,	258.85,	658.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	197.35,	949.25,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	216.8,	430.4,	1,	0,	0,	1) );
		field.images.push( new ImageData( "tree-0"	,	178.7,	1126.9,	1,	0,	0,	1) );
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