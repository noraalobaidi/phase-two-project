package com.nora.project;

public class Schedule {
private int id;
private String class_name;
private String subject_title;
private String teacher_name;


public Schedule(int id, String class_name, String subject_title, String teacher_name) {
	this.id = id;
	this.class_name = class_name;
	this.subject_title = subject_title;
	this.teacher_name = teacher_name;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getClass_name() {
	return class_name;
}
public void setClass_name(String class_name) {
	this.class_name = class_name;
}
public String getSubject_title() {
	return subject_title;
}
public void setSubject_title(String subject_title) {
	this.subject_title = subject_title;
}
public String getTeacher_name() {
	return teacher_name;
}
public void setTeacher_name(String teacher_name) {
	this.teacher_name = teacher_name;
}


}
