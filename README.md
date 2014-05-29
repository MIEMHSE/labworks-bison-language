# bison-labworks-language

**Bison/Flex laboratory works: simple language.**

Author: The Profitware Group / Sergey Sobko <S.Sobko@profitware.ru>

The code is written as laboratory works at Moscow Institute of Electronics and Mathematics (MIEM HSE).

Some parts are done by my classmates:

- WHILE - Alisa Gezentsvey
- DO-WHILE - Olga Ilyina, Anna Vavilova
- FOREACH - Alexandra Nesterenko
- SWITCH-CASE-BREAK-DEFAULT - Alexander Veshkin, Dmitry Ushakov, Alexander Makeev

## Introduction

Bison/Flex laboratory works: simple language.

## Building and running

```
flex ifprog.l
bison -d ifprog.y
gcc -o ifprog ifprog.tab.c

echo 'if(x==2){do{a=1;}while(a>3);}$' | ./ifprog
echo 'switch(n){case 1:n=n+2;break;case 2:n=n+4;default:n=n+1;}$' | ./ifprog
echo 'foreach(list as a){while(a>4){b=5;}}$' | ./ifprog
```
## Getting the code

The code is hosted at [GitHub](https://github.com/profitware/bison-labworks-language).

Check out the latest development version anonymously with:

```
 $ git clone git://github.com/profitware/bison-labworks-language.git
 $ cd bison-labworks-language
```
