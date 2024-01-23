# Welcome to My Libasm
***


## Task
TODO - What is the problem? And where is the challenge?

## Description
TODO - How have you solved the problem?

## Installation
Make sure you have all required directories as well as the Makefile available:
/build
/inc
/src_asm
/src_c

Compile the program:
```
-> make
```
Clean up:
```
-> make fclean
```

## Usage
Each asm function has a parallel .c function which calls the asm function and passes arguments.
Naming convention example:

.c func = asm_strlen()

.S func = my_strlen()

We have created a series of tests in the main() located in my_libasm.c.
There is one test per asm function.

Run the program:
```
./my_libasm
```

### The Core Team


<span><i>Made at <a href='https://qwasar.io'>Qwasar SV -- Software Engineering School</a></i></span>
<span><img alt='Qwasar SV -- Software Engineering School's Logo' src='https://storage.googleapis.com/qwasar-public/qwasar-logo_50x50.png' width='20px' /></span>