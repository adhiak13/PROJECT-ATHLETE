from django.urls import path
from . import views


urlpatterns = [
    path('athletes/', views.home),
    path('login_athlete/', views.login_athlete),
    path('register_athlete/', views.register_athlete),
    path('logout_athlete/', views.logout_athlete),
    path('athlete_form/', views.athlete_form),
    path('athlete_form_fill/', views.athlete_form_fill),
    path('athlete_health/', views.athlete_health),
    path('athlete_health_report/', views.athlete_health_report),
    path('upload_athlete/<int:id>/', views.upload_athlete),
    path('athlete_health_form/', views.athlete_health_form),
    path('health_report_data/', views.health_report_data),
]
