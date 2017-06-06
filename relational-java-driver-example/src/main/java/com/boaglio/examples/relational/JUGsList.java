package com.boaglio.examples.relational;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JUGsList {

	private static String SQL = "select j.name,j.description,l.name,j.url " +
	                            "from jug j,region r,local_region lr,local l "
	                            + "where r.id = lr.region_id "
	                            + "  and l.id=lr.local_id "
	                            + "  and j.local_id=l.id "
	                            + "   and r.id=4";
	
	private static String JDBC_URL = "jdbc:postgresql://127.0.0.1:5432/";
	private static String JDBC_USER = "postgres";
	private static String JDBC_PASSWORD = "boaglio";
	
	
	public static void main(String[] argv) {

		Connection connection = null;
		Statement stmt = null;
		System.out.println("-------- PostgreSQL JUG List from REGION 4------------");
		try {

			Class.forName("org.postgresql.Driver");
			connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
			  stmt = connection.createStatement();

			ResultSet rs = stmt.executeQuery(
					SQL);

			while (rs.next()) {
				System.out.println(rs.getString(1) + " - " + rs.getString(2) + " @ " + rs.getString(3) + " >>> "
						+ rs.getString(4));
			}

		} catch (SQLException | ClassNotFoundException e) {

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
