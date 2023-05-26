#
#
# ▒█▀▀▀ █░░ █▀▀█ █▀▀█ ░▀░ █▀▀█ █▀▀▄ 　 ▒█▀▀▀█ █▀▀ █░░█ █░░█ ▀▀█▀▀ ▀▀█▀▀ █░█ █▀▀█ █░░░█ █▀▀ █░█ ░▀░ 
# ▒█▀▀▀ █░░ █░░█ █▄▄▀ ▀█▀ █▄▄█ █░░█ 　 ░▀▀▀▄▄ █░░ █▀▀█ █░░█ ░░█░░ ░░█░░ █▀▄ █░░█ █▄█▄█ ▀▀█ █▀▄ ▀█▀ 
# ▒█░░░ ▀▀▀ ▀▀▀▀ ▀░▀▀ ▀▀▀ ▀░░▀ ▀░░▀ 　 ▒█▄▄▄█ ▀▀▀ ▀░░▀ ░▀▀▀ ░░▀░░ ░░▀░░ ▀░▀ ▀▀▀▀ ░▀░▀░ ▀▀▀ ▀░▀ ▀▀▀
#
#                          Copyright 2023 Florian Schuttkowski, Licensed GPL3
#                    For additional information, visit https://github.com/flowinho
#
# ======================%%========================%%==========================%%=====================
#
# Pandoc needs explicit directories. This script will only work if located in ~/pandoc.
# In case you place it somewhere else, make sure to adjust the paths.
#
#!/bin/bash

pandoc "$1" \
    -H ~/pandoc/chapter_break.tex \
    -H ~/pandoc/bullet_styling.tex \
    -H ~/pandoc/language.tex \
    -H ~/pandoc/fancyheaders.tex \
    -H ~/pandoc/inline_codehighlight.tex \
    -H ~/pandoc/blockquote.tex \
    -H ~/pandoc/tables.tex \
    -V linkcolor:blue \
    -V geometry:a4paper \
    -V documentclass:report \
    -V classoption:twoside \
    -V geometry:margin=2cm \
    -V toc-title:"Inhaltsverzeichnis" \
    --highlight-style ~/pandoc/pygments.theme \
    --toc \
    --pdf-engine=xelatex \
    -o "$2"
