
#!/bin/bash 

read -p "enter your number- " number
temp=$number
sum=0
while [ $number -gt 0 ]
do
	remainder=$(( $number%10 ))
	number=$(( $number/10 ))
	sum=$(( $sum+$remainder ))
done

echo "sum of the digits $temp is- " $sum


reverse () {
temp1=$sum
sum=$1
rev=0
while [ $sum != 0 ];
do
   rem=$(( $sum % 10 ))
   rev=$(( $rev*10 + $rem ))
   sum=$(( $sum / 10 ))
done

}

reverse $sum
echo $rev

var=$(( $temp1 * $rev ))
echo $var

if [   $var -eq $temp ]
then
	echo "magic number"
else
	echo "not a magic number"
fi


