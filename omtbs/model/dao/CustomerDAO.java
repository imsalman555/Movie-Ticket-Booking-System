package omtbs.model.dao;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import omtbs.model.DBConnector;
import omtbs.model.beans.CustomerBean;

public class CustomerDAO implements Serializable {
	
	public static String validateLogin(CustomerBean b) {
		
		Connection con=DBConnector.getDBConnection();
		String query="select usertype from user where email='"+b.getEmail()+"' and password='"+b.getPassword()+"';";
		try {
			Statement s=con.createStatement();
			ResultSet rs=s.executeQuery(query);
			if(rs.next()) {
				if(rs.getString(1).equalsIgnoreCase("customer")) {
					//con.close();
					b.setUsertype("customer");
					return "customer";
				}
				else if(rs.getString(1).equalsIgnoreCase("admin")) {
					//con.close();
					b.setUsertype("admin");
					return "admin";	
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "none";
	}
	
	
	public static boolean validateRegister(CustomerBean b) {
		
		if(validateLogin(b).equalsIgnoreCase("none")) {
			Connection con=DBConnector.getDBConnection();
			b.setUsertype("customer");
			String query="insert into user (usertype,name,email,password,ccn,address,phone,gender) values('"+b.getUsertype()+"','"+b.getName()+"','"+b.getEmail()+"','"+b.getPassword()+"','"+b.getCcardnumber()+"','"+b.getAddress()+"','"+b.getPhone()+"','"+b.getGender()+"');";
			try {
				Statement s=con.createStatement();
				int i=s.executeUpdate(query);
				if(i==1) {
					return true;
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return false;
		}
		return false;
	}
}
