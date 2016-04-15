OCR on multiple PDF files
============
This package allows you to make PDFs searchable for text (OCR) within one single command.


Motivation & Technology
-----------------------
It is hard to find OCR implementations that meet these three requirements:
  - high usability
  - ability to process multiple files
  - open source

After some research, I found [OCRmyPDF](https://github.com/jbarlow83/OCRmyPDF), which is open source, but not that easy to use for processing more than one PDF file. Therefore, I extended OCRmyPDF to easily apply OCR on multiple PDF files with just one single command (thanks to [Docker](https://www.docker.com/), but you can also use it without Docker).


Prepare
--------
**If you wanna use Docker, you do not need to prepare anything exept [installing Docker](https://docs.docker.com/engine/installation/). Afterwards, go on with section "How to use"!**

  - Follow installation instructions on https://github.com/jbarlow83/OCRmyPDF

  - In the terminal, execute

  ```
  ocrmypdf --version
  ```

  If you see the version of the OCR software, everything is fine.


How to use
----------
  - Put all PDFs into folder "put_pdf-files_here"

  - In the terminal, execute

  ```
  ./main.sh
  ```

  Afterwards, you can search inside your PDFs for text.
