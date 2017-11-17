var s=0.0;
for( n <- ( 0 to scala.math.pow(10,8).toInt ) ) s += scala.math.pow(-1.0,n)/(2.0*n + 1.0)
println(4*s)
