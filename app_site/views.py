from django.shortcuts import render

# Create your views here.
def home(request):
    return render(request, 'home.html')

def historia(request):
    return render(request, 'historia.html')

def atracoes(request):
    return render(request, 'atracoes.html')