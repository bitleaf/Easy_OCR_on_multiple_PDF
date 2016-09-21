#!/bin/bash

# Author: www.Mathias-Renner.de
# How to use: See README.md

set -e

## Prepare
echo -e "Checking dependency 1/2: Docker installed?\c"
if [[ $(docker --version) == *"build"* ]]; then
  echo -e " [\e[32m OK\e[0m ]"
else
  echo -e "\e[31m Dependency not met: Docker is not installed. Install from https://docs.docker.com/engine/installation/\e[0m"
  exit 1
fi

echo -e "Checking dependency 2/2: Docker image for OCR downloaded? (This may take a while)\c"
if [[ $(docker pull jbarlow83/ocrmypdf) == *'Image is up to date'* ]]; then
  echo -e " [\e[32m OK\e[0m ]" && printf "\n"
else
  echo -e " [\e[33m No, starting download... \e[0m]" && printf "\n"
  docker pull jbarlow83/ocrmypdf
  echo -e "\e[32mRequired image has been successfully downloaded. \e[0m" && printf "\n"
fi

## Processing OCR
for i in put_pdf_files_here/*; do
  FILENAME=$(echo $i | sed 's@.*/@@' )
  echo -e "\e[1mProcessing OCR on \"$FILENAME\" ...\e[0m"
  docker run -v "$(pwd):/home/docker" jbarlow83/ocrmypdf --force-ocr $i $i
  # Remove "--force-ocr" to skip OCR if text layer already exists
  #	ocrmypdf --force-ocr $i $i
	printf "\n"
done

echo -e "Finished! \u2605"
