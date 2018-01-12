# RASA Trainer

Starts and trains a rasa Docker image listening at port 5000. 

1. Create training files (`rasa-training.de.json` for German, `rasa-training.en.json` for English)
2. Start rasa: `$ bash ./start.de.sh` for German instance, `$ bash ./start.en.sh` for English instance
3. Train rasa: `$ bash ./train.de.sh` for German, `$ bash ./train.en.sh` for English