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


@WebServlet("/page/dept")
public class DeptController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		EmpDeptDAO dao = EmpDeptDAO.getInstance();
		String command = request.getParameter("command");
		System.out.println(command);
		
		if(command != null) {
			if(command.equals("deptone")) {

			String deptno = request.getParameter("search");
			System.out.println(deptno);
				
				if(deptno != null && deptno.length() != 0) {  // ""
					try {
						Dept dept = dao.findDept(Integer.parseInt(deptno));

						request.setAttribute("one", dept);
						request.getRequestDispatcher("../jsp/deptview.jsp").forward(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
		
			}else if(command.equals("all")) {
				try {
					List<Dept> all = dao.findElementDept();
					request.setAttribute("allDept", all);
					request.getRequestDispatcher("../jsp/deptall.jsp").forward(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}				
			}else { 
			}
		}else {
		}		
	}

}
