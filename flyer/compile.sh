#!/bin/bash

pdflatex flyer_luftdaten
pdflatex flyer_luftdaten

# create a version with fixed dpi
targetdpi=300
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dColorImageResolution="$targetdpi" -dColorImageDownsampleType=/Average -dGrayImageDownsampleType=/Average -dGrayImageResolution="$targetdpi" -dMonoImageResolution="$targetdpi" -dMonoImageDownsampleType=/Average -dOptimize=true -dDownsampleColorImages=true -dDownsampleGrayImages=true -dDownsampleMonoImages=true -dUseCIEColor -dColorConversionStrategy=/sRGB -dNOPAUSE -dQUIET -dBATCH -sOutputFile="flyer_luftdaten.${targetdpi}dpi.pdf" flyer_luftdaten.pdf


# assemble_station

pandoc -S --toc -V classoption:DIV21 -V colorlinks:true -V documentclass:scrartcl -V lang=german -V classoption:ngerman --latex-engine=xelatex --template=md2latextemplate.tex -fmarkdown+autolink_bare_uris+lists_without_preceding_blankline -o assemble_station.md.pdf assemble_station.md

targetdpi=150
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dColorImageResolution="$targetdpi" -dColorImageDownsampleType=/Average -dGrayImageDownsampleType=/Average -dGrayImageResolution="$targetdpi" -dMonoImageResolution="$targetdpi" -dMonoImageDownsampleType=/Average -dOptimize=true -dDownsampleColorImages=true -dDownsampleGrayImages=true -dDownsampleMonoImages=true -dUseCIEColor -dColorConversionStrategy=/sRGB -dNOPAUSE -dQUIET -dBATCH -sOutputFile="assemble_station.${targetdpi}dpi.pdf" assemble_station.md.pdf

# assemble talk version

sed -e 's#^<!-- --- -->#---#' assemble_station.md|pandoc -f markdown -t beamer --slide-level=2 -o talk_assemble_station.md.pdf

# s5 version (not properly formatted: too long content for slides, no framebreak)
# you need to get the s5 framework, unpack ui/default/ as s5/default/ dir here. Download from http://meyerweb.com/eric/tools/s5/ http://meyerweb.com/eric/tools/s5/v/1.1/s5-11.zip
# sed -e 's#^<!-- --- -->#---#' assemble_station.md|pandoc -f markdown -t s5 --slide-level=2 -S -s -o talk_assemble_station.md.html

