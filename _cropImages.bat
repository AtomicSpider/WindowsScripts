REM ** Requied library: http://www.imagemagick.org/script/binary-releases.php**
REM ** Make sure to install legacy libraries at the end of the setup**

REM ** Resizes all jpg, jpeg, png files to 300x300 jpg**
REM ** Stores new files to a new directory "" and deletes originals**

@echo off
if not exist "ConvertedImages" mkdir ConvertedImages
mogrify -format jpg -resize 300x300 -background black -gravity center -extent 300x300 -quality 80 -path ConvertedImages *.jpg *.png *.jpeg
del /q *.jpg *.png *.jpeg