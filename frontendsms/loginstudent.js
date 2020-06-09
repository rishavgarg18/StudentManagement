 
function submitfun(){


                
                var request = new XMLHttpRequest();
                var url = "http://127.0.0.1:8000/login/";
                request.open("POST", url, true);
                request.setRequestHeader("Content-Type", "application/json");
                request.onreadystatechange = function () {
                    if (request.readyState === 4 && request.status === 200) {
                        var jsonData = JSON.parse(request.response);
                        console.log(jsonData);
                        if (jsonData != 'Invalid Credentials') {
                    sessionStorage.setItem("login","success");

                    sessionStorage.setItem("idstudent",jsonData);

                    window.location.href="studenthome.html";
                    
                    
                }
                else {
                    sessionStorage.setItem("login","failed");
                    alert(jsonData);
                }
                    }
                };
                var username =  document.getElementById("username").value;
                var password = document.getElementById("password").value;
                

                var data = JSON.stringify({"Username": username, "Password": password,"id_type": "student"});
                console.log(data);

                request.send(data);

            };  
