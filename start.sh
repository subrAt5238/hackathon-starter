#!/bin/bash

mongod & # your first application
P1=$!
node app.js & # your second application
P2=$!
wait $P1 $P2
