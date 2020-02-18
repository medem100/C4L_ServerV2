package c4l.server.main;

import java.util.ArrayList;
import java.util.List;
import c4l.applet.db.DB;

public class Device {
	private static DB db = c4l.applet.db.DB.getInstance();

	public static List<String> getNamesOfDevicesForSetUp(int setUpId) {
		return new ArrayList<String>(db.Select.deviceInfos(setUpId).values());
	}

}
