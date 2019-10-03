package c4l.server.main;

import org.json.JSONArray;

public class Scenes {
//	buttons:[
//		        {'name': "Effect 0,0", 'id': '1'},
//		        {'name': "Effect 0,1", 'id': '2'},
//		        {'name': "Effect 1,0", 'id': '3'},
//		        {'name': "Effect 1,1", 'id': '4'},
//		      ],
	//TODO Connection to DB
	// First static in this class later with connection to DB
	private static String scenes = "[ "
			+ "{'name':'scene0','id':'0', 'description':'d0'}, "
			+ "{'name':'scene1','id':'1', 'description':'d1'} , "
			+ "{'name':'scene2','id':'2', 'description':'d2'} , "
			+ "{'name':'scene3','id':'3', 'description':'d3'} , "
			+ "{'name':'scene4','id':'4', 'description':'d4'} , "
			+ "{'name':'scene5','id':'5', 'description':'d5'} , "
			+ "{'name':'scene6','id':'6', 'description':'d6'} , "
			+ "{'name':'scene7','id':'7', 'description':'d7'} , "
			+ "{'name':'scene8','id':'8', 'description':'d8'} , "
			+ "{'name':'scene9','id':'9', 'description':'d9'} , "
			+ "{'name':'scene10','id':'10', 'description':'d10'} , "
			+ "{'name':'scene11','id':'11', 'description':'d11'} , "
			+ "{'name':'scene12','id':'12', 'description':'d12'} "
			+ "]";
	
	public static JSONArray getScenes() {
		return new JSONArray(scenes);
	}
	
	public static JSONArray getEffectButtonData() {
		return new JSONArray(scenes);
	}
	
	
	
	

}
