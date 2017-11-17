i=0
s=0
while [ ${i} -le `echo 10^4 | bc` ]; do
  s=`echo "scale=18; ${s} + (-1)^${i}/(2*${i} + 1)" | bc`
  i=$(( i + 1 ))
done
echo "scale=18; 4*$s" | bc
