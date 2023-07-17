
function validate(e){
    // alert("Connected...")
    const name=document.getElementById("name").value
    const mobile=document.getElementById("mobile").value
    const email=document.getElementById("email").value
      const password= document.getElementById("password").value
    const password2= document.getElementById("password2").value
    
    
    const name_error=document.getElementById("name_error")
    const mobile_error=document.getElementById("mobile_error")
    const email_error=document.getElementById("email_error")
    const password_error= document.getElementById("password_error")
    const password2_error= document.getElementById("password2_error")
    
    
    let error = false

    if(name==="")
    {
        name_error.innerHTML="Name is required"
        error=true
    }
    else{
        name_error.innerHTML=""
    }

    if(mobile==="")
    {
        mobile_error.innerHTML="Mobile number  required"
        error=true
    }else if(isNaN(mobile) || mobile.length !=10)
    {
        mobile_error.innerHTML="please entered 10 digit valid number"
        error=true
    }
    else{
        mobile_error.innerHTML=""
    }
    
    let atpos =email.indexOf("@")
    let dotpos =email.lastIndexOf(".")
    if(email===""){
        email_error.innerHTML="email requried"
            error=true
        }
    else if(atpos <4 || dotpos - atpos <4 || dotpos===email.length-1)
     {
            email_error.innerHTML="Please enter a valid email id"
            error=true
     }
    
     else{
            email_error.innerHTML=""
        }
        
        
      if(password===""){
        password_error.innerHTML="Password is requried"
        error=true
    }
    else if(!password.match(/[a-z]/))
    {
        password_error.innerHTML="password must contain lower charecter"
        error=true
    }
    
    else if(!password.match(/[A-Z]/))
    {
        password_error.innerHTML="password must contain upper charecter"
        error=true
    }
    else if(!password.match(/[0-9]/))
    {
        password_error.innerHTML="password must contain one number "
        error=true
    }
    else if(!password.match(/[!@#$%^&*]/))
    {
        password_error.innerHTML="password must contain one special charecter"
        error=true
    }
    else if(password.length <6 || password.length >15)
    {
        password_error.innerHTML="must be 6 to 15 charecter long"
      
    }
 

    else{
        password_error.innerHTML=""
    }

    if(password2===""){
        password2_error.innerHTML="Confirm is blank"
        error=true
    }
    else if(password!== password2)
    {
        password2_error.innerHTML="password and confirm password must be same"
        error=true
    }

    else{
        password2_error.innerHTML=""
    }   
        
    if(error)
    {
        e.preventDefault();
    }
    
    }