package com.gt.towers;
import com.gt.towers.Game;
import com.gt.towers.buildings.AbstractBuilding;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.constants.PrefsTypes;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.constants.StickerType;
import com.gt.towers.constants.MessageTypes;
import com.gt.towers.utils.maps.IntStrMap;
import com.gt.towers.utils.maps.IntIntMap;
import com.gt.towers.utils.maps.IntBuildingMap;

/**
 * ...
 * @author Mansour Djawadi
 */

class Player
{
	public var id:Int;
	public var invitationCode:String;
	public var nickName:String = "no_nickName";
	public var troopType:Int = -1;
	public var resources:IntIntMap;
	public var quests:IntIntMap;
	public var buildings:IntBuildingMap;
	public var inFriendlyBattle:Bool;
	public var hardMode:Bool;
	public var prefs:com.gt.towers.utils.maps.IntStrMap;
	public var tutorialMode:Int = 0;
	public var hasQuests:Bool = true;
	public var admin:Bool = false;
	private var game:Game;

	public function new(game:Game, initData:InitData)
	{
		this.game = game;
		id = initData.id;
		admin = isAdmin(id);
		nickName = initData.nickName;
		
		// add player resources, quests data
		resources = initData.resources;// new IntIntMap();
		resources.set(ResourceType.CURRENCY_REAL, 2147483647);
		quests = initData.quests;// new IntIntMap();
		
		// add player buildings data
		buildings = new IntBuildingMap();
		
		var i:Int = 0;
		var kies = initData.buildingsLevel.keys();
		while (i < kies.length)
		{
			buildings.set(kies[i], BuildingType.instantiate( game, kies[i], null, 0, initData.buildingsLevel.get( kies[i] ) ) );
			i++;
		}
		prefs = new com.gt.towers.utils.maps.IntStrMap();
		#if flash
		prefs.set(com.gt.towers.constants.PrefsTypes.SETTINGS_1_MUSIC, "true");
		prefs.set(com.gt.towers.constants.PrefsTypes.SETTINGS_2_SFX, "true");
		prefs.set(com.gt.towers.constants.PrefsTypes.SETTINGS_3_NOTIFICATION, "true");
		prefs.set(com.gt.towers.constants.PrefsTypes.SETTINGS_4_LOCALE, "0");
		
		prefs.set(com.gt.towers.constants.PrefsTypes.OFFER_30_RATING, "20");
		prefs.set(com.gt.towers.constants.PrefsTypes.OFFER_31_TELEGRAM , "30");
		prefs.set(com.gt.towers.constants.PrefsTypes.OFFER_32_INSTAGRAM, "40");
		prefs.set(com.gt.towers.constants.PrefsTypes.OFFER_33_FRIENDSHIP, "50");
		#end
	}
	
	public function get_questIndex():Int
	{
		var lastQuest = 0;
		var questsKeys = quests.keys();
		while ( lastQuest < questsKeys.length )
		{
			if( quests.get( questsKeys[lastQuest] ) == 0 )
				return lastQuest;
			lastQuest ++;
		}
		
		if( lastQuest == game.fieldProvider.quests.keys().length )
			return lastQuest - 1 ;
		
		return lastQuest ;
	}
	
	public function getResource(type:Int):Int { return resources.exists(type) ? resources.get(type) : 0; }
	public function get_xp():Int { return resources.get(ResourceType.XP); }
	public function get_point():Int { return resources.get(ResourceType.POINT); }
	public function get_softs():Int { return resources.get(ResourceType.CURRENCY_SOFT); }
	public function get_hards():Int { return resources.get(ResourceType.CURRENCY_HARD); }
	public function get_battlesCount():Int { return resources.get(ResourceType.BATTLES_COUNT); }
	public function get_battleswins():Int { return resources.get(ResourceType.BATTLES_WINS); }
	public function get_winStreak():Int { return resources.get(ResourceType.WIN_STREAK); }
	public function get_level(xp:Int):Int
	{
		if( xp == 0 )
			xp = get_xp();
		var index = 0;
		while ( index < game.levels.length )
		{
			if( game.levels[index] >= xp )
				return index;
			index ++;
		}
		return index;
	}
	
	public function get_arena(point:Int) : Int
	{
		if( point == 0 )
			point = get_point();
			
		var arenaKeys = game.arenas.keys();
		var arena = arenaKeys.length - 1;
		while ( arena >= 0 )
		{
			if( point > game.arenas.get( arenaKeys[arena] ).max )
				break;
			arena --;
		}
		return cast(Math.min(arena + 1, arenaKeys.length-1), Int);
	}
	
	public function has(IntIntMap:IntIntMap) : Bool
	{
		var i:Int = 0;
		var keis = IntIntMap.keys();
		while ( i < keis.length )
		{
			if( IntIntMap.get(keis[i]) > resources.get(keis[i]) )
				return false;
			i++;
		}
		return true;
	}
	
	public function deductions(IntIntMap:IntIntMap) : IntIntMap
	{
		var ret = new IntIntMap();
		var keis = IntIntMap.keys();
		var i = 0;
		while ( i < keis.length )
		{
			var remain = IntIntMap.get(keis[i]) - resources.get(keis[i]);
			if( remain > 0 )
				ret.set(keis[i], remain);
			i ++;
		}
		return ret;
	}
	
	public function addResources(bundle:IntIntMap) : Void
	{
		var bundleKeys = bundle.keys();
		var i = 0;
		while ( i < bundleKeys.length )
		{
			if( ResourceType.isBuilding(bundleKeys[i]) && !game.player.buildings.exists(bundleKeys[i]) )
				game.player.buildings.set(bundleKeys[i], BuildingType.instantiate( game, bundleKeys[i], null, 0, -1 ) );
			i ++;
		}
		resources.increaseMap ( bundle );
	}
	
	public function getRandomBuilding():Int
	{
		var keys = resources.keys();
		var i = keys.length - 1;
		while ( i >= 0 )
		{
			if( ResourceType.isBuilding(keys[i]) )
				break;
			i --;
		}
		
		if( i == -1 )
		{
			trace("player " + id +" has not any buildng");
			return -1;
		}
		
		var t = resources.getRandomKey();
		if( !ResourceType.isBuilding(t) )
			return getRandomBuilding();
		return t;
	}
	
	public function getTutorStep() : Int { return tutorialMode == -1 ? PrefsTypes.T_162_RANK_SHOWN : prefs.getAsInt(PrefsTypes.TUTOR); }
	public function inDeckTutorial() : Bool { return getTutorStep() >= PrefsTypes.T_035_DECK_FOCUS && getTutorStep() < PrefsTypes.T_038_CARD_UPGRADED; }
	public function villageEnabled() : Bool { return !inTutorial();/*get_arena(0) > 0;*/ }
	public function emptyDeck() : Bool { return !buildings.exists(BuildingType.B11_BARRACKS) || buildings.get(BuildingType.B11_BARRACKS).get_level() <= 1 ; }
	public function isBot() : Bool { return id < 10000; }
	public static function isAdmin(id:Int) : Bool {return (id == 10412 || id == 10487); }
	public function inTutorial() : Bool
	{
		if( isBot() )
			return false;
	#if java
		if( tutorialMode == 0 && get_questIndex() > 2 )
			return false;
		if( tutorialMode == 1 && get_battleswins() > 1 )
			return false;
	#elseif flash
		if( tutorialMode == 0 && get_questIndex() > 2 && getTutorStep() >= PrefsTypes.T_151_SELECT_NAME_FOCUS )
			return false;
		if( tutorialMode == 1 && get_battleswins() > 1 )
			return false;
	#end
		return true;
	}
	
	#if flash
	public function dashboadTabEnabled(index:Int):Bool
	{
		//if ( get_questIndex() >= 2 )
			return true;
		
		/*var tuteStep = getTutorStep();
		if ( index == 0 && inShopTutorial() )
			return true;
		if ( index == 1 && (tuteStep == com.gt.towers.constants.PrefsTypes.TUTE_100_FIRST_RUN || tuteStep == com.gt.towers.constants.PrefsTypes.TUTE_126_DECK_UPGRADE_BUILDING || tuteStep == com.gt.towers.constants.PrefsTypes.TUTE_122_SHOP_FIRST_VIEW || tuteStep == com.gt.towers.constants.PrefsTypes.TUTE_124_DECK_FIRST_VIEW) )
			return true;
		if ( index == 2 && inDeckTutorial() )
			return true;
		return false;*/
	}
	#end
}