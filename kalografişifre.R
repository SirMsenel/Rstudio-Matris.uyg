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






