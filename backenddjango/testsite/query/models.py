from django.db import models
from studentdetails.models import StudentDetail

class Query(models.Model):
    student=models.ForeignKey(StudentDetail,null=True,on_delete=models.SET_NULL)
    query=models.CharField(max_length=500)
    status=models.CharField(max_length=100,default="PENDING")
    date=models.DateTimeField(auto_now_add=True)
    answer=models.CharField(max_length=1000,null=True)



