from django.db import models


# Create your models here.
class AthleteModel(models.Model):
    name = models.CharField(max_length=500)
    mail = models.EmailField(max_length=500)
    phone = models.PositiveBigIntegerField()
    password = models.CharField(max_length=500)


class AthleteFormModel(models.Model):
    name = models.CharField(max_length=500)
    mail = models.EmailField(max_length=500)
    phone = models.PositiveBigIntegerField()
    gender = models.CharField(max_length=500)
    age = models.IntegerField(null=True)
    grade = models.CharField(max_length=500, null=True)
    federation = models.CharField(max_length=500)
    federationName = models.CharField(max_length=500, null=True)
    physically_challenged = models.CharField(max_length=500, null=True)
    medical_illness = models.CharField(max_length=500, null=True)
    address = models.CharField(max_length=500)
    allow = models.BooleanField(default=False)
    send = models.BooleanField(default=False)
    tolab = models.BooleanField(default=False)


class AthleteHealthReport(models.Model):
    name = models.CharField(max_length=500)
    mail = models.EmailField(max_length=500)
    age = models.IntegerField()
    sex = models.IntegerField()
    cp = models.IntegerField()
    trestbps = models.IntegerField()
    chol = models.IntegerField()
    fbs = models.IntegerField()
    restecg = models.IntegerField()
    thalach = models.IntegerField()
    exang = models.IntegerField()
    oldpeak = models.FloatField()
    slope = models.IntegerField()
    ca = models.IntegerField()
    thal = models.IntegerField()
    target = models.IntegerField(null=True)
    allow = models.BooleanField(default=False)
    send = models.BooleanField(default=False)
    final = models.BooleanField(default=False)
    tores = models.BooleanField(default=False)
