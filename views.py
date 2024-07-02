from django.shortcuts import render, redirect
from .models import AthleteModel
from .models import AthleteFormModel
from .models import AthleteHealthReport
from app_federation.models import FederationForm
from django.contrib import messages


# Create your views here.
def home(request):
    return render(request, 'athlete.html')


def register_athlete(request):
    if request.method == 'POST':
        username = request.POST['username']
        email = request.POST['email']
        phone = request.POST['mobile']
        password = request.POST['password1']
        repeat_password = request.POST['password2']
        if password == repeat_password:
            AthleteModel(name=username, mail=email, phone=phone,
                         password=password).save()
            messages.success(request, 'Athlete successfully Registered')
            return redirect('/login_athlete/')
        else:
            messages.error(request, 'Passwords should be same')
    return render(request, 'sign/athlete/athlete_sign.html')


def login_athlete(request):
    if request.method == 'POST':
        email = request.POST['email']
        password = request.POST['password1']
        try:
            athlete_object = AthleteModel.objects.get(mail=email, password=password)
            request.session['athlete'] = athlete_object.mail
            messages.success(request, "Athlete Login Success")
            return redirect('/athletes/')
        except:
            messages.error(request, "Given details not found")
            return redirect('/login_athlete/')
    return render(request, 'sign/athlete/athlete_sign.html')


def logout_athlete(request):
    if 'athlete' in request.session:
        request.session.pop('athlete', None)
        messages.success(request, "Athlete Logout Success")
        return redirect('/')
    else:
        return redirect('/athletes/')


def athlete_form(request):
    return render(request, 'athlete_form.html')


def athlete_form_fill(request):
    if 'athlete' in request.session:
        if request.method == 'POST':
            username = request.POST['username']
            email = request.POST['email']
            phone = request.POST['mobile']
            gender = request.POST['gender']
            age = request.POST['age']
            grade = request.POST['grade']
            legend = request.POST['legend']
            federation = request.POST['federation_name']
            physically_challenged = request.POST['physically_challenged']
            medical_illness = request.POST['medical_illness']
            address = request.POST['address']
            AthleteFormModel(name=username, mail=email, phone=phone, gender=gender,
                             age=age, grade=grade, federation=federation, federationName=legend,
                             physically_challenged=physically_challenged,
                             medical_illness=medical_illness, address=address).save()
            messages.success(request, 'Athlete Form successfully Registered')
            return redirect('/athletes/')
        return render(request, 'athlete_form.html')


def athlete_health(request):
    athlete_health_object = AthleteFormModel.objects.filter(allow=True)
    return render(request, 'athlete_health.html', {'athlete_health_object': athlete_health_object})


def athlete_health_report(request):
    return render(request, 'athlete_health.html')


def upload_athlete(request, id):
    athlete_health_object = AthleteFormModel.objects.get(id=id)
    athlete_health_object.send = True
    athlete_health_object.tolab = True
    athlete_health_object.save()
    messages.success(request, 'Athlete Details Sent to Lab')
    return redirect('/athletes/')


def athlete_health_form(request):
    # athlete_health_object = AthleteFormModel.objects.all()
    # if request.method == 'POST':
    #     athlete_health_object.name =
    return render(request, 'athlete_health_form.html')


def health_report_data(request):
    if request.method == 'POST':
        name = request.POST['name']
        mail = request.POST['mail']
        age = request.POST['age']
        sex = request.POST['sex']
        cp = request.POST['cp']
        trestbps = request.POST['trestbps']
        chol = request.POST['chol']
        fbs = request.POST['fbs']
        restecg = request.POST['restecg']
        thalach = request.POST['thalach']
        exang = request.POST['exang']
        oldpeak = request.POST['oldpeak']
        slope = request.POST['slope']
        ca = request.POST['ca']
        thal = request.POST['thal']
        AthleteHealthReport(name=name, mail=mail, age=age, sex=sex, cp=cp, trestbps=trestbps,
                            chol=chol, fbs=fbs, restecg=restecg, thalach=thalach,
                            exang=exang, oldpeak=oldpeak, slope=slope, ca=ca, thal=thal).save()
        messages.success(request, 'Athlete Data Successfully Registered')
        return redirect('/athletes/')
    return render(request, 'athlete_health_form.html')


