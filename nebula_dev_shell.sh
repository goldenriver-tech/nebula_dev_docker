#!/bin/bash

source .env

sshpass -p "${PASSWORD}" ssh -X -p 8022 ${USERNAME}@127.0.0.1 $@

