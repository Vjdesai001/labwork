echo "Enter constant a: "
read a
echo "Enter constant b: "
read b
echo "Enter constant c: "
read c
d=$(($b * $b - 4 * $a * $c))
echo "Discriminant D = $d"
if [ $d -lt 0 ]
then
x=-1
elif [ $d -gt 0 ]
then
x=1
elif [ $d -eq 0 ]
then
x=0
fi
case $x in
-1)
echo "No real roots"
echo "Root 1:"
echo $(((-1 * $b) / (2 * $a))) "+" (($((sqrt($d)) / (2 * $a))))"i"
echo "Root 2:"
echo $(((-1 * $b) / (2 * $a))) "-" (($((sqrt($d)) / (2 * $a))))"i"
;;
1)
echo "Two real roots"
echo "Root 1 = "
root="scale=4;sqrt($d)"
echo $(((-1 * $b + $root ) / (2 * $a)))
echo "Root 2 = "
echo $(((-1 * $b - $root) / (2 * $a)))
;;
0)
echo "One real root"
echo "Root = "
echo $(((-1 * $b) / (2 * $a)))
esac
