@echo off
:: === Create optimized directory ===
mkdir images\optimized

:: === Generate optimized JPEGs ===
magick mogrify -path images\optimized -resize 2000x2000^> -strip -interlace Plane -quality 82 images\*.JPG
magick mogrify -path images\optimized -resize 2000x2000^> -strip -interlace Plane -quality 82 images\*.jpg

:: === Generate optimized WebP ===
magick mogrify -path images\optimized -format webp -resize 2000x2000^> -strip -quality 82 images\*.JPG
magick mogrify -path images\optimized -format webp -resize 2000x2000^> -strip -quality 82 images\*.jpg

echo ============================================
echo Optimized images generated in images\optimized\
echo ============================================
pause
