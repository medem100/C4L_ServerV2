package c4l.server.main;

import org.apache.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONObject;

import c4l.server.main.Constants;

public class Values {
	// TODO Putt in C4l applet

	// private Logger logger = Logger.getRootLogger();
	private static int effectSice = 0;
	private static int effectSpeed = 0;
	private static JSONArray scenenID = new JSONArray(); // so more than one scenen can run paralel
	private static int caseID;
	private static String effectID = "99"; // Initzalisirt das kein button gedrückt ist
	private static JSONArray faderValues = new JSONArray(new int[Constants.DEVICE_CHANNELS]);
	private static JSONArray deviceSelected = new JSONArray(new Boolean[Constants.DYNAMIC_DEVICES]);
	private static boolean savePresst = false;
	private static boolean crateNewScenePresst = false;

	// getter setter

	
	public static int getEffectSice() {
		return effectSice;
	}

	public static boolean isSavePresst() {
		return savePresst;
	}
	
	public static boolean isCrateNewScenePresst() {
		return crateNewScenePresst;
	}

	public static void setSavePresst(boolean savePresst) {
		Values.savePresst = savePresst;
	}

	public static void setEffectSice(int effectSice) {
		Values.effectSice = effectSice;
	}

	public static int getEffectSpeed() {
		return effectSpeed;
	}

	public static void setEffectSpeed(int effectSpeed) {
		Values.effectSpeed = effectSpeed;
	}

	public static JSONArray getScenenID() {
		return scenenID;
	}

	public static void setScenenID(JSONArray scenenID) {
		Values.scenenID = scenenID;
	}

	public static int getCaseID() {
		return caseID;
	}

	public static void setCaseID(int caseID) {
		Values.caseID = caseID;
	}

	public static JSONArray getFaderValues() {
		return faderValues;
	}

	public static void setFaderValues(JSONArray faderValues) {
		Values.faderValues = faderValues;
	}

	public static JSONArray getDeviceSelected() {
		return deviceSelected;
	}

	public static void setDeviceSelected(JSONArray deviceSelected) {
		Values.deviceSelected = deviceSelected;
	}

	public static void setEffectID(String id) {
		effectID = id;
	}

	public static void addScenenID(int scenenID) {
		// Noch giebt es immer eine scene
		Values.scenenID.put(0,scenenID);
	}

	public static void dropScenenID(int scenenID) {
		Values.scenenID.remove(scenenID);
	}

	public static void setSice(int sice) {
		Values.effectSice = sice;
	}

	public static void setSpeed(int speed) {
		Values.effectSpeed = speed;
	}

	public static void setDevice(int Geraet) {
		try {
			if (Boolean.valueOf(deviceSelected.get(Geraet).toString())) {
				deviceSelected.put(Geraet, false);
			} else {
				deviceSelected.put(Geraet, true);
			}
		} catch (Exception e) {
			deviceSelected.put(Geraet, true);
		}
	}

	public static boolean getDevice(int idx) {
		try {
			return (boolean) deviceSelected.get(idx);
		} catch (Exception e) {
			return false;
		}

	}
	
	public static void setCrateNewScenePresst(boolean b) {
		crateNewScenePresst = b;
	}

	public static void setFader(int fader, int value) {
		Values.faderValues.put(fader, value);

	}

	public static String getEffectID() {
		return Values.effectID;
	}

	// geräte fehlen....
	public static String getJSON() {
		// addresValue = clearAdrresValues(addresValue);
		if(scenenID.isEmpty()) {
			scenenID.put(0,0);
		}
		
		JSONObject answer = new JSONObject();
		answer.put("scenenID", scenenID);
		answer.put("caseID", caseID);
		answer.put("effectSize", effectSice);
		answer.put("effectSpeed", effectSpeed); // könnte noch ne Logi rein das nur geändert values rein kommen
		answer.put("fader", faderValues);
		answer.put("devices", deviceSelected);
//		answer.put("devices", deviceSelected);
		answer.put("effect", effectID);
		answer.put("save", savePresst);
		answer.put("crateNewScene", crateNewScenePresst);

		return answer.toString();
	}

}