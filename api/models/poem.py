from turtle import title
from django.db import models
from django.contrib.auth import get_user_model

class Poem(models.Model):
  # define fields
  # https://docs.djangoproject.com/en/3.0/ref/models/fields/
  title = models.CharField(max_length=100)
  owner = models.ForeignKey(
      get_user_model(),
      on_delete=models.CASCADE
  )
  def __str__(self):
    # This must return a string
    return f"Poem'{self.title}': {self}"


class Word(models.Model):
  # define fields
  # https://docs.djangoproject.com/en/3.0/ref/models/fields/
  word = models.CharField(max_length=20)
  poem = models.ForeignKey(Poem, on_delete=models.CASCADE)

  def __str__(self):
    # This must return a string
    return f"{self.word}"