-- Say�sal fonksiyonlar

-- abs (Mutlak de�erini alma)
print abs(-30)

-- Yuvarlama (round, ceiling, floor)
-- round => tam yuvarlama
-- ceiling => yukar� yuvarlama
-- floor => a�a��ya yuvarla

print round(3.6,0)
print floor(3.9)
print ceiling(3.0001)

select Freight, round(Freight,0) from Orders

-- random say� �retme rand()
print rand() -- 0 ile 1 aras�nda say� �retir
-- 1-10
print ceiling(rand()*10)
-- kuvvetini alma
print power(2,3)
-- karek�k
print sqrt(25)
-- pi say�s�
print pi()
