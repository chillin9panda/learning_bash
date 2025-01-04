#!/bin/bash

if [ ${1,,} = panda ]; then
  echo "hey there panda"
elif [ ${1,,} = help ]; then
  echo "enter your user name"
else
  echo "i don't know you"
fi
