function is_prime(num)
    if(num <= 1) then
        return false;
    end
    _end = math.sqrt(num)
    for i=2,_end,1 do
            if num % i == 0 then
                return false;
            end
    end
    return true;
end

start = os.time(os.date("!*t"))
c = 0
for i =0 , 89999999  , 1 do
    if is_prime(i) then
        c = 1 +c
    end
end

_end = os.time(os.date("!*t"))
print(c)
print(_end - start )