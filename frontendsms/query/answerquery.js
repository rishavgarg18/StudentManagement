var id=sessionStorage.getItem("idquery");
function submitfun(){


                
                var request = new XMLHttpRequest();
                var url = "http://127.0.0.1:8000/teacher/viewquery/"+id+"/";
                request.open("POST", url, true);
                request.setRequestHeader("Content-Type", "application/json");
                request.onreadystatechange = function () {
                    if (request.readyState === 4 && request.status === 200) {
                        var jsonData = JSON.parse(request.response);
                        console.log(jsonData);
                        if(jsonData=="success")
                        {
                             window.location.href="index.html";
                        }
                    }
                };
                var answer =  document.getElementById("answer").value;
               


                var data = JSON.stringify({"answer": answer});
                console.log(data);

                request.send(data);

            };  