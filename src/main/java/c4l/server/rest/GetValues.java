package c4l.server.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.apache.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONObject;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import c4l.server.main.*;

@Path("/get")
@Api(value = "/get")
public class GetValues {
	//private static Logger logger = Logger.getLogger(getValues.class);

	@GET
	@Path("/allValues")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "get Current values From the Server Dashboard")
	@ApiResponses(value = { @ApiResponse(code = 500, message = "    ") }) // TODO Error Message
	public static Response geAllValues() {
//		logger.debug("get Values");
		try {
			String test = Values.getJSON().toString();
		return Response.status(200).entity(Values.getJSON().toString()).build();
		}catch (Exception e) {
//			logger.error("Fail to build Json of Values ", e);
			return Response.serverError().build();
		}
	}
	
	@GET
	@Path("/specialFaders")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "get Current values From the Special Faders")
	@ApiResponses(value = { @ApiResponse(code = 500, message = "    ") }) // TODO Error Message
	public static Response getSpecialfader() {
//		logger.debug("get Values");
		try {
			JSONObject effectSize = new JSONObject(); 
			JSONObject effectSpeed = new JSONObject(); 
			JSONArray specialFaderValues = new JSONArray();
			
			effectSize.put("size", Values.getEffectSice());
			effectSize.put("channel", 1);
			effectSize.put("device", "Size");
			effectSize.put("mute", false);
			effectSize.put("value", "null"); 
			
			effectSpeed.put("size", Values.getEffectSpeed());
			effectSpeed.put("channel", 2);
			effectSpeed.put("device", "speed");
			effectSpeed.put("mute", false);
			effectSpeed.put("value", "null");
			
			specialFaderValues.put(effectSize);
			specialFaderValues.put(effectSpeed);
			
		return Response.status(200).entity(specialFaderValues.toString()).build();
		}catch (Exception e) { 
//			logger.error("Fail to build Json of Values ", e);
			return Response.serverError().build();
		}
	}
	
	@GET
	@Path("/faders")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "get Current values From the Faders")
	@ApiResponses(value = { @ApiResponse(code = 500, message = "    ") }) // TODO Error Message
	public static Response getFader() {
//		logger.debug("get Values");
		try {
			JSONArray faderValues = new JSONArray();
			JSONArray currentValues = Values.getFaderValues();
			for(int i = 0 ; i < Constants.FADERNAMES.length; i++) {
				JSONObject fader = new JSONObject();
				fader.put("lum", currentValues.get(i));
				fader.put("channel", i+1);
				fader.put("device", Constants.FADERNAMES[i]);
				fader.put("mute", false);
				fader.put("value", 0);
				faderValues.put(fader);
			}
			
		return Response.status(200).entity(faderValues.toString()).build();
		}catch (Exception e) {
//			logger.error("Fail to build Json of Values ", e);
			return Response.serverError().build();
		}
	}
	
	@GET
	@Path("/devices")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "get selected Devices")
	@ApiResponses(value = { @ApiResponse(code = 500, message = "    ") }) // TODO Error Message
	public static Response getDevices() {
//		logger.debug("get Values");
		JSONArray selectedDevices = new JSONArray();
		try {
			for(int i = 0 ; i <= Constants.ALL_DEVICES; i ++) {
				if(Values.getDevice(i)) {
					selectedDevices.put("Device"+i);
				}
			}
		return Response.status(200).entity(selectedDevices.toString()).build();
		}catch (Exception e) {
//			logger.error("Fail to build Json of Values ", e);
			return Response.serverError().build();
		}
	}
	
	
	@GET
	@Path("/effectButtons")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "get values for the effect buttons")
	@ApiResponses(value = { @ApiResponse(code = 500, message = "    ") }) // TODO Error Message
	public static Response getEffectButtons() {
//		logger.debug("get Values");
		try {
		return Response.status(200).entity(Effect.getEffectButtonData().toString()).build();
		}catch (Exception e) {
//			logger.error("Fail to build Json of Values ", e);
			return Response.serverError().build();
		}
	}
	
	@GET
	@Path("/sceneButtons")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "get values for the scene buttons")
	@ApiResponses(value = { @ApiResponse(code = 500, message = "    ") }) // TODO Error Message
	public static Response getSceneButtons() {
//		logger.debug("get Values");
		try {
		return Response.status(200).entity(Scenes.getScenes().toString()).build();
		}catch (Exception e) {
//			logger.error("Fail to build Json of Values ", e);
			return Response.serverError().build();
		}
	}
	

}