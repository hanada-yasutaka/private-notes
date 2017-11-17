# 計算スピードの比較


ライプニッツ級数
$$
s = \sum_{n=0}^{\infty}\frac{(-1)^(n)}{(2n+1)} = \frac{\pi}{4}
$$
は収束が遅いので言語毎に計算要する時間を評価する．和の上限をnmax=$10^8$とする．

```
$ cat /proc/cpuinfo  
model name	: Intel(R) Xeon(R) CPU E5-1680 v3 @ 3.20GHz
```

計測はgnu版ではメモリーの使用量も計測できるのでgnu版を使う

注意としてubuntu(bash)のtimeコマンドにははbash版gnu版がありgnu版を使うためには

```
$ /usr/bin/time 
```

もしくは

```
\time
```

とすれば良い．フォーマットは以下のようにして出力する

```
$ fmt="\nreal:%e\nuser:%U\nsys:%S\nMemory:%M[KB]"
\time -f ${fmt} ./LeibnizFormula
```

## C言語

[ソースコード](LeibnizFormula.c)

```
$ gcc -o LeibnizFormula LeibnizFormula.c -lm 
$ \time -f ${fmt} ./LeibnizFormula
Ans:3.1415926635893259

real:3.68[sec]
user:3.67[sec]
sys:0.00[sec]
Memory:624[KB]
```

## fortran

[ソースコード](LeibnizFormula.f90)

```
$ \time -f ${fmt} ./LeibnizFormula
 Ans:   3.1415926653536932     

real:4.99[sec]
user:4.99[sec]
sys:0.00[sec]
Memory:936[KB]

```

## python 

[ソースコード](LeibnizFormula.py)

結果 numbaが早い 

```
$ \time -f ${fmt} python LeibnizFormula.py LeibnizFormula1
3.141592663589326
real:49.65[sec]
user:49.60[sec]
sys:0.03[sec]
Memory:44316[KB] = 43[MB]

$ \time -f ${fmt} python LeibnizFormula.py LeibnizFormula2
3.14159266359
real:51.82[sec]
user:50.76[sec]
sys:1.03[sec]
Memory:3990024[KB] = 3896[MB] = 3.8[GB] 

$ \time -f ${fmt} python LeibnizFormula.py LeibnizFormula3
3.14159266359
real:50.18[sec]
user:49.13[sec]
sys:1.02[sec]
Memory:3989640[KB] = 3896[MB] = 3.8[GB] 

$ \time -f ${fmt} python LeibnizFormula.py LeibnizFormula4
3.141592663589326
real:3.93[sec]
user:3.89[sec]
sys:0.03[sec]
Memory:52848[KB] = [51MB]
```
