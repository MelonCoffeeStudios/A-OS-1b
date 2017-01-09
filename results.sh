#!/bin/bash

echo -e '\n*****************'
echo ' Printing mywc.s '
echo '*****************'
cat mywc.s
echo -e '\n*****************'
echo 'Printing makefile'
echo '*****************'
cat makefile
echo -e '\n*****************'
echo ' Executing Make! '
echo '*****************'
make
echo -e '\n*****************'
echo ' Running ./mywc! '
echo '*****************'
./mywc < proverb.txt