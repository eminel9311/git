package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UsersDAO;

/**
 * Servlet implementation class checkUsernameServlet
 */
@WebServlet("/checkUsernameServlet")
public class checkUsernameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	UsersDAO usersDao = new UsersDAO();
       
   
    public checkUsernameServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(usersDao.checkUsername(request.getParameter("username"))){
			response.getWriter().write("<img src=\"img/not-available.png\" /> ");
		}else{
			response.getWriter().write("<img src=\"img/available.png\" />");
		}
	}

}
