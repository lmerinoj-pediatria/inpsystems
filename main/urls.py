from django.urls import include,path
from django.contrib.auth import views as auth_views
from .views import Home,HomeSinPermiso

urlpatterns = [   
    path('', Home.as_view(),name='home'),
    path('login/', auth_views.LoginView.as_view(template_name='login.html'),name='login'),
    path('logout/', auth_views.LogoutView.as_view(template_name='login.html'),name='logout'),
    path('sinpermiso/', HomeSinPermiso.as_view(),name='sinpermiso'),
]
