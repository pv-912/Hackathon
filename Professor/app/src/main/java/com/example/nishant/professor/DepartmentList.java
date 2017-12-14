package com.example.nishant.professor;

/**
 * Created by nishant on 12/12/17.
 */

public class DepartmentList {

    String department_name;

    public DepartmentList(){

    }
    public DepartmentList(String department_name){
        this.department_name=department_name;
    }
    public void setDepartment_name( String department_name){this.department_name=department_name;}

    public String getDepartment_name(){
        return department_name;
    }

}
