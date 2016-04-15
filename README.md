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


How to use
----------
  - Put all PDFs into folder "put_pdf_files_here"

  - In the terminal, execute

  ```
  ./main.sh
  ```

  Afterwards, you can search inside your PDFs for text.
