package com.boaglio.mongodb;

import java.util.List;

import org.mongodb.morphia.Datastore;
import org.mongodb.morphia.Morphia;
import org.mongodb.morphia.query.Query;

import com.mongodb.MongoClient;

public class JUGsList {
 
	public static void main(String[] args) {

		try {

			final Morphia morphia = new Morphia();
 
			morphia.mapPackage("com.boaglio.mongodb.dto");
 
			final Datastore datastore = morphia.createDatastore(new MongoClient(), "test");

			System.out.println("-------- MongoDB JUG List from REGION 4  (Morphia) ------------");

			final Query<Region> query = datastore.createQuery(Region.class).filter("region","Sudeste");
			final List<Region> regionList = query.asList();

			System.out.println("JSON = "+regionList);

			System.out.println("-------- List<JUG> ------------");
		    regionList.get(0).getJugs().stream().forEach(System.out::println);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
