# Generated by Django 2.2.3 on 2020-03-04 09:00

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('auth', '0011_update_proxy_permissions'),
        ('user', '0002_auto_20200304_1125'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Customer',
        ),
        migrations.CreateModel(
            name='Customer',
            fields=[
            ],
            options={
                'proxy': True,
                'indexes': [],
                'constraints': [],
            },
            bases=('auth.user',),
        ),
    ]