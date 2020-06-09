from django.shortcuts import render
from .models import StudentDetail
from login.models import Users
from django.http import JsonResponse,HttpResponse
from django.views.decorators.csrf import csrf_exempt
import json

def StudentView(request):
    if request.method=="GET":
        queryset = StudentDetail.objects.filter(status="Active").values()
        return JsonResponse( list(queryset),safe=False)

def AddStudent(request):
    if request.method=="POST":
        
        print(json.loads(request.body))
        data=json.loads(request.body)
        user_name=data['first_name']+"."+data['roll_no']
        password=data['first_name']
        first_name=data['first_name']
        last_name=data['last_name']
        roll_no=data['roll_no']
        father_name=data['father_name']
        email=data['email']
        section=data['section']
        branch=data['branch']
        phone_no=data['phone_no']
        savedata=StudentDetail(user_name=user_name,password=password,first_name=first_name,last_name=last_name,roll_no=roll_no,father_name=father_name,email=email,section=section,branch=branch,phone_no=phone_no)
        savedata.save()
        user=Users(username=user_name,password=password,id_type="student")
        user.save()
        return JsonResponse("success",safe=False)

def DeleteStudent(request,pk):
    if request.method=="DELETE":

         instance = StudentDetail.objects.filter(id=pk).update(status="Deactive")
         return  JsonResponse("Succesfully Deactivated",safe=False)


def StudentOne(request,id):
     if request.method=="GET":
        
        details = StudentDetail.objects.filter(id=id).values()
        return JsonResponse( list(details),safe=False)



def EditStudent(request,id):
    if request.method=="POST":
        
        print(json.loads(request.body))
        data=json.loads(request.body)
        user_name=data['first_name']+"."+data['roll_no']
        password=data['first_name']
        first_name=data['first_name']
        last_name=data['last_name']
        roll_no=data['roll_no']
        father_name=data['father_name']
        email=data['email']
        section=data['section']
        branch=data['branch']
        phone_no=data['phone_no']
        savedata=StudentDetail.objects.filter(id=id).update(user_name=user_name,password=password,first_name=first_name,last_name=last_name,roll_no=roll_no,father_name=father_name,email=email,section=section,branch=branch,phone_no=phone_no)
        return JsonResponse("success",safe=False)
        

