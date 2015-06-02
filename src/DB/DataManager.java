package DB;

import java.sql.*;
import java.util.ArrayList;


public class DataManager {
	private String dburl = "";
	private String dbuser = "";
	private String dbpass = "";

	public void setDbUrl(String url) {
		dburl = url;
	}
	
	public  String getDbUrl() {
		return dburl;
	}
	
	public void setDbUser(String user) {
		dbuser = user;
	}
	
	public  String getDbUser() {
		return dbuser;
	}
	
	public void setDbPass(String pass) {
		dbpass = pass;
	}
	
	public  String getDbPass () {
		return dbpass;
	}
	
	public  Connection getConnection() {
		
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(getDbUrl(),getDbUser(),getDbPass());			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public void closeConnection(Connection conn) {
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public String String_query(String a) {
		String list = new String();
		Connection conn = getConnection();
		if(conn != null) {
			ResultSet rs = null;
			PreparedStatement ps = null;
			try {
				ps = conn.prepareStatement(a);
				rs = ps.executeQuery();								
				while(rs.next()) {					
					list=(rs.getString(1));
				}				
			} catch(SQLException e) {
				e.printStackTrace();
			}
			finally {
				try {
					rs.close();
					ps.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
				closeConnection(conn);	
			}
		}
		return list;
	}
	public void void_query(String a)
	{
		Connection conn = getConnection();
		if(conn != null) {
			
			PreparedStatement ps = null;
			try {
				Statement st = conn.createStatement();
				st.executeUpdate(a);
				ps = conn.prepareStatement(a);					
			} catch(SQLException e) {
				e.printStackTrace();
			}
			finally {
				try {
					ps.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
				closeConnection(conn);	
			}
		}
		
	}
	public ArrayList<String> list_query(String a) {
		ArrayList<String> list = new ArrayList<String>();
		Connection conn = getConnection();
		if(conn != null) {
			ResultSet rs = null;
			PreparedStatement ps = null;
			try {
				ps = conn.prepareStatement(a);
				rs = ps.executeQuery();								
				while(rs.next()) {					
					list.add(rs.getString(1));
				}				
			} catch(SQLException e) {
				e.printStackTrace();
			}
			finally {
				try {
					rs.close();
					ps.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
				closeConnection(conn);	
			}
		}
		return list;
	}
}
