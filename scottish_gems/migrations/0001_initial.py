# Generated by Django 4.2.9 on 2024-02-27 12:59

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Post',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=300, unique=True)),
                ('address', models.CharField(max_length=200)),
                ('latitude', models.DecimalField(blank=True, decimal_places=6, max_digits=9, null=True)),
                ('longitude', models.DecimalField(blank=True, decimal_places=6, max_digits=9, null=True)),
                ('slug', models.SlugField(max_length=300, unique=True)),
                ('content', models.TextField(max_length=200)),
                ('created_on', models.DateTimeField(auto_now_add=True)),
                ('STATUS', models.IntegerField(choices=[(0, 'Draft'), (1, 'Published')], default=0)),
                ('excerpt', models.TextField(blank=True)),
                ('image', models.ImageField(blank=True, upload_to='user_images')),
                ('updated_on', models.DateTimeField(auto_now=True)),
                ('photo_url', models.URLField(blank=True, max_length=500)),
                ('google_place_id', models.CharField(max_length=255)),
                ('picture', models.ImageField(upload_to='pictures/')),
                ('author', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='gem_places', to=settings.AUTH_USER_MODEL)),
                ('favorited_by', models.ManyToManyField(blank=True, related_name='favorite_posts', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'ordering': ['-created_on'],
            },
        ),
        migrations.CreateModel(
            name='Region',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200)),
            ],
        ),
        migrations.CreateModel(
            name='UserComments',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('comment', models.TextField()),
                ('created_on', models.DateTimeField(auto_now_add=True)),
                ('author', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='commenter', to=settings.AUTH_USER_MODEL)),
                ('place', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='comments', to='scottish_gems.post')),
            ],
            options={
                'ordering': ['-created_on'],
            },
        ),
        migrations.AddField(
            model_name='post',
            name='region',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='scottish_gems.region'),
        ),
    ]
