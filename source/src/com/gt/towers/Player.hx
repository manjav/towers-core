package com.gt.towers;
import com.gt.towers.Game;
import com.gt.towers.buildings.Building;
import com.gt.towers.constants.CardTypes;
import com.gt.towers.constants.PrefsTypes;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.utils.lists.DeckList;
import com.gt.towers.utils.lists.IntList;
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
	public var prefs:IntStrMap;
	public var decks:DeckList;
	public var selectedDeck:Int = 0;
	
	private var game:Game;
	
	public function new() {}
	public function init(game:Game, initData:InitData)
	{
		this.game = game;
		id = initData.id;
		nickName = initData.nickName;
		quests = initData.quests;
		decks = initData.decks;

		// add resources and buildings
		resources = new IntIntMap();
		buildings = new IntBuildingMap();
		addResources(initData.resources);
		resources.set(ResourceType.CURRENCY_REAL, 2147483647);

		// update buildings level
		var i:Int = 0;
		var kies = initData.buildingsLevel.keys();
		while ( i < kies.length )
		{
			buildings.get(kies[i]).set_level(initData.buildingsLevel.get(kies[i]));
			i ++;
		}
		
		prefs = new com.gt.towers.utils.maps.IntStrMap();
		#if flash
		prefs.set(com.gt.towers.constants.PrefsTypes.TUTE_STEP_101, "101");
		
		prefs.set(com.gt.towers.constants.PrefsTypes.SETTINGS_1_MUSIC, "true");
		prefs.set(com.gt.towers.constants.PrefsTypes.SETTINGS_2_SFX, "true");
		prefs.set(com.gt.towers.constants.PrefsTypes.SETTINGS_3_NOTIFICATION, "true");
		prefs.set(com.gt.towers.constants.PrefsTypes.SETTINGS_4_LOCALE, "0");
		
		prefs.set(com.gt.towers.constants.PrefsTypes.OFFER_30_RATING, "20");
		prefs.set(com.gt.towers.constants.PrefsTypes.OFFER_31_TELEGRAM , "30");
		prefs.set(com.gt.towers.constants.PrefsTypes.OFFER_32_INSTAGRAM, "40");
		prefs.set(com.gt.towers.constants.PrefsTypes.OFFER_33_FRIENDSHIP, "50");
		#end
		
		decks = initData.decks;
	}
	
	public function get_questIndex():Int
	{
		var lastQuest = 0;
		var questsKeys = quests.keys();
		while ( lastQuest < questsKeys.length )
		{
			if ( quests.get( questsKeys[lastQuest] ) == 0 )
				return lastQuest;
			lastQuest ++;
		}
		
		if ( lastQuest == game.fieldProvider.quests.keys().length )
			return lastQuest - 1 ;
		
		return lastQuest ;
	}
	
	
	public function get_xp():Int { return resources.get(ResourceType.XP); }
	public function get_keys():Int { return resources.get(ResourceType.KEY); }
	public function get_point():Int { return resources.get(ResourceType.POINT); }
	public function get_softs():Int { return resources.get(ResourceType.CURRENCY_SOFT); }
	public function get_hards():Int { return resources.get(ResourceType.CURRENCY_HARD); }
	public function get_battlesCount():Int { return resources.get(ResourceType.BATTLES_COUNT); }
	public function get_battleswins():Int { return resources.get(ResourceType.BATTLES_WINS); }
	public function get_openedChests():Int { return resources.exists(ResourceType.BATTLE_CHEST_OPENED) ? resources.get(ResourceType.BATTLE_CHEST_OPENED) : 0; }
	public function get_winStreak():Int { return resources.get(ResourceType.WIN_STREAK); }
    public function inTutorial():Bool { return ((nickName == "guest" || get_questIndex() < 3) && prefs.getAsInt(PrefsTypes.TUTE_STEP_101) < PrefsTypes.TUTE_116_END && !isBot()); }
	public function villageEnabled():Bool { return !inTutorial();/*get_arena(0) > 0;*/ }
	public function isHardMode():Bool { return !buildings.exists(CardTypes.INITIAL) || buildings.get(CardTypes.INITIAL).get_level() <= 1 ; }
	
	public function get_level():Int
	{
		var xp:Int = get_xp();
		
		if (xp < 15)
			return 1;
		else if (xp < 135)
			return 2;
		else if (xp < 80)
			return 3;
		else 
		{
			var l:Int = 3;
			var _xp:Int = 0;
			while (_xp <= xp)
			{
				l ++;
				_xp = Math.round( l * (l + 1) * (l + 2) * (l + 9) / 6) ;
			}
			return l;
		}
	}
	
	public function get_arena(point:Int) : Int
	{
		if( point == 0 )
			point = get_point();
			
		var arenaKeys = game.arenas.keys();
		var arena = arenaKeys.length - 1;
		while ( arena >= 0 )
		{
			if ( point > game.arenas.get( arenaKeys[arena] ).max )
				break;
			arena --;
		}
		return cast(Math.min(arena + 1, arenaKeys.length-1), Int);
	}

	public function availabledCards (selectedArena:Int = -1) : IntList
	{
		var ret = new IntList();
		var arena = selectedArena == -1 ? get_arena(0) : selectedArena;
		var ci = 0;
		while ( arena >= 0 )
		{
			ci = game.arenas.get(arena).cards.size() - 1;
			while ( ci >= 0 )
			{
				ret.push( game.arenas.get(arena).cards.get(ci) );
				ci --;
			}
			arena --;
		}
		return ret;
	}
	public function get_current_deck():IntList
	{
		return decks.get(selectedDeck);
	}
	
	public function has(IntIntMap:IntIntMap) : Bool
	{
		var i:Int = 0;
		var keis = IntIntMap.keys();
		while (i < keis.length)
		{
			if ( IntIntMap.get(keis[i]) > resources.get(keis[i]) )
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
			if(remain > 0)
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
			
			if ( ResourceType.isCard(bundleKeys[i]) && !buildings.exists(bundleKeys[i]) )
				buildings.set(bundleKeys[i], new Building( game, null, 0, bundleKeys[i], -1 ) );
			i ++;
		}
		resources.increaseMap ( bundle );
	}

	
	public function isBot() : Bool { return id < 10000; }
	#if flash
	public function dashboadTabEnabled(index:Int):Bool
	{
		if ( get_questIndex() >= 2 )
			return true;
			
		var tuteStep = prefs.getAsInt(com.gt.towers.constants.PrefsTypes.TUTE_STEP_101);
		if ( index == 0 && tuteStep == com.gt.towers.constants.PrefsTypes.TUTE_111_SELECT_EXCHANGE )
			return true;
		if ( index == 1 && (tuteStep == com.gt.towers.constants.PrefsTypes.TUTE_101_START || tuteStep == com.gt.towers.constants.PrefsTypes.TUTE_115_UPGRADE_BUILDING || tuteStep == com.gt.towers.constants.PrefsTypes.TUTE_111_SELECT_EXCHANGE || tuteStep == com.gt.towers.constants.PrefsTypes.TUTE_113_SELECT_DECK) )
			return true;
		if ( index == 2 && tuteStep == com.gt.towers.constants.PrefsTypes.TUTE_113_SELECT_DECK )
			return true;
		return false;
	}
	public function colorIndex(troopType:Int):Int
	{
		return troopType ==-1 ? -1 : (this.troopType == troopType ? 0 : 1);
	}
	#end
}