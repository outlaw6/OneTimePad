#!/bin/python
#
#
#
# Pravi grupe od po 5 brojeva od datih argumenata
# txt file-ova koji sadrze cifre od po 2 ili 3 broja
#
#
#
import random, sys

READ_NUMBERS = open('numbers.txt', 'r').read()
NUMBERS = []

for number in READ_NUMBERS:

    if number != '\n':
        NUMBERS.append(number)


str1 = ""
LIST_OF_NUMBERS = []

for n in NUMBERS:
    
    str1 = str1 + str(n)

    if len(str1) == 5:
        LIST_OF_NUMBERS.append(str1)
        str1 = ''
        continue

COLUMNS = ""
little_c = 0
for x in LIST_OF_NUMBERS:

    COLUMNS += str(x) + '\t'
    little_c += 1
    if little_c == 5:
        COLUMNS += '\n'
        little_c = 0

print(COLUMNS)

