package c4l.server.main;

import org.json.JSONArray;

public class Effect {
//	buttons:[
//		        {'name': "Effect 0,0", 'id': '1'},
//		        {'name': "Effect 0,1", 'id': '2'},
//		        {'name': "Effect 1,0", 'id': '3'},
//		        {'name': "Effect 1,1", 'id': '4'},
//		      ],
	//TODO Connection to DB
	// First static in this class later with connection to DB
	private static String effects = "[ "
			+ "{'name':'WILD', 			'id':'10', 'category':'Random' , 'Description': 'Move to random spots (range size)'}, "
			+ "{'name':'JUMP', 			'id':'11', 'category':'Random' , 'Description': 'Jump to random spots (range size)'},"
			+ "{'name':'SINUS', 		'id':'00', 'category':'Simpel' , 'Description': 'Add a sine-wave of amplitude size/2'},"
			+ "{'name':'RAMP', 			'id':'01', 'category':'Simpel' , 'Description': 'linear fade from -size/2 to +size/2, jump back'},"
			+ "{'name':'REVRAMP', 		'id':'02', 'category':'Simpel' , 'Description': 'linear fade from +size/2 to -size/2, jump back'},"
			+ "{'name':'LINEAR', 		'id':'03', 'category':'Simpel' , 'Description': 'linear fade from +size/2 to -size/2, fade back'},"
			+ "{'name':'LINEAR_HOLDL', 	'id':'04', 'category':'Simpel' , 'Description': 'like linear, but pausing at low-point'},"
			+ "{'name':'LINEAR_HOLDH', 	'id':'05', 'category':'Simpel' , 'Description': 'like linear, but pausing at high-point'},"
			+ "{'name':'STROBO', 		'id':'06', 'category':'Simpel' , 'Description': 'Channel is active size/256 parts of effect time, zero afterwards'},"
			+ "{'name':'STROBO_HOLD', 	'id':'07', 'category':'Simpel' , 'Description': 'Strobo without changing colors when on'},"
			+ "{'name':'CIRCLE', 		'id':'08', 'category':'Simpel' , 'Description': 'sine on first channel, cosine on second'},"
			+ "{'name':'RAINBOW', 		'id':'09', 'category':'Simpel' , 'Description': 'fade through a rainbow (assuming 1,2,3 as RGB)'}"
			+ "]";
	
	public static JSONArray getEffects() {
		return new JSONArray(effects);
	}
	
	public static JSONArray getEffectButtonData() {
		return new JSONArray(effects);
	}
	
	
	
	

}
