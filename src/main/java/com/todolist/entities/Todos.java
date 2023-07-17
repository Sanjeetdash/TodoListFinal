package com.todolist.entities;


public class Todos {
	private int id;
	private String title;
	private String priority;
	private String desc;
	private String date;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority = priority;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	@Override
	public String toString() {
		return "Todos [title=" + title + ", priority=" + priority + ", desc=" + desc + ", date=" + date + "]";
	}
	
	
	
}