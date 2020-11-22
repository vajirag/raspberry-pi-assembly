file=$1

as -o build/$file.o $file.s
ld -o build/$file build/$file.o
chmod +x build/$file
