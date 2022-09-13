echo "Enter a number"
read number
factorial=1
while [ $number -ne 0 ]
do
factorial=$(($factorial * $number))
number=$(($number - 1))
done
echo "Factorial is :"
echo $factorial
