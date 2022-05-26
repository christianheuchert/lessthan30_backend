from django.urls import path
from .views.mango_views import Mangos, MangoDetail
from .views.poem_views import Poems, PoemDetail, PublicPoems
from .views.word_views import Words, WordDetail, PublicWords
from .views.Wordlist import WordList
from .views.user_views import SignUp, SignIn, SignOut, ChangePassword


urlpatterns = [
  	# Restful routing
    path('mangos/', Mangos.as_view(), name='mangos'),
    path('mangos/<int:pk>/', MangoDetail.as_view(), name='mango_detail'),

    path('poems/', Poems.as_view(), name='poems'),
    path('poems/<int:pk>/', PoemDetail.as_view(), name='poem_detail'),
    path('poems/<int:pk>/words/', Words.as_view(), name='poem_detail'),
    path('poems/<int:pk>/words/<int:sk>/', WordDetail.as_view(), name='word_detail'),
    path('wordlist/', WordList.as_view(), name='wordlist'),

    path('publicpoems/', PublicPoems.as_view(), name='publicpoems'),
    path('publicwords/', PublicWords.as_view(), name='publicwords'),

    path('sign-up/', SignUp.as_view(), name='sign-up'),
    path('sign-in/', SignIn.as_view(), name='sign-in'),
    path('sign-out/', SignOut.as_view(), name='sign-out'),
    path('change-pw/', ChangePassword.as_view(), name='change-pw')
]
