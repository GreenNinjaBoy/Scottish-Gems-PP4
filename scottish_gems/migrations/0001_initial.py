# Generated by Django 4.2.9 on 2024-02-29 20:39

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
                ('slug', models.SlugField(max_length=300, unique=True)),
                ('created_on', models.DateTimeField(auto_now_add=True)),
                ('updated_on', models.DateTimeField(auto_now=True)),
                ('STATUS', models.IntegerField(choices=[(0, 'Draft'), (1, 'Published')], default=0)),
                ('address', models.CharField(max_length=200)),
                ('latitude', models.DecimalField(blank=True, decimal_places=32, max_digits=64, null=True)),
                ('longitude', models.DecimalField(blank=True, decimal_places=32, max_digits=64, null=True)),
                ('google_place_id', models.CharField(max_length=255)),
                ('photo_url', models.URLField(blank=True, max_length=5000)),
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
