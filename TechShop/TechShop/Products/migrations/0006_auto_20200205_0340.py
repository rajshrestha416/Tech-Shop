# Generated by Django 3.0.2 on 2020-02-04 21:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Products', '0005_auto_20200205_0321'),
    ]

    operations = [
        migrations.AlterField(
            model_name='products',
            name='Price',
            field=models.DecimalField(decimal_places=2, max_digits=7),
        ),
        migrations.AlterField(
            model_name='secondhand',
            name='Price',
            field=models.DecimalField(decimal_places=2, max_digits=7),
        ),
    ]
