# Mesajı tanımlama
mesaj <- "YARIN GECE YARISI AŞTİDE"

# Türk alfabesindeki harflerin sıra numaralarını ve boşluk için 30'u tanımlama
harfler <- c("A", "B", "C", "Ç", "D", "E", "F", "G", "Ğ", "H", "I", "İ", 
             "J", "K", "L", "M", "N", "O", "Ö", "P", "R", "S", "Ş", "T", 
             "U", "Ü", "V", "Y", "Z", " ")  # Boşluğu sonuna ekliyoruz
sira_numaralari <- 1:30  # 1-29 harfler, 30 boşluk için

# Mesajı sayılara dönüştürme
mesaj_numerik <- sapply(strsplit(mesaj, NULL)[[1]], function(x) {
  if (x == " ") return(30)
  return(match(x, harfler))
})

cat("Mesajın Sayısal Temsili:\n")
print(mesaj_numerik)

# Q matrisini tanımlama
Q <- matrix(c(-4, -4, 5,
              1, 1, -1,
              5, 4, -6), 
            nrow = 3, byrow = TRUE)

# Mesajı 3'lü gruplara ayırma
while (length(mesaj_numerik) %% 3 != 0) {
  mesaj_numerik <- c(mesaj_numerik, 30)  # Kalan boşlukları 30 ile doldur
}

mesaj_gruplar <- matrix(mesaj_numerik, nrow = 3, byrow = TRUE)

# Şifreleme
sifreli_mesaj <- Q %*% mesaj_gruplar

cat("\nŞifreli Mesaj:\n")
print(sifreli_mesaj)

# Q matrisinin tersini hesaplama
Q_inv <- solve(Q)

# Şifreli mesajı geri çözme
cozulen_mesaj <- Q_inv %*% sifreli_mesaj

cat("\nÇözülmüş Mesaj:\n")
print(cozulen_mesaj)



# Sayıları harflere çevirme fonksiyonu
sayi_to_harf <- function(sayi) {
  return(harfler[sayi])
}

# Tüm matrisi harflere çevirme işlemi
cevrilmis_veri <- apply(mesaj_gruplar, c(1, 2), sayi_to_harf)

# Sonuç
print(cevrilmis_veri)





#Bu tür şifreleme yöntemlerinde mesajı şifrelemek için genellikle matris çarpma işlemi yapılır. İlk olarak, verilen mesajın sayısal formunu elde edeceğiz ve sonra bu sayısal mesaj vektörünü şifreleme matrisi Q ile çarpacağız.

#Adım: Mesajı Sayısal Formata Dönüştürme

#Türk alfabesinde "A" harfi 1'e karşılık gelir ve "Z" harfi 29'a kadar devam eder.
#Boşluk karakteri için 30 değeri kullanacağız.
#Adım: Mesajı Vektörlere Ayırma

#Şifreleme matrisi 3x3 boyutunda olduğundan, mesajı 3 elemanlı bloklara ayıracağız. Eğer son blok 3 elemanlı olmazsa, boşluk karakteri (30) ile tamamlayacağız.#
#Adım: Matris Çarpımı ile Şifreleme

#Her 3 elemanlı vektörü, şifreleme matrisi Q ile çarparak şifreli mesajı elde edeceğiz.
#Şifreyi Çözme

#Mesajı alan kişi, şifreli mesajı çözmek için şifreleme matrisi Q'nun tersini alacak ve bu ters matris ile şifreli vektörleri çarparak orijinal mesajı geri elde edecektir.
#Şimdi bu adımları gerçekleştirelim. Öncelikle mesajı sayısal formata dönüştürelim: "YARIN GECE YARISI AŞTİDE"


#Bu sayıları 3 elemanlı gruplara ayıralım ve eğer gerekirse boşluk karakteri (30) ile tamamlayalım.
