# Generated by Django 2.2.3 on 2020-06-17 12:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('theatre', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='theatre',
            name='image',
            field=models.ImageField(blank=True, null=True, upload_to='media'),
        ),
    ]