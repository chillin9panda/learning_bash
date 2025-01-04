#!/bin/bash

case ${1,,} in
panda | admin)
  echo "Hey boss"
  ;;
help)
  echo "use ur username"
  ;;
*)
  echo "who are u"
  ;;
esac
