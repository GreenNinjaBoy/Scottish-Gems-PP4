# Generated by Django 4.2.9 on 2024-03-22 21:04

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('scottish_gems', '0003_post_photo_reference'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='post',
            name='latitude',
        ),
        migrations.RemoveField(
            model_name='post',
            name='longitude',
        ),
    ]
