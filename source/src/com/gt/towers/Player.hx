package com.gt.towers;
import com.gt.towers.Game;
import com.gt.towers.battle.units.Card;
import com.gt.towers.constants.CardTypes;
import com.gt.towers.constants.PrefsTypes;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.others.Quest;
import com.gt.towers.utils.lists.DeckList;
import com.gt.towers.utils.lists.IntList;
import com.gt.towers.utils.maps.IntCardMap;
import com.gt.towers.utils.maps.IntIntMap;
import com.gt.towers.utils.maps.IntStrMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class Player
{
	public var id:Int;
	public var hardMode:Bool;
	public var admin:Bool = false;
	public var tutorialMode:Int = 0;
	public var hasOperations:Bool = true;
	public var invitationCode:String;
	public var troopType:Int = -1;
	public var prefs:IntStrMap;
	public var quests:Array<Quest>;
	public var resources:IntIntMap;
	public var operations:IntIntMap;
	public var cards:IntCardMap;
	public var inFriendlyBattle:Bool;
	public var nickName:String = "no_nickName";
	public var decks:DeckList;
	public var selectedDeck:Int = 0;
	public var battleDeck:IntList;
	public var splitTestCoef:Float = 1;

	private var game:Game;
#if flash
	public var challenges:com.gt.towers.utils.maps.IntChallengeMap;
#end

	public function new(game:Game, initData:InitData)
	{
		this.game = game;
		id = initData.id;
		admin = isAdmin(id);
		nickName = initData.nickName;
		splitTestCoef = (id > 120100 && id % 2 == 0) ? 0.5 : 1;
		
		// add player resources, operations data
		resources = initData.resources;
		resources.set(ResourceType.CURRENCY_REAL, 2147483647);
		operations = initData.operations;
		decks = initData.decks;
		
		// add player buildings data
		cards = new IntCardMap();
		var i:Int = 0;
		var kies = initData.buildingsLevel.keys();
		while ( i < kies.length )
		{
			cards.set(kies[i], new Card( game, kies[i], initData.buildingsLevel.get( kies[i] ) ) );
			i++;
		}
		
		// add prefs
		prefs = new com.gt.towers.utils.maps.IntStrMap();
		#if flash
		prefs.set(com.gt.towers.constants.PrefsTypes.SETTINGS_1_MUSIC, "true");
		prefs.set(com.gt.towers.constants.PrefsTypes.SETTINGS_2_SFX, "true");
		prefs.set(com.gt.towers.constants.PrefsTypes.SETTINGS_3_NOTIFICATION, "true");
		prefs.set(com.gt.towers.constants.PrefsTypes.SETTINGS_4_LOCALE, "0");
		
		prefs.set(com.gt.towers.constants.PrefsTypes.OFFER_30_RATING, "15");
		prefs.set(com.gt.towers.constants.PrefsTypes.OFFER_31_TELEGRAM , "20");
		prefs.set(com.gt.towers.constants.PrefsTypes.OFFER_32_INSTAGRAM, "25");
		prefs.set(com.gt.towers.constants.PrefsTypes.OFFER_33_FRIENDSHIP, "30");
		#end
		
		i = 0;
		kies = initData.prefs.keys();
		while ( i < kies.length )
		{
			prefs.set(kies[i], initData.prefs.get(kies[i]) );
			i++;
		}
	}
	
	public function getLastOperation():Int
	{
		var lastOperation = 0;
		var oKeys = operations.keys();
		while ( lastOperation < oKeys.length )
		{
			if( operations.get( oKeys[lastOperation] ) == 0 )
				return lastOperation;
			lastOperation ++;
		}
		
		if( lastOperation == game.fieldProvider.operations.keys().length )
			return lastOperation - 1 ;
		
		return lastOperation ;
	}
	
	public function getResource(type:Int):Int { return resources.exists(type) ? resources.get(type) : 0; }
	public function get_xp():Int { return resources.get(ResourceType.XP); }
	public function get_point():Int { return resources.get(ResourceType.POINT); }
	public function get_softs():Int { return resources.get(ResourceType.CURRENCY_SOFT); }
	public function get_hards():Int { return resources.get(ResourceType.CURRENCY_HARD); }
	public function get_battlesCount():Int { return resources.get(ResourceType.BATTLES); }
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
			if( ResourceType.isCard(bundleKeys[i]) && !game.player.cards.exists(bundleKeys[i]) )
				game.player.cards.set(bundleKeys[i], new Card(game, bundleKeys[i], bundle.get(bundleKeys[i]) ) );
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
			if( ResourceType.isCard(keys[i]) )
				break;
			i --;
		}
		
		if( i == -1 )
		{
			trace("player " + id +" has not any buildng.");
			return -1;
		}
		
		var t = resources.getRandomKey();
		if( !ResourceType.isCard(t) )
			return getRandomBuilding();
		return t;
	}
	
	public function getTutorStep() : Int { return tutorialMode == -1 ? PrefsTypes.T_162_QUEST_SHOWN : prefs.getAsInt(PrefsTypes.TUTOR); }
	public function inSlotTutorial() : Bool { return getTutorStep() >= PrefsTypes.T_031_SLOT_FOCUS && getTutorStep() < PrefsTypes.T_035_DECK_FOCUS; }
	public function inDeckTutorial() : Bool { return getTutorStep() >= PrefsTypes.T_035_DECK_FOCUS && getTutorStep() < PrefsTypes.T_038_CARD_UPGRADED; }
	public function villageEnabled() : Bool { return !inTutorial();/*get_arena(0) > 0;*/ }
	public function emptyDeck() : Bool { return !cards.exists(CardTypes.C001) || cards.get(CardTypes.C001).level <= 1 ; }
	public function isBot() : Bool { return id < 10000; }
	public static function isAdmin(id:Int) : Bool {return (id == 10412 || /*id == 10438 ||*/ id == 10487 /*|| id == 96111*/); }
	public function inTutorial() : Bool
	{
		if( isBot() )
			return false;
	#if java
		if( tutorialMode == 0 && getLastOperation() < 3 )
			return true;
		if( tutorialMode == 1 && get_battleswins() < 2 )
			return true;
	#elseif flash
		if( tutorialMode == 0 && getLastOperation() < 3 && getTutorStep() < PrefsTypes.T_151_SELECT_NAME_FOCUS )
			return true;
		if( tutorialMode == 1 && get_battleswins() < 2 )
			return true;
	#end
		return false;
	}
	
	#if flash
	public function dashboadTabEnabled(index:Int):Bool
	{
		if( getTutorStep() >= PrefsTypes.T_047_WIN )
			return true;
		if( index == 1 )
			return inDeckTutorial();
		if( index ==  2 )
			return !inDeckTutorial();
		return false;
	}
	#end
	
	public function getQuestIndexByType(type:Int) : Int
	{
		var i = 0;
		while ( i < quests.length )
		{
			if( quests[i].type == type )
				return i;
			i ++;
		}
		return -1;
	}
	public function getQuestIndexById(id:Int) : Int
	{
		var i = 0;
		while ( i < quests.length )
		{
			if( quests[i].id == id )
				return i;
			i ++;
		}
		return -1;
	}
}