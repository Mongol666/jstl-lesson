package org.example.bean;

import lombok.*;

import java.util.HashSet;
import java.util.Set;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Department {
    private int deptNum;
    private String deptName;
    private String location;

    private Set<Employee> employees;

    public void addEmployee(Employee employee) {
        if (this.employees == null) {
            this.employees = new HashSet<>();
        }
        this.employees.add(employee);
    }

    public Department withDeptNum(int deptNum) {
        this.setDeptNum(deptNum);
        return this;
    }

    public Department withDeptName(String name) {
        this.setDeptName(name);
        return this;
    }

    public Department withLocation(String location) {
        this.setLocation(location);
        return this;
    }

    @Override
    public String toString() {
        return deptName;
    }
}
