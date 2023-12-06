:: resize image to fixed size with padding using ImageMagick in Windows Terminal (Command Prompt)
:: set desired size below (960x400 is the Grav header image size)
:: https://superuser.com/questions/1358715/how-do-i-resize-and-pad-an-image-to-a-given-size-using-imagemagick
:: https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash
::
:: example usage:
:: resizepad.bat image.jpg

@ECHO OFF
setlocal
if not exist %1 exit /b 1
set size=960x400
set extension=%~x1
set filename=%~n1
magick convert %1 -resize %size% -background white -gravity center -extent %size% %filename%_%size%%extension%
echo Output: %filename%_%size%%extension%