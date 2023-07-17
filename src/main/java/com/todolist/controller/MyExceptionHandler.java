package com.todolist.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;


@ControllerAdvice
public class MyExceptionHandler {

	
	//	exceptionHandeling
	
	@ExceptionHandler(value=Exception.class)
	public String ExceptionHandlerGeneric() {
		
		return "errorpage";
	}
	
}
