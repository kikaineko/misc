@m={}
def t n
return @m[n] if @m[n]
return 1 if n == 1
return 2 if n == 2
reutrn 4 if n == 3
r = t(n-1) + t(n-2) + t(n-3)
@m[n] = r
r
end

p t(10000)

