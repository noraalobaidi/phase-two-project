package com.nora.project;

public class Teacher {
	private int id;
	private String name;
	private long civilId;
	private int phone;
	
	
	public Teacher(int id, String name, long civilId, int phone) {
		super();
		this.id = id;
		this.name = name;
		this.civilId = civilId;
		this.phone = phone;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getCivilId() {
		return civilId;
	}
	public void setCivilId(long civilId) {
		this.civilId = civilId;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	
	
}


