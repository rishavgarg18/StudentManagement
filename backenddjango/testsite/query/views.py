from django.shortcuts import render
from .models import Query
from django.http import JsonResponse
import json


def AddQuery(request,id):
    if request.method=="POST":
        print(json.loads(request.body))
        data=json.loads(request.body)
        query=data['query']
        print(id)
        savedata=Query(query=query,student_id=id)
        savedata.save()
        return JsonResponse("success",safe=False)


def StudentViewQuery(request,id):
    if request.method=="GET":
        queries = Query.objects.filter(student_id=id).values()
        return JsonResponse( list(queries),safe=False)


def TeacherViewQuery(request):
    if request.method=="GET":
         thislist=[]
         for p in Query.objects.raw("SELECT * FROM query_query INNER JOIN studentdetails_studentdetail ON query_query.student_id=studentdetails_studentdetail.id"):
             thislist.append({"id":p.id,"user_name":p.user_name,"query":p.query,"date":p.date,"roll_no":p.roll_no,"email":p.email,"phone_no":p.phone_no,"status":p.status,"answer":p.answer}) 
         return JsonResponse( thislist,safe=False)
   

def AnswerQuery(request,id):
    if request.method=="POST":
        data=json.loads(request.body)
        answer=data['answer']
        savedata=Query.objects.filter(id=id).update(answer=answer,status="DONE")
        return JsonResponse("success",safe=False)


