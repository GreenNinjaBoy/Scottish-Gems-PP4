# Generated by Django 4.2.9 on 2024-02-25 20:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('scottish_gems', '0012_post_region'),
    ]

    operations = [
        migrations.AlterField(
            model_name='post',
            name='slug',
            field=models.SlugField(max_length=300, unique=True),
        ),
        migrations.AlterField(
            model_name='post',
            name='title',
            field=models.CharField(max_length=300, unique=True),
        ),
    ]
