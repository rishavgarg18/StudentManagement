

function submitfun(){


                
                var request = new XMLHttpRequest();
                var url = "http://127.0.0.1:8000/student/addstudent/";
                request.open("POST", url, true);
                request.setRequestHeader("Content-Type", "application/json");
                request.onreadystatechange = function () {
                    if (request.readyState === 4 && request.status === 200) {
                        var jsonData = JSON.parse(request.response);
                        console.log(jsonData);
                        if(jsonData=="success")
                        {
                             window.location.href="success.html";
                        }
                    }
                };
                var first_name =  document.getElementById("first_name").value;
                var last_name = document.getElementById("last_name").value;
                var roll_no = document.getElementById("roll_no").value;
                var father_name = document.getElementById("father_name").value;
                var email = document.getElementById("email").value;
                var section = document.getElementById("section").value;
                var branch = document.getElementById("branch").value;
                var phone_no = document.getElementById("phone_no").value;
                console.log(first_name);


                var data = JSON.stringify({"first_name": first_name, "last_name": last_name, "roll_no": roll_no, "father_name": father_name, "email": email, "section": section, "branch": branch, "phone_no": phone_no});
                console.log(data);

                request.send(data);

            };  

