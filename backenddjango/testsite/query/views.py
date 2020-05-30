from django.shortcuts import render
from .models import Query
from django.http import JsonResponse,HttpResponse
from django.views.decorators.csrf import csrf_exempt
import json

@csrf_exempt
def AddQuery(request,id):
    if request.method=="POST":
        print(json.loads(request.body))
        data=json.loads(request.body)
        query=data['query']
        print(id)
        savedata=Query(query=query,student_id=id)
        savedata.save()
        return JsonResponse("success",safe=False)

@csrf_exempt
def StudentViewQuery(request,id):
    if request.method=="GET":
        queries = Query.objects.filter(student_id=id).values()
        return JsonResponse( list(queries),safe=False)

@csrf_exempt
def TeacherViewQuery(request):
    if request.method=="GET":
         queries = Query.objects.all().values()
         return JsonResponse( list(queries),safe=False)
   
@csrf_exempt
def AnswerQuery(request,id):
    if request.method=="POST":
        data=json.loads(request.body)
        answer=data['answer']
        savedata=Query.objects.filter(id=id).update(answer=answer,status="DONE")
        return JsonResponse("success",safe=False)


