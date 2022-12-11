package com.nora.project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;



public class DBconnection {

	public static final String DB_URLTOCONNECT ="jdbc:mysql://localhost:3306/learneracademy";
	public static final String DB_USERNAME ="root";
	public static final String DB_PASS="";
	static private Connection dbCon;
	static private String qry;
	static private PreparedStatement preparedStatement;
	static private Statement theStatement;
	static private ResultSet resultset;
	static public  ArrayList<Student> students = new ArrayList();
	
	public static void main(String[] args) {
		
		

		try {
			
//			ArrayList<Student> students = new ArrayList();
//			Load the driver
			Class.forName("com.mysql.cj.jdbc.Driver");
//			Try to establish the connection
			dbCon = DriverManager.getConnection(DB_URLTOCONNECT, DB_USERNAME, DB_PASS);
			System.out.println("connected successfully");
			theStatement = dbCon.createStatement();
			students= getAllStudents(students);
			for(Student student:students) {
				System.out.println(student.civilId);
			}
		} catch (ClassNotFoundException e) {
			System.out.println("Can't load the driver : " + e.getMessage());
		}catch(SQLException e) {
			System.out.println("Can't connect, some issues  : " + e.getMessage());
		}
		
	}
	
public	static ArrayList<Student> getAllStudents(ArrayList<Student> students){
//		Write the query
		qry = "select * from student";
		

		try {
			
//			Execute the query
			resultset = theStatement.executeQuery(qry);
			
//			Traverse through the results
			while(resultset.next()) {
				Student student = new Student(resultset.getInt("id"),resultset.getString("name"),
						resultset.getLong("civilId"),resultset.getString("grade"),resultset.getString("section")
						);
				students.add(student);
				
			}
		
			
		} catch (SQLException e) {
			System.out.println("Issues : " + e.getMessage());
		}
		
		return students;
	}
}


