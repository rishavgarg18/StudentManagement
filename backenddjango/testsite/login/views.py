from django.shortcuts import render
from django.http import HttpResponse,JsonResponse
import json
from .models import Users
from django.views.decorators.csrf import csrf_exempt
from studentdetails.models import StudentDetail



def login(request):
	if request.method=='POST':
		data=json.loads(request.body)
		username=data['Username']
		password=data['Password']
		id_type=data['id_type']
		user=Users.objects.filter(username=username,password=password,id_type=id_type)

		if user.count() == 1:
			if (id_type=='teacher'):

				return JsonResponse("success",safe=False)
			else:
			    idnumber=list(StudentDetail.objects.filter(user_name=username).values())
			    
			    id=idnumber[0]['id']
			    id=str(id)
			    return JsonResponse(id,safe=False)
		else:
			return JsonResponse("Invalid Credentials",safe=False)
		
		
