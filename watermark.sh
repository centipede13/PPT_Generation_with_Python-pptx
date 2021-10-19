#!/bin/bash
cd ./Asset/Images/
convert nike_black.png -resize 40% resize_nikeBlack.png
for pic in *.jpg;do
    composite -gravity NorthWest resize_nikeBlack.png $pic ../Watermarked_Images/${pic//.jpg}-marked.jpg
done