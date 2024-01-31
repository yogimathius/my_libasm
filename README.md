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
Each .S function has a parallel .c function. The .c calls the .S and passes arguments.

Naming convention example:

.c func = asm_strlen()

.S func = my_strlen()

There are a series of tests in the main() located in my_libasm.c, one test per function.

Run the program:
```
./my_libasm
```

### The Core Team


<span><i>Made at <a href='https://qwasar.io'>Qwasar SV -- Software Engineering School</a></i></span>
<span><img alt='Qwasar SV -- Software Engineering School's Logo' src='https://storage.googleapis.com/qwasar-public/qwasar-logo_50x50.png' width='20px' /></span>