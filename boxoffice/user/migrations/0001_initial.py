# Generated by Django 2.0.3 on 2020-03-03 12:02

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('auth', '0009_alter_user_last_name_max_length'),
    ]

    operations = [
        migrations.CreateModel(
            name='Customer',
            fields=[
                ('group_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='auth.Group')),
            ],
            options={
                'verbose_name_plural': 'Families',
                'ordering': ['name'],
            },
            bases=('auth.group',),
        ),
    ]
