#!/bin/bash

pandoc "$1" \
    -f gfm \
    --include-in-header headers/chapter_break.tex \
    --include-in-header headers/inline_code.tex \
    --include-in-header headers/bullet_style.tex \
    --include-in-header headers/pdf_properties.tex \
    --include-before-body headers/cover.tex \
    -V toc-title="Table of Contents" \
    -V linkcolor:blue \
    -V geometry:a4paper \
    -V geometry:margin=2cm \
    -V mainfont="DejaVu Serif" \
    -V monofont="DejaVu Sans Mono" \
    --pdf-engine=xelatex \
    -o "$2"

# can't get cover to work yet
