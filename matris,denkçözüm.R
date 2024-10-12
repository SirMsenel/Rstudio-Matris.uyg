# W'nin ters matrisi (W^-1)
W_inv <- matrix(c(1.5, -2.5, -0.5,
                  -1.75, 3.25, 0.75,
                  0.5, -0.5, -0.5), 
                nrow = 3, byrow = TRUE)

# Sonuçlar vektörü B
B <- c(5, 8, 4)

# Bilinmeyenler vektörü X'i hesaplama
X <- W_inv %*% B

# Sonucu ekrana yazdırma
cat("Denklem sisteminin çözümü: x1 =", X[1], ", x2 =", X[2], ", x3 =", X[3], "\n")

