# Generated by Django 4.2.9 on 2024-03-22 23:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('scottish_gems', '0005_post_latitude_post_longitude'),
    ]

    operations = [
        migrations.AddField(
            model_name='post',
            name='photo_reference_timestamp',
            field=models.DateTimeField(auto_now=True),
        ),
    ]