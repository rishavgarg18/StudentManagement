 


 $(document).ready(function() {

    $('#myform').submit(function() {

        $.ajax({
            type: "POST",
            url: 'http://127.0.0.1:8000/login/',
             
        
    contentType: 'application/json; charset=utf-8',
    dataType: 'json',
        	async: false,
            data: JSON.stringify({
                Username: $("#username").val(),
                Password: $("#password").val(),
                id_type: "student"
                
            }),
            
            success: function(data)
            {
            	
                console.log(data);   
                if (data != 'Invalid Credentials') {
                    sessionStorage.setItem("login","success");

                    sessionStorage.setItem("idstudent",data);

                    window.location.href="studenthome.html";
                    
                    
                }
                else {
                    sessionStorage.setItem("login","failed");
                    alert(data);
                }
            }
        });
        //this is mandatory other wise your from will be submitted.
        return false; 
    });

});