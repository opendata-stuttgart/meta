#!/bin/bash

pdflatex flyer_luftdaten
pdflatex flyer_luftdaten

# create a version with fixed dpi
targetdpi=300
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dColorImageResolution="$targetdpi" -dColorImageDownsampleType=/Average -dGrayImageDownsampleType=/Average -dGrayImageResolution="$targetdpi" -dMonoImageResolution="$targetdpi" -dMonoImageDownsampleType=/Average -dOptimize=true -dDownsampleColorImages=true -dDownsampleGrayImages=true -dDownsampleMonoImages=true -dUseCIEColor -dColorConversionStrategy=/sRGB -dNOPAUSE -dQUIET -dBATCH -sOutputFile="flyer_luftdaten.${targetdpi}dpi.pdf" flyer_luftdaten.pdf
