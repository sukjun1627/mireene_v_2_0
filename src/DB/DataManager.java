package DB;

import java.sql.*;
import java.io.*;
import java.util.*;

public class DataManager {

	
	
	public static void void_query(String a) throws SQLException, IOException {
		
		Connection con = getConnection();
		try {
			Statement st = con.createStatement();
			st.executeUpdate(a);	
			
		}
		finally {
			con.close();
		}
		
	}
	
	public static String String_query(String a) throws SQLException, IOException {
		String list = new String();
		Connection con = getConnection();
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(a);			
			while(rs.next())
				list=rs.getString(1);
			rs.close();
		}
		finally {
			con.close();
		}
		return list;
	}

	public static ArrayList<String> list_query(String a) throws SQLException, IOException {
		ArrayList<String> list = new ArrayList<String>();
		Connection con = getConnection();
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(a);			
			while(rs.next())
				list.add(rs.getString(1));
			rs.close();
		}
		finally {
			con.close();
		}
		return list;
	}
	

	public static Connection getConnection() throws SQLException, IOException {
		Properties props = new Properties();
		FileInputStream in = new FileInputStream("C:/Users/database.properties");
		props.load(in);
		in.close();
		
		String drivers = props.getProperty("jdbc.drivers");
		if(drivers != null)
			System.setProperty("jdbc.drivers", drivers);
		String url = props.getProperty("jdbc.url");
		String username = props.getProperty("jdbc.username");
		String password = props.getProperty("jdbc.password");
		
		return DriverManager.getConnection(url, username, password);
	}

}
