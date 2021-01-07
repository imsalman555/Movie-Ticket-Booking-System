package omtbs.model.beans;

import java.io.Serializable;

public class MovieBean implements Serializable {
	private int movieid;
	private String title;
	private String type;
	private String year;
	private String duration;
	private String director;
	private String cast;
	private String language;
	
	public MovieBean() {
		
	}
	
	public int getMovieid() {
		return movieid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getCast() {
		return cast;
	}
	public void setCast(String cast) {
		this.cast = cast;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	
	public String getPoster() {
		String src="img/movies/";
		String img=title+".jpg";
		String alt="N/A";
		return "<img src=\""+src+img+"\" alt=\""+alt+"\" width=\"100\" height=\"100\">";
	}

	public String toString() {
		return "MovieBean [movieid=" + movieid + ", title=" + title + ", type=" + type + ", year="
				+ year + ", duration=" + duration + ", director=" + director + ", cast=" + cast + ", language="
				+ language + "]";
	}
}
