from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from rest_framework.exceptions import PermissionDenied
from rest_framework import generics, status
from django.shortcuts import get_object_or_404

from ..models.poem import Poem, Word
from ..serializers import WordSerializer, PoemSerializer
from api.models import poem

# Create your views here.
class Words(generics.ListCreateAPIView):
    serializer_class = WordSerializer
    def get(self, request, pk):
        """Index request"""
        # Locate the words from the poem
        words = Word.objects.filter(poem=pk)
        # serialize
        data = WordSerializer(words, many=True).data
        return Response({'words': data})

    def post(self, request, pk):
        """Create request"""
        # Add user to request data object
        request.data['word']['poem'] = pk
        # Serialize/create word
        word = WordSerializer(data=request.data['word'])
        # If the word data is valid according to our serializer...
        if word.is_valid():
            # Save the created word & send a response
            word.save()
            return Response({ 'word': word.data }, status=status.HTTP_201_CREATED)
        # If the data is not valid, return a response with the errors
        return Response(word.errors, status=status.HTTP_400_BAD_REQUEST)

class WordDetail(generics.RetrieveUpdateDestroyAPIView):

    def delete(self, request, pk, sk):
        """Delete request"""
        # Locate the words from the poem
        words = Word.objects.filter(poem=pk)
        word =words.filter(id=sk)

        word.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
