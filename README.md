# Resize images to fixed size with padding
Resize images and add padding in background color to get a fixed image size for Grav blog header image using ImageMagick

You can use the bash script in Ubuntu WSL terminal to resize an image in your windows user Downloads folder:
```
sh resizegrav.sh /mnt/c/Users/aleskl/Downloads/image.jpg
```

Edit the `size` variable for different image size
```
size="960x400"
```

Edit the `convert` argument `-background` for background padding colour
```
convert "$1" -resize $size -background white...
```

## References
https://superuser.com/questions/1358715/how-do-i-resize-and-pad-an-image-to-a-given-size-using-imagemagick
https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash
