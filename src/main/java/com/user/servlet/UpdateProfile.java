package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserImp;
import com.DB.DBconnect;
import com.entity.User;
@WebServlet("/update_profile")
@MultipartConfig
/**
 * Servlet implementation class UpdateProfile
 */
public class UpdateProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(request.getParameter("id"));
			String name=request.getParameter("fname");
			String email=request.getParameter("femail");
			String password=request.getParameter("fpassword");
			String phone_no=request.getParameter("fphone");
			User user=new User();
			user.setId(id);
			user.setName(name);
			user.setEmail(email);
			user.setPhone_no(phone_no);
			UserImp imp= new UserImp(DBconnect.getConnection());
			boolean f=imp.checkPassword(id, password);
			HttpSession session= request.getSession();
			if(f) {
				boolean f2= imp.updateProfile(user);
				if(f2) {
					session.setAttribute("successMsg", "Profile Edited successfully");
					response.sendRedirect("EditProfile.jsp");
				}
				else {
					session.setAttribute("failedMsg", "Something wrong");
					response.sendRedirect("EditProfile.jsp");
				}
			}
			else {
				session.setAttribute("failedMsg", "Your password is incorrect");
				response.sendRedirect("EditProfile.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

}
}
