package com.boaglio.mongodb;

import static com.mongodb.client.model.Filters.eq;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

public class JUGsList {

	private static final String host = "localhost";
	private static final int port = 27017;
	private static final String database = "test";
	private static final String collection = "jug";

	@SuppressWarnings("unchecked")
	public static void main(String[] args) {

		try {

			MongoClient mongoClient = new MongoClient(host, port);

			MongoDatabase db = mongoClient.getDatabase(database);

			MongoCollection<Document> jugsCollection = db.getCollection(collection);

			System.out.println("-------- MongoDB JUG List from REGION 4 (Java Driver only) ------------");

			List<Document> mongodbDocuments = jugsCollection.find(eq("region", "Sudeste"))
					.into(new ArrayList<Document>());

			List<JUG> jugsList = new ArrayList<JUG>();

			System.out.println(mongodbDocuments);
			List<Document> jugsDocument = (List<Document>) mongodbDocuments.get(0).get("jugs");

			jugsList = jugsDocument.stream().map(obj -> new JUG((String) obj.get("name"),
					(String) obj.get("description"), (String) obj.get("local"), (String) obj.get("url")))
					.collect(Collectors.toList());

			jugsList.stream().forEach(System.out::println);

			mongoClient.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
