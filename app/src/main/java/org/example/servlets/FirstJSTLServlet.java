package org.example.servlets;

import org.example.bean.Department;
import org.example.utils.DBUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/")
public class FirstJSTLServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Department> departmentList = DBUtils.queryDepartments();
        req.setAttribute("departments", departmentList);
        req.getRequestDispatcher("/example_11").forward(req, resp);
    }
}
