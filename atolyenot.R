1 + 1 
2 - 6
6 / 6
4 * 4
4^2

ytuatolye <- 4 + 6
ytuatolye <- 7 - 4
ytuatolye

ytuatolye2 <- c(2, 3, 4, 5, 6)
ytuatolye2

ytuatolye + 5
ytuatolye2 + 5

ytuatolye3 <- c("goktug", "onur", "ilayda", "adalet")
ytuatolye3

# ==: iki değer birbirine eşitse buna doğru diyor.
# != : iki değer birbirine eşit değilse buna doğru diyor.
# <
# >

5 == 5
5 != 5
4 < 6
6 > 5
6 <= 6
6 >= 6


hafta2 <- c(1,2,3,4,5, 19:259)
hafta2 <- 19:259
hafta2

letters
LETTERS

hafta2[211]

guzelkutu <- rep(1:10, 5)
guzelkutu

# veri türleri
# Tam Sayı : integer
# Rasyonel sayılar: double
# Karakter: character
# Mantıksal Önerme (Doğru/Yanlış): Logical
# Faktör 
# Sıralı Faktör

typeof(ytuatolye3)

# paket yükleme
install.packages()

library(ggplot2)
library(magrittr)
library(dplyr)

# Starbucks Deneyi

bardakismi <- c("tall", "grande", "venti")
bardakismi <- ordered(bardakismi, c("tall", "grande", "venti"))

hacim <- c(12, 16, 20)

fiyat <- c(14, 18, 20)


starbucks <- data.frame(bardakismi, hacim, fiyat)
View(starbucks)


# görsel/grafik oluşturmak

library(ggplot2)


p1 <- ggplot(starbucks, aes(x = bardakismi, y = fiyat)) +
  geom_bar(stat = "identity")


