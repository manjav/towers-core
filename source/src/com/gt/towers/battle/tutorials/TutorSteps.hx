package com.gt.towers.battle.tutorials;
import com.gt.towers.utils.maps.StringTutorMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class TutorSteps 
{
	public var steps:StringTutorMap;

	public function new() 
	{
		steps = new StringTutorMap();
		
		addStep("introdunction", Tutor.TYPE_MESSAGE, true);
		addStep("quest_0_message", Tutor.TYPE_MESSAGE, false);
		addStep("quest_0_fight", Tutor.TYPE_SWIPE, false, "1,0");
		addStep("quest_0_congratulation", Tutor.TYPE_MESSAGE, false);
		
		addStep("seocnd_quest_message", Tutor.TYPE_MESSAGE, true);
		addStep("first_quest_fight", Tutor.TYPE_SWIPE, false, "3,2,1");
		addStep("seocnd_quest_congratulation", Tutor.TYPE_MESSAGE, false);
		
		addStep("seocnd_quest_message", Tutor.TYPE_MESSAGE, true);
		addStep("first_quest_fight", Tutor.TYPE_IMPROVE, false, "4");
		addStep("seocnd_quest_congratulation", Tutor.TYPE_MESSAGE, false);
	}
	
	privatefunction addStep(key:String, type:Int, primary:Bool=false, buildings:String=null) 
	{
		steps.set(key , new Tutor(key, type, primary, buildings);
	}
	
}