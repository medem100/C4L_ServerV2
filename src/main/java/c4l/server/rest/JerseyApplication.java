<<<<<<< HEAD
package c4l.server.rest;

import org.glassfish.jersey.server.ResourceConfig;

import io.swagger.jaxrs.config.BeanConfig;
import io.swagger.jaxrs.listing.ApiListingResource;
import io.swagger.jaxrs.listing.SwaggerSerializers;
/**
 * this class is for the configuration of jersey
 *
 *
 */
public class JerseyApplication extends ResourceConfig {
	public JerseyApplication() {
		
		packages("c4l.server.rest");
		this.configureSwagger();
	}

	private void configureSwagger() {
		this.register(ApiListingResource.class);
		this.register(SwaggerSerializers.class);
		BeanConfig config = new BeanConfig();
		config.setTitle("C4L Server Schnitstelle");
		config.setVersion("v1");
		config.setDescription("Created " );
		config.setBasePath("http://localhost:8080/c4l_server/rest/"); // muss angepasst werden
		config.setResourcePackage("c4l.server.rest");
		config.setPrettyPrint(true);
		config.setScan(true);
	}
=======
package c4l.server.rest;

import org.glassfish.jersey.server.ResourceConfig;

import io.swagger.jaxrs.config.BeanConfig;
import io.swagger.jaxrs.listing.ApiListingResource;
import io.swagger.jaxrs.listing.SwaggerSerializers;
/**
 * this class is for the configuration of jersey
 *
 *
 */
public class JerseyApplication extends ResourceConfig {
	public JerseyApplication() {
		
		packages("c4l.server.rest");
		this.configureSwagger();
	}

	private void configureSwagger() {
		this.register(ApiListingResource.class);
		this.register(SwaggerSerializers.class);
		BeanConfig config = new BeanConfig();
		config.setTitle("C4L Server Schnitstelle");
		config.setVersion("v1");
		config.setDescription("Created " );
		config.setBasePath("http://localhost:8080/c4l_server/rest/"); // muss angepasst werden
		config.setResourcePackage("c4l.server.rest");
		config.setPrettyPrint(true);
		config.setScan(true);
	}
>>>>>>> branch 'master' of https://github.com/medem100/C4L_ServerV2.git
}