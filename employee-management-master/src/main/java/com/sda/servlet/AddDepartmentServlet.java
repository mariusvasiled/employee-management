package com.sda.servlet;

import com.sda.dao.DepartmentDao;
import com.sda.model.Department;
import com.sda.model.Employee;
import com.sda.service.DepartmentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/add_department")
public class AddDepartmentServlet extends HttpServlet {

    private DepartmentService departmentService = new DepartmentService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Department department = new Department(request.getParameter("name"));
        departmentService.createDepartment(department);

        try {
            response.sendRedirect("departments.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
