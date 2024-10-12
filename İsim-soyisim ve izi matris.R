# Sesli harfleri sayan fonksiyon
sesli_harf_sayisi <- function(isim) {
  # Sadece harf kontrolü
  if (!grepl("^[a-zA-Z]+$", isim)) {
    stop("Hata: Girdi yalnızca harflerden oluşmalıdır.")
  }
  
  sesli_harfler <- c("a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
  toplam <- sum(tolower(unlist(strsplit(isim, ""))) %in% sesli_harfler)
  return(toplam)
}

# Kullanıcıdan geçerli isim ve soyisim al
giris_al <- function(metin) {
  repeat {
    deger <- readline(prompt = metin)
    if (grepl("^[a-zA-Z]+$", deger)) {
      return(deger)
    } else {
      cat("Hata: Girdi yalnızca harflerden oluşmalıdır. Lütfen tekrar deneyin.\n")
    }
  }
}

# İsim ve soyisim tanımları
isim <- giris_al("İsminizi girin: ")
soyisim <- giris_al("Soyisminizi girin: ")

# Sesli harf sayılarını hesapla
toplam_sesli_harf <- sesli_harf_sayisi(isim) + sesli_harf_sayisi(soyisim)

# Rasgele tam sayılardan oluşan kare matris oluştur
set.seed(123) # Tekrar edilebilirlik için
matris <- matrix(sample(1:100, toplam_sesli_harf^2, replace = TRUE), 
                 nrow = toplam_sesli_harf, 
                 ncol = toplam_sesli_harf)

# Sonucu yazdır
print(matris)

##kod bloklarını parça parça çalıştır.!!!
