export LD_LIBRARY_PATH=./
make re
gcc -fno-builtin test.c -L./ -lasm
echo "DONE -> ./a.out"
