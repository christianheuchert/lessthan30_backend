# Generated by Django 3.0 on 2022-05-24 23:52

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0005_auto_20220524_2347'),
    ]

    operations = [
        migrations.AddField(
            model_name='poem',
            name='date',
            field=models.DateField(default=datetime.date.today, verbose_name='Date'),
        ),
    ]