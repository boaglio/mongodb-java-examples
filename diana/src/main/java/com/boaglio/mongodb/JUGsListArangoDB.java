package com.boaglio.mongodb;

import org.jnosql.diana.api.document.Document;
import org.jnosql.diana.api.document.DocumentCollectionManager;
import org.jnosql.diana.api.document.DocumentCollectionManagerFactory;
import org.jnosql.diana.api.document.DocumentConfiguration;
import org.jnosql.diana.api.document.DocumentEntity;
import org.jnosql.diana.api.document.DocumentQuery;
import org.jnosql.diana.arangodb.document.ArangoDBDocumentConfiguration;
import org.jnosql.diana.mongodb.document.MongoDBDocumentConfiguration;

import java.util.List;
import java.util.Optional;

import static org.jnosql.diana.api.document.query.DocumentQueryBuilder.select;

public class JUGsListArangoDB {

//    public static final String DATABASE = "test";
    public static final String DATABASE = "_system";
    
    public static final String DOCUMENT_COLLECTION = "jug";

    @SuppressWarnings({"rawtypes", "unchecked"})
    public static void main(String[] args) {

//        DocumentConfiguration configuration = new MongoDBDocumentConfiguration();
    	DocumentConfiguration configuration = new ArangoDBDocumentConfiguration();

        try (DocumentCollectionManagerFactory collectionFactory = configuration.get();) {
            DocumentCollectionManager collectionManager = collectionFactory.get(DATABASE);
            DocumentQuery query = select().from(DOCUMENT_COLLECTION).where("region").eq("Sudeste").build();

            List<DocumentEntity> entities = collectionManager.select(query);
//            System.out.println("-------- MongoDB JUG List from REGION 4 (JNoSQL Diana) ------------");
            System.out.println("-------- AragonDB JUG List from REGION 4 (JNoSQL Diana) ------------");
            DocumentEntity region = entities.get(0);
            Optional<Document> jugs = region.find("jugs");
            Document document = jugs.orElseThrow(() -> new RuntimeException("JUGs do not find"));
            System.out.println("-------- List<JUG> ------------");
            List<List<Document>> jugsDocument = (List<List<Document>>) document.get();
            jugsDocument.stream().forEach(System.out::println);
        }
    }

}
