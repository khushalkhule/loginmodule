package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	String sql="select * from users where uname=? and upass=?";
	String url="jdbc:mysql://localhost:3306/info";
	String username="root";
	String password="root";
	
	public boolean check(String uname, String upass){
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
	
		
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sql);
		

			st.setString(1, uname);
			st.setString(2, upass);
			

			ResultSet rs=st.executeQuery();
			System.out.println("executed");
			

			if(rs.next()){
				return true;
			}
			    
			}
		catch(Exception e){
			e.printStackTrace();
		}
		

		return false;
	}
}
