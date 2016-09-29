#!/bin/bash

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dColorImageResolution=150 -dColorImageDownsampleType=/Average -dGrayImageDownsampleType=/Average -dGrayImageResolution=150 -dMonoImageResolution=150 -dMonoImageDownsampleType=/Average -dOptimize=true -dDownsampleColorImages=true -dDownsampleGrayImages=true -dDownsampleMonoImages=true -dUseCIEColor -dColorConversionStrategy=/sRGB -dNOPAUSE -dQUIET -dBATCH -sOutputFile=assemble_station.md.150dpi.pdf assemble_station.md.att.pdf
