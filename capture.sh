#!/bin/zsh
#tshark -f "src port 53" -n -T json|jq  -r --stream  
tshark -f "src port 53" -n -T json|nc 127.0.0.1 -p 8888
