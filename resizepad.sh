# resize image to fixed size with padding using ImageMagick
# set desired size below (960x400 is the Grav header image size)
# https://superuser.com/questions/1358715/how-do-i-resize-and-pad-an-image-to-a-given-size-using-imagemagick
# https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash
#
# example usage:
# sh resizepad.sh /mnt/c/Users/aleskl/Downloads/image.jpg

size="960x400"
extension="${1##*.}"
filename="${1%.*}"
convert "$1" -resize $size -background white -gravity center -extent $size "${filename}_${size}.${extension}"
echo "Output:" "${filename}_${size}.${extension}"

