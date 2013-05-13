#!/bin/bash

SCIENCES="microbiology virology epidemiology artificial-intelligence archaeology chemical energy earth information physical astronomy electronics engineering geography mathematics meteorology statistics linguistics economic library political biological cognitive life neuro psychological biologicalx computer environmental medical biomedical creation genetic military social brain domestic geophysical natural zoological ufos"

MIMES="pdf json  png gif svg djvu flv html avi mpeg"

BASE="data"

SEARCHDIR="/media/Elements/media/books/"

MIRRORDIR="/home/santex/active-memory-mirror";

for aa in $MIMES; do

mkdir -p  $BASE/$aa;

for i in $SCIENCES; do


#echo $i;

echo "perl  /home/santex/AI-MicroStructure-test/bin/micro-search --match $i --full 1 --short 1 --scope 14 --mime "$aa" --dir $SEARCHDIR | egrep -i "$aa$"  > $MIRRORDIR/$BASE/$aa/$i;"
perl  /home/santex/AI-MicroStructure-test/bin/micro-search --match $i --full 1 --short 1 --scope 14 --mime "$aa" --dir $SEARCHDIR | egrep -i "$aa$"  > $MIRRORDIR/$BASE/$aa/$i;

done
done


#for i in $SCIENCES; do perl ~/AI-MicroStructure-test/bin/micro-search --match $i --full 1 --short 1 --scope 10 --mime $a --dir /media/Elements/media/books/ > ~/active-memory-mirror/$BASE/$a/$i; done
#for i in $SCIENCES; do perl ~/AI-MicroStructure-test/bin/micro-search --match $i --full 1 --mime json  --dir /media/Elements/media/books/ > ~/active-memory-mirror/json/$i.json.txt; done
#for i in $SCIENCES; do perl ~/AI-MicroStructure-test/bin/micro-search --match $i --full 1 --mime pdf --dir /media/Elements/media/books/ > ~/active-memory-mirror/books/$i.pdf.txt; done

#for i in $SCIENCES; do perl ~/AI-MicroStructure-test/bin/micro-search --match $i --full 1 --mime pdf --dir /media/Elements/media/books/ > ~/active-memory-mirror/video/$i.pdf.txt; done
#for i in $SCIENCES; do perl ~/AI-MicroStructure-test/bin/micro-search --match $i --full 1 --mime pdf --dir /media/Elements/media/books/ > ~/active-memory-mirror/image/$i.pdf.txt; done
#for i in $SCIENCES; do perl ~/AI-MicroStructure-test/bin/micro-search --match $i --full 1 --mime pdf --dir /media/Elements/media/books/ > ~/active-memory-mirror/djvu/$i.djvu.txt; done
#for i in $SCIENCES; do perl ~/AI-MicroStructure-test/bin/micro-search --match $i --full 1 --mime pdf --dir /media/Elements/media/books/ > ~/active-memory-mirror/html/$i.html.txt; done
