import nltk
import pdb

 
nltk.download('punkt')
nltk.download('averaged_perceptron_tagger')

sentence = """At eight o'clock on Thursday morning Arthur didn't feel very good."""
tokens = nltk.word_tokenize(sentence)
print(tokens)
tagged = nltk.pos_tag(tokens)

pdb.set_trace()
print(tagged[0:6])

test = 42
pdb.set_trace()

print(test)
