echo "Enter the number of odd terms you want : "
read number
x=0
n=0
while [ $x != $number ]
do
condition=`expr $n % 2`
if [ $condition -eq 1 ]
then
echo $n
n=$((n + 1))
x=$((x + 1))
else
n=$((n + 1))
fi
done
