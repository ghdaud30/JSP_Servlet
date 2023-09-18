package common;

import java.sql.DriverManager;
import com.mysql.cj.exceptions.ClosedOnExpiredPasswordException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletContext;

public class JDBConnect {
	private Connection con;
	
	public JDBConnect() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/musthave";
			String id = "musthave";
			String pwd = "tiger";
			con = DriverManager.getConnection(url,id,pwd);
			
			System.out.println("DBConnection is finished!!(Bagic Constructor)");
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			System.out.println("1");
		}
	}
	
	public JDBConnect(String driver, String url, String id , String pwd) {
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url,id,pwd);
			
			System.out.println("DBConnection is finished!!(Take Over Constructor)");
		}
		catch (Exception e) {
				System.out.println(e.getMessage());
				System.out.println("2");
		}
	}
	
	public JDBConnect(ServletContext application) {
		try {
			String driver = application.getInitParameter("MySQLDriver");
			Class.forName(driver);
			
			String url = application.getInitParameter("MySQLURL");
			String id = application.getInitParameter("MySQLId");
			String pwd = application.getInitParameter("MySQLPwd");
			
			con = DriverManager.getConnection(url,id,pwd);
			
			System.out.println("DBConnection is finished!!(Take Over Constructor2)");
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			System.out.println("3");
		}
	}
	
	public Connection getConnection() {
		return this.con;
	}
	
	public void close() {
		try {
			if (con != null) con.close();
			
			System.out.println("JDBC Resource deallocation");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
