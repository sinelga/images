#!/bin/bash
	rm ../*.jpg
	cp *.jpg ../
	mogrify -resize 750 ../*.jpg
        for i in $( ls ../*.jpg ); do
            echo item: $i
		
	     #convert  $i  \( +clone -background black -shadow 60x5+10+10 \) +swap -background black -layers merge +repage $i
	     convert  $i -alpha set  \( +clone -background black -shadow 60x3+6+6 \) +swap -background none -mosaic  $i		
			
        done
