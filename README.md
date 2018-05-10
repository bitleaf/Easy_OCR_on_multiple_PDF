OCR on multiple PDF files
============
This package allows you to make PDFs searchable for text (OCR) within one single command.


Motivation & Technology
-----------------------
It is hard to find OCR implementations that meet these three requirements:
  - high usability
  - ability to process multiple files
  - open source

After some research, I found [OCRmyPDF](https://github.com/jbarlow83/OCRmyPDF), which is open source, but not that easy to use for processing more than one PDF file. Therefore, I extended OCRmyPDF to easily apply OCR on multiple PDF files with just one single command (thanks to [Docker](https://www.docker.com/)).

Prepare
-------
Only install [Docker](https://docs.docker.com/engine/installation/).

How to use
----------
  - Put all PDFs into folder "put_pdf_files_here"

  - In the terminal, execute

  ```
  ./main.sh
  ```

  Afterwards, you can search inside your PDFs for text.

Support this project
----------

If you want this project to get better, support me with a few cents:

<a href="https://liberapay.com/Bitleaf/donate"><img alt="Donate using Liberapay" src="https://liberapay.com/assets/widgets/donate.svg"></a>

License
----------

![](https://www.gnu.org/graphics/gplv3-127x51.png)

The project is licensed unter the GPLv3.

Copyright (C) Mathias Renner

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

See <http://www.gnu.org/licenses/> fore more information.
