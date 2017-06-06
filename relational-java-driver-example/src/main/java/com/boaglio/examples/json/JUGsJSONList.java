package com.boaglio.examples.json;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.fasterxml.jackson.databind.ObjectMapper;

public class JUGsJSONList {

	private static String SQL = "select info from JUG_JSON where id=4";
	
	private static String JDBC_URL = "jdbc:postgresql://127.0.0.1:5432/";
	private static String JDBC_USER = "postgres";
	private static String JDBC_PASSWORD = "boaglio";
	
	
	public static void main(String[] argv) {

		Connection connection = null;
		Statement stmt = null;
		System.out.println("-------- PostgreSQL JUG List from REGION 4 ------------");
		try {

			Class.forName("org.postgresql.Driver");
			connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
			  stmt = connection.createStatement();

			ResultSet rs = stmt.executeQuery(SQL);

			ObjectMapper mapper = new ObjectMapper();
			
			Region region = null;
			
			while (rs.next()) {
				System.out.println("JSON = "+rs.getString(1));
				region = mapper.readValue(rs.getString(1), Region.class);
			}
			
			System.out.println("-------- List<JUG> ------------");
			region.getJugs().stream().forEach(System.out::println);
			
		} catch (SQLException | ClassNotFoundException | IOException e) {

			System.out.println("Connection Failed! Check output console");
			e.printStackTrace();
			return;

		} finally {
			if (stmt!=null)
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			if (connection!=null)
				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
 
	}

}
