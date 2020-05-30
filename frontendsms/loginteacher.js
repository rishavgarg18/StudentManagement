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
                id_type: "teacher"
                
            }),
            
            success: function(data)
            {
            	
                
                if (data === 'success') {
                    sessionStorage.setItem("login","success");
                var user=$("#username").val();   
                    
                    window.location.href="teacherhome.html?username=" + user ;
                }
                else {
                    sessionStorage.setItem("login","failed");
                    alert(data);
                }
            }
        });
      
        return false; 
    });

});