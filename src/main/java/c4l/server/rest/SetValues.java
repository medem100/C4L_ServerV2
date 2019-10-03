package c4l.server.rest;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import c4l.server.main.Values;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

@Path("/set")
@Api(value = "/set")
public class SetValues {

	// private static Logger logger = Logger.getLogger(getValues.class);
	@GET
	@Path("/fader")
	@Consumes(MediaType.TEXT_PLAIN)
	@ApiOperation(value = "Set Fader Value")
	@ApiResponses(value = { @ApiResponse(code = 500, message = "    ") }) // TODO Error Message
	public static Response setFaderValue(@QueryParam("fader") int fader, @QueryParam("value") int value ) {
		// logger.debug("get Values");
		try {
			 Values.setFader(fader ,value);
			return Response.status(200).build();
		} catch (Exception e) {
			// logger.error("Fail to build Json of Values ", e);
			return Response.serverError().build();
		}
	}
	
	@GET
	@Path("/test")
	public static Response test() {
		System.out.println("tada");
		return Response.status(200).build();
	}
	
	
	@GET
	@Path("/effect")
//	@Consumes(MediaType.TEXT_PLAIN)
	@ApiOperation(value = "set effect id")
	@ApiResponses(value = { @ApiResponse(code = 500, message = "    ") }) // TODO Error Message
	public static Response setEffect(@QueryParam("effect") String EffectId ) {
		// logger.debug("get Values");
		try {
			Values.setEffectID(EffectId);
			return Response.status(200).build();
		} catch (Exception e) {
			// logger.error("Fail to build Json of Values ", e);
			return Response.serverError().build();
		}
	}
	
	@GET
	@Path("/device")
	@Consumes(MediaType.TEXT_PLAIN)
	@ApiOperation(value = "set use Device")
	@ApiResponses(value = { @ApiResponse(code = 500, message = "    ") }) // TODO Error Message
	public static Response setDevice(@QueryParam("device") int device) {
		// logger.debug("get Values");
		try {
			Values.setDevice(device);
			return Response.status(200).build();
		} catch (Exception e) {
			// logger.error("Fail to build Json of Values ", e);
			return Response.serverError().build();
		}
	}
	
	@GET
	@Path("/scene")
	@Consumes(MediaType.TEXT_PLAIN)
	@ApiOperation(value = "set scene")
	@ApiResponses(value = { @ApiResponse(code = 500, message = "    ") }) // TODO Error Message
	public static Response setScene(@QueryParam("scene") int scene) {
		// logger.debug("get Values");
		try {
			 Values.addScenenID(scene); // Now Only One
			return Response.status(200).build();
		} catch (Exception e) {
			// logger.error("Fail to build Json of Values ", e);
			return Response.serverError().build();
		}
	}
	
	@GET
	@Path("/sice")
	@Consumes(MediaType.TEXT_PLAIN)
	@ApiOperation(value = "set sice of effects")
	@ApiResponses(value = { @ApiResponse(code = 500, message = "    ") }) // TODO Error Message
	public static Response setSice(@QueryParam("sice") int sice) {
		// logger.debug("get Values");
		try {
			 Values.setSice(sice);
			return Response.status(200).build();
		} catch (Exception e) {
			// logger.error("Fail to build Json of Values ", e);
			return Response.serverError().build();
		}
	}
	
	
	@GET
	@Path("/speed")
	@Consumes(MediaType.TEXT_PLAIN)
	@ApiOperation(value = "set speed of effects")
	@ApiResponses(value = { @ApiResponse(code = 500, message = "    ") }) // TODO Error Message
	public static Response setSpeed(@QueryParam("speed") int speed) {
		// logger.debug("get Values");
		try {
			 Values.setSpeed(speed);
			return Response.status(200).build();
		} catch (Exception e) {
			// logger.error("Fail to build Json of Values ", e);
			return Response.serverError().build();
		}
	}
	
	@GET
	@Path("/readEffect")
//	@Consumes(MediaType.TEXT_PLAIN)
	@ApiOperation(value = "set effect id")
	@ApiResponses(value = { @ApiResponse(code = 500, message = "    ") }) // TODO Error Message
	public static Response setEffectReaded() {
		// logger.debug("get Values");
		try {
			Values.setEffectID("99");
			return Response.status(200).build();
		} catch (Exception e) {
			// logger.error("Fail to build Json of Values ", e);
			return Response.serverError().build();
		}
	}
	
	@GET
	@Path("/setSave")
//	@Consumes(MediaType.TEXT_PLAIN)
	@ApiOperation(value = "set effect id")
	@ApiResponses(value = { @ApiResponse(code = 500, message = "    ") }) // TODO Error Message
	public static Response getSavedPresst(@QueryParam("save") boolean save) {
		// logger.debug("get Values");
		try {
			Values.setSavePresst(save);
			return Response.status(200).build();
		} catch (Exception e) {
			// logger.error("Fail to build Json of Values ", e);
			return Response.serverError().build();
		}
	}

}
