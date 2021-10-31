package org.example.bean;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@NoArgsConstructor
@Data
public class Employee {
    private int empNum;
    private String empName;
    private String job;
    private Date hireDate;
    private float salary;

    private static final DateFormat df = new SimpleDateFormat("MM/dd/yyyy");

    public Employee(int empNum, String empName, String job, String hireDateStr, float salary)  {
        this.empNum = empNum;
        this.empName = empName;
        this.job = job;
        this.salary = salary;
        try {
            this.hireDate = df.parse(hireDateStr);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }


    }
}
