#!/bin/sh


echo  'ibase=2; obase=A; '$1'' | bc | tee -a numbers.txt
