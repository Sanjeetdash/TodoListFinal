function validate(e){
	
	
	const priority=document.getElementsByName("priority");

	const priority_error=document.getElementById("priority_error");
	 
	
	
	let error=false;
	if(!priority[0].checked && !priority[1].checked && !priority[2].checked){
		
		
		priority_error.innerHTML="Priority not clicked";
		error=true;
	}
	else{
		priority_error.innerHTML="";
	}
	
	if(error)
    {
        e.preventDefault();
    }
	
}