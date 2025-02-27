# Generated by Django 3.0.2 on 2020-02-08 07:46

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('Products', '0007_auto_20200206_1221'),
        ('Transaction', '0002_auto_20200208_0914'),
    ]

    operations = [
        migrations.CreateModel(
            name='thirdtry',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ProductId', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='Products.Products')),
                ('SProductId', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='Products.Secondhand')),
                ('UserId', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
