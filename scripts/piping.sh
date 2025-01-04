#!/bin/bash

echo what are you looking for?
read FILE

ls -l | grep $FILE
