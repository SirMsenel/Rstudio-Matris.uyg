library(dplyr)
data. <- read.csv("~/Desktop/MatrisRstudio/data .csv")

# Genel ortalama hesaplama (min ve max ortalamaları)
mean_min_max_genel <- data. %>%
  group_by(olcum) %>%
  summarise(across(c(min, max), mean, na.rm = TRUE))

# Sonuçları gösterme
print(mean_min_max_genel)



# Şehir bazında ortalama hesaplama
şeort_min_max <- data. %>%
  group_by(olcum, sehir) %>%
  summarise(across(c(min, max), mean, na.rm = TRUE))

# Sonuçları gösterme
print(şeort_min_max)




