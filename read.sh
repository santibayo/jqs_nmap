#!/bin/bash
while IFS= read -r line; do
   mosquitto_pub -h localhost -t test -m "$line"
done 
