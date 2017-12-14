package com.example.nishant.professor;

/**
 * Created by nishant on 12/12/17.
 */

public class ProfessorList {


    String professor_name;
    String professor_status;

    public ProfessorList(){

    }

    public ProfessorList(String professor_name,String professor_status){this.professor_name=professor_name;
    this.professor_status=professor_status;}

    public void setProfessor_name(String professor_name){this.professor_name=professor_name;}
    public String getProfessor_name(){return professor_name;}
    public void setProfessor_status(String professor_status){this.professor_status=professor_status;}
    public String getProfessor_status(){return professor_status;}
}
