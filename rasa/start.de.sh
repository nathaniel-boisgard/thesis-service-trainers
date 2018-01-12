#!/bin/bash

docker run -d -p 5000:5000 -v /home/nathaniel/rasa/config.de.json:/app/config.json rasa/rasa_nlu:latest-full
