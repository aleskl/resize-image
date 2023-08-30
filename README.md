# Resize images to fixed size with padding
Resize images and add padding in background color to get a fixed image size for Grav blog header image using ImageMagick

## How to use
1. install ImageMagick (eg. https://linuxopsys.com/topics/install-latest-imagemagick-on-ubuntu-20-04)
2. copy `resizepad.sh` to your user folder and run it with the image filename as argument

You can use the bash script in Ubuntu WSL terminal to resize an image in your windows user Downloads folder:
```
sh resizepad.sh /mnt/c/Users/aleskl/Downloads/image.jpg
```

Edit the `size` variable for different image size
```
size="960x400"
```

Edit the `convert` argument `-background` for background padding colour
```
convert "$1" -resize $size -background white -gravity center -extent $size "${filename}_${size}.${extension}"
```

## References
https://superuser.com/questions/1358715/how-do-i-resize-and-pad-an-image-to-a-given-size-using-imagemagick
https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash
