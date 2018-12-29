#!/bin/bash


if [ -z "$thm" ] ; then
thm=white
thm=sky
#thm=opendataday
thm=moon
fi

pdopt="--slide-level 2 --toc-depth=1"

if [ -z "$1" ] ; then
	mdfiles=$(find -maxdepth 1 -name '*.md')
else
	mdfiles="$@"
fi

for mdf in $mdfiles
do
	outfile="${mdf}.html"
	pandoc -s -S --toc -V theme=$thm $pdopt -t revealjs -f markdown+autolink_bare_uris+lists_without_preceding_blankline -o "$outfile" "$mdf"
done


