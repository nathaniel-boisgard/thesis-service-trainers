# Train and test Stanford CoreNLP CRF based NER

1. Prepare annotated training and test files (IOB2 tagged, in TSV format)
2. Adapt filenames of training and test files if necessary
	- English training file: `corenlp-ner-training.en.tsv`
	- English test file: `corenlp-ner-test.en.tsv`
	- German training file: `corenlp-ner-training.de.tsv`
	- German test file: `corenlp-ner-training.en.tsv`
3. Move bash script, properties, training and test files to the coreNLP base folder, e.g. `/home/yourname/java/corenlp`
4. Execute bash script `$ bash ./train-and-test.sh`