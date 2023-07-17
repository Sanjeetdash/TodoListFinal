package com.todolist.controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.todolist.dao.tododao;
import com.todolist.entities.Todos;
import com.todolist.entities.UserCheck;
import com.todolist.entities.UserSignup;

@Controller
public class Todocontroller {
	@Autowired
	JdbcTemplate jdbctemplate;
	
	@Autowired
	tododao tdao;
	
	@RequestMapping("/home")
	public String Show() {
		return "home";
	}
	
	@RequestMapping("/signup")
	public String signupform() {
		return "signup";
	}
	@RequestMapping("/login")
	public String loginform() {
		return "signin";
	}
	
	
	@RequestMapping("/todoadd")
	public String Todoadd() {
		return "Todo";
	}
	
	//Registration of a user
	@RequestMapping(path="/registration" ,method=RequestMethod.POST)
	public String Registration(@ModelAttribute UserSignup u,Model m) {
		List<UserSignup> usr=tdao.getAlluser(u);
		if(usr.isEmpty())
		{
			tdao.Signup(u);
			m.addAttribute("status","success");
			return "signup";
		}
		else {	
			m.addAttribute("status","failed");
			return"signup";
		}	
	}
	
	
	
	//sign in
	@RequestMapping(path="/signin" ,method=RequestMethod.POST)
	public String Signincheck(@ModelAttribute UserCheck u1 ,HttpServletRequest request,Model m ) {
		
		String uce=u1.getEmail();
		String ucp=u1.getPassword();
		List<UserSignup> users=tdao.getuseremail(u1);
		System.out.println(users);
	
		String use=users.get(0).getEmail();
	

		if(uce.equals(users.get(0).getEmail())&& ucp.equals(users.get(0).getPassword()))
		{
			 HttpSession session = request.getSession();
			 session.setAttribute("email",use);
			return "redirect:/showtodos";
		}
//		else if(users.isEmpty())
//		{
//			m.addAttribute("status","error");
//		return "signin";
//			
//		}
		else  {
			
			m.addAttribute("status","error");
		return "signin";
		}
		
	}
	
	
	//Adding todo
	@RequestMapping(path="/todoinsert" ,method=RequestMethod.POST)
	public String TodoInsert(@ModelAttribute Todos todo,HttpServletRequest request ,Model m) {
		System.out.println(todo);
		HttpSession session = request.getSession();
		String n = (String)session.getAttribute("email");
		
		System.out.println("email"+n);
		int res = tdao.addTodo(todo, n);
		System.out.println(res);
		return "redirect:/showtodos";
	}
	
	//ShowTodos
	@RequestMapping(path="/showtodos")
	public String ViewData(Model m,HttpServletRequest request) {
		
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		UserSignup u=tdao.getUserdetailes(email);
		List<Todos> alltodo=tdao.ShowTodos(email);
	m.addAttribute("Alltododata",alltodo);
	m.addAttribute("name", u.getName());
	return "viewtodo";
}
	
	//Signout
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		
		HttpSession session=request.getSession();
		session.removeAttribute("email");
	
		
		return "redirect:/login";
	}
	
	
	//delete one todo
	@RequestMapping(path="/tododelete/{todoid}",method=RequestMethod.GET)
	public String tododelete(@PathVariable int todoid) {
		int res=tdao.DeleteTodo(todoid);
		System.out.println(res);
		return"redirect:/showtodos";
		
	}
	
	
	//get todo that has to be updated
	@RequestMapping(path="/todoupdate/{todoid}",method=RequestMethod.GET)
	public String todoupdate(@PathVariable int todoid,Model m) {
		
	
		Todos  res=tdao.UpdateTodo(todoid);
		
		m.addAttribute("updatedata",res);
		System.out.println(res);
		return"edititodo";	
	}
	
	//update todos
	
	@RequestMapping(path="todoupdate/updatetodo" ,method=RequestMethod.POST)
	public String updatetodo(@ModelAttribute Todos todo ) {
		System.out.println(todo);
		int res=tdao.UpdateDone(todo);
		System.out.println(res);
		return"redirect:/showtodos";
	}

}
