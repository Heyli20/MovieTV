package Movie;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class MovieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		if(action == null) {
			action = "list";
		}
		
		switch(action) {
		case "update":
			showForm(request,response);
			break;
		case "delete" :
			deleteM(request,response);
			break;
		default:
			showDetails(request,response);
		}
	}
	
	private void showForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	private void deleteM(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	private void showDetails(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Movie> mov =new ArrayList<>();
		request.setAttribute("movie", mov);
		System.out.print(mov);
		
		request.getRequestDispatcher("/Dashboard/movie.jsp").forward(request, response);
	}

}
