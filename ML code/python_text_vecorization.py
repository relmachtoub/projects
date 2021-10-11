# Lemmatization & Tokenization
# written in python


import random  # in order to select a random review
import pandas as pd

import spacy
import re

# import clean_data.py 


nlp = spacy.load('en_core_web_sm', disable=['parser', 'ner'])

data = pd.read_csv('/datasets/imdb_reviews_small.tsv', sep='\t')
corpus = data['review']

def clear_text(text):
    
    text = re.sub(r'[^a-zA-Z\']', ' ', text)
    text = " ".join(text.split())
    return text

def lemmatize(text):

    doc = nlp(text.lower())
    
    lemmas = []
    for token in doc:
        lemmas.append(token.lemma_)
        
    return ' '.join(lemmas)

# store the review index in the review_idx variable
# either as a random number or a fixed value, e.g. 2557 
#review_idx = random.randint(0, len(corpus)-1)
review_idx = 2557

review = corpus[review_idx]

print('The original text:', review)
print()
print('The lemmatized text:', lemmatize(clear_text(review)))
