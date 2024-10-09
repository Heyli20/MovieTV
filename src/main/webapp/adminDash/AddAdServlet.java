package adminDash;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddAdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("pass");
		
		boolean isTrue = AdminDBUtil.insertAdmin(un, email, password);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("adminDash.jsp");
			dis.forward(request,response);
		}
		else {
			RequestDispatcher dis=request.getRequestDispatcher("addAdmin.jsp");
			dis.forward(request, response);
		}
	}

}
