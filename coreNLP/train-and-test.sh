#!/bin/bash

# TRAIN GERMAN
echo "Training German NER model"
java -cp "*" -Xmx8g edu.stanford.nlp.ie.crf.CRFClassifier -prop corenlp-ner-training.de.prop -readerAndWriter edu.stanford.nlp.sequences.CoNLLDocumentReaderAndWriter -inputEncoding UTF-8 -outputEncoding UTF-8

# TEST GERMAN
echo "Testing German NER model"
java -cp "*" -Xmx8g edu.stanford.nlp.ie.crf.CRFClassifier -loadClassifier ner-model.sport.de.ser.gz -testFile corenlp-ner-test.de.tsv -readerAndWriter edu.stanford.nlp.sequences.CoNLLDocumentReaderAndWriter -entitySubclassification iob2 -inputEncoding UTF-8 -outputEncoding UTF-8

# TRAIN ENGLISH
echo "Training English NER model"
java -cp "*" -Xmx8g edu.stanford.nlp.ie.crf.CRFClassifier -prop corenlp-ner-training.en.prop -readerAndWriter edu.stanford.nlp.sequences.CoNLLDocumentReaderAndWriter -inputEncoding UTF-8 -outputEncoding UTF-8

# TEST ENGLISH
echo "Testing English NER model"
java -cp "*" -Xmx8g edu.stanford.nlp.ie.crf.CRFClassifier -loadClassifier ner-model.sport.en.ser.gz -testFile corenlp-ner-test.en.tsv -readerAndWriter edu.stanford.nlp.sequences.CoNLLDocumentReaderAndWriter -entitySubclassification iob2 -inputEncoding UTF-8 -outputEncoding UTF-8