function validate(event){
	
	const email=document.getElementById("email").value;
	const password=document.getElementById("password").value;
	
    const email_error=document.getElementById("email_error");
    const password_error= document.getElementById("password_error");
    
    
   let error=false;
    if(email==="")
    {
		email_error.innerHTML="email is requried"
		error=true
	}
	else{
		email_error.innerHTML=""
	}
	if(password==="")
    {
		password_error.innerHTML="password is requried"
		error=true
	}
	else{
		password_error.innerHTML=""
		
	}
	 if(error)
    {
        event.preventDefault();
    }
	
	
	
	
}