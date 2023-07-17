package com.todolist.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.todolist.entities.Todos;
import com.todolist.entities.UserCheck;
import com.todolist.entities.UserSignup;

@Repository
public class tododao {
	
	@Autowired
	JdbcTemplate jdbctemplate;



	public int addTodo(Todos todo, String email) {
		String str="insert into todoitems(date,title,description,priority,email) values(?,?,?,?,?) ";
		return jdbctemplate.update(str,todo.getDate(),todo.getTitle(),todo.getDesc(),todo.getPriority(),email);
	}
		public List<UserSignup> getAlluser(UserSignup u)
		{
			
			String str="select * from signup where email=? ";
		return jdbctemplate.query(str,new RowMapper<UserSignup>() {

			public UserSignup mapRow(ResultSet rs, int rowNum) throws SQLException {
				UserSignup us=new UserSignup();
				
				 us.setEmail(rs.getString(3));
				return us;
			}
			
		},u.getEmail());
			
		}
		public List<UserSignup> getuseremail(UserCheck u)
		{
			
			String str="select * from signup where email=? ";
		return jdbctemplate.query(str,new RowMapper<UserSignup>() {

			public UserSignup mapRow(ResultSet rs, int rowNum) throws SQLException {
				UserSignup us=new UserSignup();
				 us.setEmail(rs.getString(3));
				 us.setPassword(rs.getString(5));
				return us;
			}
			
		},u.getEmail());
			
		}
		
		public int Signup(UserSignup u) {
			
			String str2="insert into signup(id,name,email,mobile,password) values(0,?,?,?,?) ";
			return jdbctemplate.update(str2,u.getName(),u.getEmail(),u.getMobile(),u.getPassword());
		}
		
		public UserSignup SigninCheck(UserCheck u1) {
			
			String str="select * from signup where email=? and password=?";
			
			return jdbctemplate.queryForObject(str,new RowMapper<UserSignup>() {

				public UserSignup mapRow(ResultSet rs, int rowNum) throws SQLException {
					UserSignup us=new UserSignup();
					us.setName(rs.getString(2));
					 us.setEmail(rs.getString(3));
					 us.setMobile(rs.getString(4));
					us.setPassword(rs.getString(5));
					
					return us;
				}
				
			},u1.getEmail(),u1.getPassword());
		}
		
		//showTodos
		
		public List<Todos> ShowTodos(String email){
			String str="select * from todoitems where email=?";
			return jdbctemplate.query(str,new RowMapper<Todos>() {

				public Todos mapRow(ResultSet rs, int rowNum) throws SQLException {
					Todos to=new Todos();
					to.setId(rs.getInt(1));
					to.setTitle(rs.getString(3));
					to.setDate(rs.getString(2));
					to.setDesc(rs.getString(4));
					to.setPriority(rs.getString(5));
					return to;
				}
				},email);
		}
		
		public int DeleteTodo(int todoid) {
			
			String Str="delete from todoitems where id=?";
			return jdbctemplate.update(Str,todoid);
		}
		
		
		public Todos UpdateTodo(int todoid) {
			String Str="select * from todoitems where id=? ";
			return jdbctemplate.queryForObject(Str,new RowMapper<Todos>() {
				public Todos mapRow(ResultSet rs, int rowNum) throws SQLException {
					Todos to=new Todos();
					to.setId(rs.getInt(1));
					to.setTitle(rs.getString(3));
					to.setDate(rs.getString(2));
					to.setDesc(rs.getString(4));
					to.setPriority(rs.getString(5));
					return to;
				}
				},todoid);	
		}
		public int UpdateDone(Todos todo ) {

			String str="update todoitems set date=?,title=?,description=?,priority=? where id=? ";
			return jdbctemplate.update(str,todo.getDate(),todo.getTitle(),todo.getDesc(),todo.getPriority(),todo.getId());
	
		}
		public UserSignup getUserdetailes(String email) {
			
			String str="select * from signup where email=? ";
			
			return jdbctemplate.queryForObject(str,new RowMapper<UserSignup>() {

				public UserSignup mapRow(ResultSet rs, int rowNum) throws SQLException {
					UserSignup us=new UserSignup();
					us.setName(rs.getString(2));
					 us.setEmail(rs.getString(3));
					 us.setMobile(rs.getString(4));
					us.setPassword(rs.getString(5));
					
					return us;
				}
				
			},email);
		}
			
	}

