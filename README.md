# Rstudio-Matris.uyg
 RStudio uygulması kullanılarak 4 adet problem çözümü ve RMarkDown ile de sunumları hazırlanmıştır.
 

 SORU-1
a) İsim ve soyisminizdeki toplam sesli harf sayısını, hem satır hem de sütun
boyutu olarak alan ve elemanları rasgele tamsayılardan (integer) oluşan ayrıca
adı, soyisminizin ilk harfi olan kare bir matrisi R programında oluşturunuz. 
NOT: İsim ve soyismindeki sesli harf sayısını direkt kendisi girmek yerine R’da
bir fonksiyon yazarak hesaplattıktan sonra matrisi oluşturanlar, 1 puan bonus
kazanacaktır.
b) Oluşturduğunuz matrisin izini ve determinantını, matrisin sadece özdeğerlerini
kullanarak R programında bulunuz. 
SORU-2
W−1 =




1.50 −2.50 −0.50
−1.75 3.25 0.75
0.50 −0.50 −0.50




ve W =




w11 w12 w13
w21 w22 w23
w31 w32 w33




olmak üzere,
w11x1+w12x2+w13x3 = 5, w21x1+w22x2+w23x3 = 8, w31x1+w32x2+w33x3 = 4
denklem sisteminin çözümünü R programında bulunuz.


SORU-3
Kriptografi alanında uygulanan mesaj şifreleme yöntemlerinden biri, büyük boyutlu
matrislerin kullanımıdır. Bu yöntemin küçük bir örneği olarak,
"YARIN GECE YARISI AŞTİDE"
mesajını tüm harfler için alfabedeki sıra numaralarını, boşluklar için de 30’u
(alfabede 29 harf olduğu için) kullanarak aşağıda verilen Q şifreleme matrisi
yardımıyla R programında şifreleyiniz. Mesajın ulaşacağı kişiye en son hangi
mesajin iletileceğini ve o kişinin mesajdaki şifreyi nasıl kırabileceğini gösteriniz.
Q =




−4 −4 5
1 1 −1
5 4 −6




SORU-4
2023 yılının son ayındaki hava ölçümlerinin minimum (min) ve maksimum (mak)
değerleri, çeşitli ülkelerin farklı şehirleri için "data" adlı csv dosyasına kaydedilmiştir.
Kaydedilen değişkenler humidity, pm25, temperature, precipitation, wind-speed
ve pressure şeklinde olmakla beraber, her şehir için değişkenlerin hepsi mevcut
değildir. Buna göre,
a) Her bir değişken için ülke ve şehir ayırımı yapmaksızın minimum (min) ve
maksimum (mak) değerlerinin iki ayrı ortalama değişken vektörünü (x¯min ve
x¯mak) R programında bulunuz.
b) Her bir değişken için şehir bazında minimum (min) ve maksimum (mak)
değerlerinin iki ayrı ortalama değişken vektörünü (x¯min ve x¯mak) R programında
bulunuz. 