#!/bin/bash
#
# This script runs in the buildspec before testing

cat inputs/inputs_1_create.json | sed "s/USER_NAME/${USER_NAME}/g" | sed "s/ROLE_NAME/${ROLE_NAME}/g" > inputs/inputs_1_create.json
cat inputs/inputs_1_update.json  | sed "s/USER_NAME/${USER_NAME}/g" | sed "s/ROLE_NAME/${ROLE_NAME}/g" > inputs/inputs_1_update.json
cat test/integ.yml | sed "s/USER_NAME/${USER_NAME}/g" | sed "s/ROLE_NAME/${ROLE_NAME}/g" > test/integ.yml