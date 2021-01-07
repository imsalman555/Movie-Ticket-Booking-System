package omtbs.model.dao;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import omtbs.model.DBConnector;
import omtbs.model.beans.MovieBean;

public class MovieDAO implements Serializable{
	
	public static boolean addMovie(MovieBean b) {
		
		Connection con=DBConnector.getDBConnection();
		String query="insert into movie(title,year,duration,director,cast,language,type) values(?,?,?,?,?,?,?);";
		try {
			PreparedStatement s=con.prepareStatement(query);
			s.setString(1, b.getTitle());
			s.setString(2, b.getYear());
			s.setString(3, b.getDuration());
			s.setString(4, b.getDirector());
			s.setString(5, b.getCast());
			s.setString(6, b.getLanguage());
			s.setString(7, b.getType());
			int i=s.executeUpdate();
			if(i==1)
				return true;
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public static ArrayList<MovieBean> getMovies() {
		
		Connection con=DBConnector.getDBConnection();
		String query="select * from movie;";
		ArrayList<MovieBean> al=new ArrayList<MovieBean>();
		try {
			Statement s=con.createStatement();
			ResultSet rs=s.executeQuery(query);
			System.out.println("before");
			while(rs.next()) {
				MovieBean mb=new MovieBean();
				System.out.println(rs.getString(2));
				mb.setTitle(rs.getString("title"));
				mb.setYear(rs.getString("year"));
				mb.setDuration(rs.getString("duration"));
				mb.setDirector(rs.getString("director"));
				mb.setCast(rs.getString("cast"));
				mb.setLanguage(rs.getString("language"));
				mb.setType(rs.getString("type"));
				al.add(mb);
				System.out.println("between");
			}
			System.out.println("after");
			return al;
			}catch(Exception e) {
				e.printStackTrace();
		}
		return al;
	}
}