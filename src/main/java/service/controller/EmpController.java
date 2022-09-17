package service.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.EmpDeptDAO;
import model.domain.entity.Emp;


@WebServlet("/page/emp")
public class EmpController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String command = request.getParameter("command");
		
		if(command != null) {
			EmpDeptDAO dao = EmpDeptDAO.getInstance();
			
			if(command.equals("empone")) {
				String empno = request.getParameter("search");
				
				if(empno != null && empno.length() != 0) {  // ""
					try {
						Emp emp = dao.findEmp(Integer.parseInt(empno));
						request.setAttribute("one", emp);
						request.getRequestDispatcher("../jsp/empview.jsp").forward(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
		
			}else if(command.equals("all")) {
				try {
					List<Emp> all = dao.findElementAll();
					request.setAttribute("allEmp", all);
					request.getRequestDispatcher("../jsp/empall.jsp").forward(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}				
			}else { 
			}
		}else {
		}		
	}

}
