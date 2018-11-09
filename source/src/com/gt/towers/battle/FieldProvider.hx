package com.gt.towers.battle;
import com.gt.towers.battle.fieldes.*;
import com.gt.towers.utils.maps.StringFieldMap;

/**
 * ...
 * @author Mansour Djawadi
 */

class FieldProvider 
{
	static public var shires:StringFieldMap;
	static public var operations:StringFieldMap;
	static public var touchdowns:StringFieldMap;
	static public var headquarters:StringFieldMap;
	static var initialized:Bool;
	
	static public function init() 
	{
		if( initialized )
			return;
		initialized = true;
		shires = new StringFieldMap();
/*#if flash
		shires.set( "shire_3" , new com.gt.towers.battle.shires.Shire_3( 3, "shire_3" ) );
		shires.set( "shire_2" , new com.gt.towers.battle.shires.Shire_2( 2, "shire_2" ) );
		shires.set( "shire_1" , new com.gt.towers.battle.shires.Shire_1( 1, "shire_1" ) );
		shires.set( "shire_0" , new com.gt.towers.battle.shires.Shire_0( 0, "shire_0" ) );
#end
	
		operations = new StringFieldMap();
		operations.set( "operation_0",  new Operation_0(   0, "operation_0", "100,200,300,30",	"0", "0", "" ) );
		operations.set( "operation_1",  new Operation_1(   1, "operation_1", "40,60,75,20",		"0", "0", "" ) );
		operations.set( "operation_2",  new Operation_2(   2, "operation_2", "80,100,140,20",	"0", "0", "0" ) );
		operations.set( "operation_3",  new Operation_3(   3, "operation_3", "50,70,120,20" ) );
		operations.set( "operation_4",  new Operation_4(   4, "operation_4", "50,70,120,20" ) );
		operations.set( "operation_5",  new Operation_5(   5, "operation_5", "50,70,120,20" ) );
		operations.set( "operation_6",  new Operation_6(   6, "operation_6", "70,100,150,20" ) );
		operations.set( "operation_7",  new Operation_7(   7, "operation_7", "70,100,150,20" ) );
		operations.set( "operation_8",  new Operation_8(   8, "operation_8", "70,100,150,20" ) );
		operations.set( "operation_9",  new Operation_9(   9, "operation_9", "60,100,150,20" ) );
		operations.set( "operation_10", new Operation_10( 10, "operation_10", "50,70,100,20" ) );
		operations.set( "operation_11", new Operation_11( 11, "operation_11", "50,70,120,20" ) );
		operations.set( "operation_12", new Operation_12( 12, "operation_12", "60,90,130,20" ) );
		operations.set( "operation_13", new Operation_13( 13, "operation_13", "60,90,130,20" ) );
		operations.set( "operation_14", new Operation_14( 14, "operation_14", "60,90,130,20" ) );
		operations.set( "operation_15", new Operation_15( 15, "operation_15", "70,100,150,20" ) );
		operations.set( "operation_16", new Operation_16( 16, "operation_16", "70,100,150,20" ) );
		operations.set( "operation_17", new Operation_17( 17, "operation_17", "70,100,150,20" ) );
		operations.set( "operation_18", new Operation_18( 18, "operation_18", "70,100,150,20" ) );
		operations.set( "operation_19", new Operation_19( 19, "operation_19", "70,110,170,30" ) );
		operations.set( "operation_20", new Operation_20( 20, "operation_20", "70,110,170,30" ) );
		operations.set( "operation_21", new Operation_21( 21, "operation_21", "80,130,190,30" ) );
		operations.set( "operation_22", new Operation_22( 22, "operation_22", "80,130,190,30" ) );
		operations.set( "operation_23", new Operation_23( 23, "operation_23", "80,120,180,30" ) );
		operations.set( "operation_24", new Operation_24( 24, "operation_24", "80,130,190,30" ) );
		operations.set( "operation_25", new Operation_25( 25, "operation_25", "110,150,220,30" ) );
		operations.set( "operation_26", new Operation_26( 26, "operation_26", "110,150,220,30" ) );
		operations.set( "operation_27", new Operation_27( 27, "operation_27", "110,150,220,30" ) );
		operations.set( "operation_28", new Operation_28( 28, "operation_28", "120,160,200,30" ) );
		operations.set( "operation_29", new Operation_29( 29, "operation_29", "130,170,200,30" ) );
		operations.set( "operation_30", new Operation_30( 30, "operation_30", "100,130,150,30" ) );
		operations.set( "operation_31", new Operation_31( 31, "operation_31", "140,170,190,30" ) );
		operations.set( "operation_32", new Operation_32( 32, "operation_32", "140,170,220,30" ) );
		operations.set( "operation_33", new Operation_33( 33, "operation_33", "140,180,220,30" ) );
		operations.set( "operation_34", new Operation_34( 34, "operation_34", "120,130,200,30" ) );
		operations.set( "operation_35", new Operation_35( 35, "operation_35", "110,150,220,30" ) );
		operations.set( "operation_36", new Operation_36( 36, "operation_36", "110,160,240,30" ) );
		operations.set( "operation_37", new Operation_37( 37, "operation_37", "100,140,210,30" ) );
		operations.set( "operation_38", new Operation_38( 38, "operation_38", "130,160,200,30" ) );
		operations.set( "operation_39", new Operation_39( 39, "operation_39", "150,180,220,30" ) );*/
		
		
		touchdowns = new StringFieldMap();
		touchdowns.set( "touchdown_1", new Battle_1( 1, "touchdown_1", "60,120,180,240", "", "0,2,4,6",	"") );
		
		headquarters = new StringFieldMap();
		headquarters.set( "headquarter_1", new HQ_1( 1, "headquarter_1", "60,120,180,240", "", "0,2,4,6",	"") );
	}
}