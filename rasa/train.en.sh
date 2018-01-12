#!/bin/bash

curl -XPOST localhost:5000/train?project=TU_THESIS_EN -d @rasa-training.en.json
