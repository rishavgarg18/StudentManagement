from .views import StudentView,AddStudent,DeleteStudent,StudentOne,EditStudent
from django.urls import path


urlpatterns = [
    
    path('student/',StudentView),
    path('student/addstudent/',AddStudent),
    path('student/delete/<int:pk>/',DeleteStudent),
    path('student/<int:id>/',StudentOne),
    path('student/editstudent/<int:id>/',EditStudent),
]
