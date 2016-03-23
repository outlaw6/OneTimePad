###########################################
# Skripta za generisanje random brojeva   $
#                                         #
# Kreira brojeva iz /dev/urandom i predaje#
# ih u python skriptu                     #
#
#!/bin/bash


#####################
RESET_A=\\e[0m
CYAN=\\e[1m\\e[36m
GREY_BACKGROUND="\e[40;38;5;82m" 
BOLD=\\e[1m

#####################

echo  -e "${GREY_BACKGROUND}$CYAN  Pripremam pripremu za izradu  brojeva.... $RESET_A"


		    

echo -e $BOLD

#sleep 3

sleep 2
echo "Pripremam se za izradu random byte-ova iz entropy pool-a"

sleep 1
echo -e "Pocinjem sa generisanjem Pseudo Random Byteova\n"

echo "Sacekaj ~15 sekundi...."
sleep 1

timeout 15s cat /dev/urandom | tr -dc 01 | fold -w 8 > BROJEVI

echo -e "${GREY_BACKGROUND} File s BINARNIM brojevima kreiran."
echo -e $RESET_A

touch numbers.txt

for number in  `tail -5000  BROJEVI`;
do  ./to_decimal.sh $number;
done


python3 make_numbers.py











