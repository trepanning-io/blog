#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${GREEN}Building blog website${NC}"
hugo
echo -e "${GREEN}Publishing blog website${NC}"
(
  cd public || exit
  git add .
  git commit -m "${msg}"
  git push origin master
)

