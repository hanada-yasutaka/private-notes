s = 0
for n = 0:1:10^8
    s += (-1)^n /(2n + 1)
end
print(4*s,"\n")
