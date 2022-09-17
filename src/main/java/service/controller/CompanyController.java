package service.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.EmpDeptDAO;
import model.domain.entity.Dept;

@WebServlet("/page/com")
public class CompanyController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		String goTo = "../index.html";

		if (command != null) {
			switch (command) {
				case "projects":
					goTo = "../index.html";
					break;
				case "home":
					goTo = "comview.html";
					break;
				case "dept":
					goTo = "deptview.html";
					break;
				case "emp":
					goTo = "empview.html";
					break;
			}
			try {
				request.getRequestDispatcher(goTo).forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} 
	}
}
