#!/bin/bash

curl -XPOST localhost:5000/train?project=TU_THESIS_DE -d @rasa-training.de.json
