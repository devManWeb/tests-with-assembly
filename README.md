# tests-with-assembly
My own tests with the assembly language.
I am using Linux Mint x64.

To run these scripts you will need nasm, to install it:
```
sudo apt-get install nasm
```

To compile and run (ex:hello_world_3_languages.asm)
```
nasm -f elf64 -o hello_world_3_languages.o hello_world_3_languages.asm
ld hello_world_3_languages.o -o hello_world_3_languages
./hello_world_3_languages
```
