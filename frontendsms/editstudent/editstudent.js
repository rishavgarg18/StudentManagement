var idedit=sessionStorage.getItem("idedit");
console.log(idedit);

function autofill(){
      



        
var xmlhttp, myObj;

xmlhttp = new XMLHttpRequest();
xmlhttp.onreadystatechange = function() {
  if (this.readyState == 4 && this.status == 200) {
    myObj = JSON.parse(this.responseText);
    var list = myObj;
    console.log(list);
    document.getElementById("first_name").value=list[0].first_name;
    document.getElementById("last_name").value=list[0].last_name;
    document.getElementById("roll_no").value=list[0].roll_no;
    document.getElementById("father_name").value=list[0].father_name;
    document.getElementById("email").value=list[0].email;
    document.getElementById("section").value=list[0].section;
    document.getElementById("branch").value=list[0].branch;
    document.getElementById("phone_no").value=list[0].phone_no;
    
   

    
    
  

            
              
           
        }

};
xmlhttp.open("GET", "http://127.0.0.1:8000/student/"+idedit+"/", true);
xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
xmlhttp.send();
}
    

function submitfun(){


                
                var request = new XMLHttpRequest();
                var url = "http://127.0.0.1:8000/student/editstudent/"+idedit+"/";
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

autofill();
