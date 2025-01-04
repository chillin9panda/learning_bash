#!/bin/bash

function array_looping() {
  LIST=(1 2 3 4 5 6 7)

  for ITEM in ${LIST[@]}; do
    echo $ITEM
  done
}

UP=panda
SINCE=me

showUpTime() {
  local UP=$(uptime -p | cut -c4-)
  SINCE=$(uptime -s)
  cat <<EOF
up for ${UP}
up since ${SINCE}
EOF
}

printSomething() {
  echo $1
}

showUpTime
array_looping
printSomething easy

echo $UP
echo $SINCE
