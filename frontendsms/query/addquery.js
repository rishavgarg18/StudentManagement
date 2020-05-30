var id=sessionStorage.getItem("idstudent");
function submitfun(){


                
                var request = new XMLHttpRequest();
                var url = "http://127.0.0.1:8000/student/addquery/"+id+"/";
                request.open("POST", url, true);
                request.setRequestHeader("Content-Type", "application/json");
                request.onreadystatechange = function () {
                    if (request.readyState === 4 && request.status === 200) {
                        var jsonData = JSON.parse(request.response);
                        console.log(jsonData);
                        if(jsonData=="success")
                        {
                             window.location.href="/../sms/studenthome.html";
                        }
                    }
                };
                var query =  document.getElementById("query").value;
               


                var data = JSON.stringify({"query": query});
                console.log(data);

                request.send(data);

            };  