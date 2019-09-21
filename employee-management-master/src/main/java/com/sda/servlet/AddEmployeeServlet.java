package com.sda.servlet;

import com.sda.dao.EmployeeDao;
import com.sda.model.Employee;
import com.sda.model.User;
import com.sda.service.EmployeeService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(value = "/add_employee")
public class AddEmployeeServlet extends HttpServlet {
    private EmployeeService employeeService = new EmployeeService();

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) {

        Employee employee = new Employee(request.getParameter("name"), request.getParameter("role"));
        employeeService.createEmployee(employee);


        try {
            response.sendRedirect("employees.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }


    }
}
