package org.example.utils;

import org.example.bean.Department;
import org.example.bean.Employee;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class DBUtils {

    private static final List<Department> DEPARTMENTS = new ArrayList<>();

    static {
        initData();
    }

    // Симуляция данных в Database.
    private static void initData() {

        Department accountingDepartment = new Department()
                .withDeptNum(10)
                .withDeptName("ACCOUNTING")
                .withLocation("NEW YORK");
        accountingDepartment.addEmployee(new Employee(7782, "CLARK", "MANAGER", "6/9/1981", 2450.00f));
        accountingDepartment.addEmployee(new Employee(7839, "KING", "PRESIDENT", "11/17/1981", 5000.00f));
        accountingDepartment.addEmployee(new Employee(7934, "MILLER", "CLERK", "6/9/1981", 1300.00f));


        Department reseachDept = new Department()
                .withDeptNum(20)
                .withDeptName("RESEARCH")
                .withLocation("DALLAS");
        reseachDept.addEmployee(new Employee(7369, "SMITH", "CLERK", "12/17/1980", 800.00f));
        reseachDept.addEmployee(new Employee(7788, "SCOTT", "ANALYST", "4/19/1987", 3000.00f));
        reseachDept.addEmployee(new Employee(7876, "ADAMS", "CLERK", "5/23/1987", 1100.00f));
        reseachDept.addEmployee(new Employee(7876, "FORD", "ANALYST", "12/3/1981", 3000.00f));
        reseachDept.addEmployee(new Employee(7566, "JONES", "MANAGER", "4/2/1981", 2975.00f));

        Department salesDept = new Department()
                .withDeptNum(30)
                .withDeptName("SALES")
                .withLocation("CHICAGO");
        salesDept.addEmployee(new Employee(7654, "MARTIN", "SALESMAN", "9/28/1981", 1250.00f));
        salesDept.addEmployee(new Employee(7499, "ALLEN", "SALESMAN", "2/20/1981", 1600.00f));
        salesDept.addEmployee(new Employee(7521, "WARD", "SALESMAN", "2/22/1981", 1250.00f));
        salesDept.addEmployee(new Employee(7844, "TURNER", "SALESMAN", "9/8/1981", 1500.00f));
        salesDept.addEmployee(new Employee(7900, "JAMES", "CLERK", "12/3/1981", 950.00f));

        Department openrationsDept = new Department()
                .withDeptNum(40)
                .withDeptName("OPERATIONS")
                .withLocation("BOSTON");

        DEPARTMENTS.add(accountingDepartment);
        DEPARTMENTS.add(reseachDept);
        DEPARTMENTS.add(salesDept);
        DEPARTMENTS.add(openrationsDept);
    }

    // Запрос таблицы Department.
    public static List<Department> queryDepartments() {
        return DEPARTMENTS;
    }

    // Запрос таблицы Employee.
    // Получить список сотрудников 1 отдела.
    public static Set<Employee> queryEmployees(int deptNo) {
        for (Department dept : DEPARTMENTS) {
            if (deptNo == dept.getDeptNum()) {
                return dept.getEmployees();
            }
        }
        return null;
    }
}

