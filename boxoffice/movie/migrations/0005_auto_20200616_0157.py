# Generated by Django 2.2.3 on 2020-06-15 20:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('movie', '0004_auto_20200616_0130'),
    ]

    operations = [
        migrations.AlterField(
            model_name='movie',
            name='name',
            field=models.CharField(blank=True, max_length=35, null=True),
        ),
    ]
