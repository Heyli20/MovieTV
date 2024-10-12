package Admin_Auth;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class AdminServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		HttpSession session = request.getSession();
      
		
		 if (action == null) {
	          action = "list"; // Default action is to list all admins
	     }

	     switch (action) {
	     	case "new":
	     		showNewForm(request,response); // Show form for adding new admin
	            break;
	        case "edit":
	             showEditForm(request,response); // Show form for editing admin
	             break;
	       case "delete":
	             deleteAdmin(request,response); // Delete admin
	             break;
	        default:
	             listAdmin(request,response); // Default: List all admins
	             break;
	     }

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		switch(action) {
		case "insert":
            insertAdmin(request,response); // Insert new admin
            break;
		 case "update":
             updateAdmin(request,response); // Update admin details
             break; 
		}
	}

	private void listAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Admin> admins = AdminDBUtil.getDetails();
		request.setAttribute("adminsD",admins);
		
		request.getRequestDispatcher("Dashboard/adminDash.jsp").forward(request,response);
	}
	
	private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("Dashboard/addAdmin.jsp").forward(request, response);
    }
	
	private void insertAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		String level = request.getParameter("lev");
		String permission = request.getParameter("per");
		
		boolean isTrue = AdminDBUtil.insertNew(un, email, password, level, permission);
		
		if(isTrue == true) {
			request.getRequestDispatcher("Dashboard/adminDash.jsp").forward(request, response);
		}
	}
	
	private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String em = request.getParameter("email");
		Admin  exAd = AdminDBUtil.getAdminByEmail(em);
		request.setAttribute("admin", exAd);
		
		request.getRequestDispatcher("Dashboard/upAdmin.jsp").forward(request, response);
	}
	
	private void updateAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		String level = request.getParameter("lev");
		String permission = request.getParameter("per");
		
		boolean isTrue = AdminDBUtil.updateAd(un, email, password, level, permission);
		
		if(isTrue == true) {
			request.getRequestDispatcher("Dashboard/adminDash.jsp").forward(request, response);
		}
	}
	
	private void deleteAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		
		AdminDBUtil.deleteAdmin(email);
		
		response.sendRedirect("AdminServ?action=list");
	}
}