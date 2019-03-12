export LD_LIBRARY_PATH=./
make re
gcc -fno-builtin test.c -L./ -lasm
gcc -o real real.c
echo "DONE -> ./a.out"
