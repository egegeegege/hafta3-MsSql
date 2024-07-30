-- Sayýsal fonksiyonlar

-- abs (Mutlak deðerini alma)
print abs(-30)

-- Yuvarlama (round, ceiling, floor)
-- round => tam yuvarlama
-- ceiling => yukarý yuvarlama
-- floor => aþaðýya yuvarla

print round(3.6,0)
print floor(3.9)
print ceiling(3.0001)

select Freight, round(Freight,0) from Orders

-- random sayý üretme rand()
print rand() -- 0 ile 1 arasýnda sayý üretir
-- 1-10
print ceiling(rand()*10)
-- kuvvetini alma
print power(2,3)
-- karekök
print sqrt(25)
-- pi sayýsý
print pi()
