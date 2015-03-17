This repository is an example of how pandoc, reveal.js and d3.js can
interact to produce nice html slides, while simultaneously providing
static pdf output as well.

## Target

As we are interested in academic documents, we need to have access to
the following capabilities:
- mathematical equations and theorems
- citations
- incorporating images, code blocks, tables
- table of contents
- within document references
- chapter, theorem, equation numbering
- overlays in slide shows

Most (all?) of these requirements can be achieved through usage of
pandoc, which allows conversion of simple markdown content into a
multitude of different output formats.

## Pandoc + markdown

Using pandoc and markdown source files has the following advantages:
- a single source file that can be exported to different formats (pdf,
  html) 
- markdown files are content only - layout commands do not obscure the
  content 

## Slide shows

Through pandoc you get access to two (and a lot more) of the most
important different slide show formats: html (reveal.js) and beamer
(latex).

Thereby reveal.js gives way to rich multimedia and interactivity.
Also, content can be differently presented depending on the viewing
device: for example, text exhibits different line breaks for different
screen sizes. This, however, is both blessing and curse: slide shows
become more than a single file, and slides need to be shipped with
additional rendering files in order to allow offline viewing. With
internet connection, however, slides can easily be hosted on github,
and all relevant rendering software can be embedded through url links.

## D3 charts

In addition to classic image formats like png or pdf, html also allows
the inclusion of interactive charts. This way, users can interact with
the graphic, allowing a richer way to extract information from data.
The most common such visualization language for the web is JavaScript,
and its prime visualization package is d3.js.

## Problems

The problem with interactive d3 graphics, however, is that individual
charts also contain their source data. Hence, if you are visualizing
private data that you are not allowed to share, you can not host them
online, but they need to be rendered locally. Also, if your graphics
load in data from separate data files, you can not simply render them
in your browser, because your browser is not allowed to access local
files. Instead, you need to set up a small http server to present your
charts.

## Conclusion

If you do not intend to use d3:
- internet access: your slides can be a single file, with relevant
  rendering scripts linked on the web
p- without internet: rendering scripts (for example: reveal.js) need to
  locally linked

Using d3:
- if your data is NOT private and you have access to internet: simply
  host your charts online (github)
- else: incorporate all rendering scripts locally, and start local
  server for presentation

