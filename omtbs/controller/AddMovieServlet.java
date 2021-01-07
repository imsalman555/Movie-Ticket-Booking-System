package omtbs.controller;

import java.io.File;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileExistsException;

import omtbs.model.beans.MovieBean;
import omtbs.model.dao.MovieDAO;

//@WebServlet("/AddMovie")
public class AddMovieServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession hs=request.getSession(false);	
		if(hs!=null) {
			try {
				ServletFileUpload sfu=new ServletFileUpload(new DiskFileItemFactory());
				List<FileItem> list=sfu.parseRequest(request);
				Iterator<FileItem> iter = list.iterator();
				MovieBean mb=new MovieBean();
				String type="";
				
				while(iter.hasNext()){
					FileItem fi=iter.next();
					if(fi.isFormField()) {
						String fname=fi.getFieldName();
						
						switch(fname) {
							case "title":
								mb.setTitle(fi.getString());
								break;
							case "year":
								mb.setYear(fi.getString());
								break;
							case "duration":
								mb.setDuration(fi.getString());
								break;
							case "director":
								mb.setDirector(fi.getString());
								break;
							case "cast":
								mb.setCast(fi.getString());
								break;
							case "language":
								mb.setLanguage(fi.getString());
								break;
							case "type":
								type+=fi.getString()+";";
								mb.setType(type);
								break;
							}
					}
					else{
						if(MovieDAO.addMovie(mb)) {
							try {
							fi.write(new File("E:/Mine/Semester 5/Web/eclipse/OMTBS/src/img/movies/"+mb.getTitle()+".jpg"));
							System.out.println("File Uploaded");
							hs.setAttribute("movieadded", true);
							response.sendRedirect("addmovie.jsp");
							}catch(FileExistsException e) {
								hs.setAttribute("movieadded", false);
								response.sendRedirect("addmovie.jsp");
							}
						}
						else {
							hs.setAttribute("movieadded", false);
							response.sendRedirect("addmovie.jsp");
						}
					}
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		else
			response.sendRedirect("home.jsp");
	}
}
