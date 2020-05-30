from .views import AddQuery,StudentViewQuery,TeacherViewQuery,AnswerQuery
from django.urls import path


urlpatterns = [
    
    path('student/addquery/<int:id>/',AddQuery),
    path('student/viewquery/<int:id>/',StudentViewQuery),
    path('teacher/viewquery/',TeacherViewQuery),
    path('teacher/viewquery/<int:id>/',AnswerQuery),
    
]
