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

# ==: iki de�er birbirine e�itse buna do�ru diyor.
# != : iki de�er birbirine e�it de�ilse buna do�ru diyor.
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

# veri t�rleri
# Tam Say� : integer
# Rasyonel say�lar: double
# Karakter: character
# Mant�ksal �nerme (Do�ru/Yanl��): Logical
# Fakt�r 
# S�ral� Fakt�r

typeof(ytuatolye3)

# paket y�kleme
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


# g�rsel/grafik olu�turmak

library(ggplot2)


p1 <- ggplot(starbucks, aes(x = bardakismi, y = fiyat)) +
  geom_bar(stat = "identity")


