#!/bin/bash


# resample pdf to 150 dpi
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dColorImageResolution=150 -dColorImageDownsampleType=/Average -dGrayImageDownsampleType=/Average -dGrayImageResolution=150 -dMonoImageResolution=150 -dMonoImageDownsampleType=/Average -dOptimize=true -dDownsampleColorImages=true -dDownsampleGrayImages=true -dDownsampleMonoImages=true -dUseCIEColor -dColorConversionStrategy=/sRGB -dNOPAUSE -dQUIET -dBATCH -sOutputFile=assembled2_annot_150dpi.pdf assembled2_annot.pdf
