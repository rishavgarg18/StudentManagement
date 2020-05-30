from django.db import models

# Create your models here.
class StudentDetail(models.Model):
    user_name=models.CharField(max_length=200)
    password=models.CharField(max_length=200)
    first_name=models.CharField(max_length=200)
    last_name=models.CharField(max_length=200)
    roll_no=models.CharField(max_length=200)
    father_name=models.CharField(max_length=200)
    email=models.EmailField(max_length=100)
    section=models.CharField(max_length=50)
    branch=models.CharField(max_length=200)
    phone_no=models.CharField(max_length=200)
    status=models.CharField(max_length=50,default="Active")



                   



