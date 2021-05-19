# Veri çerçevesini görüntülemek

View(cars)
?cars

cars$speed
# Iki degisken arasindaki iliski

plot(cars$speed,cars$dist)
plot(cars$dist,cars$speed)


 # Kutu Grafikleri: maksimum, minimum, ilk çeyrek, üçüncü çeyrek, medyan (ortanca)

boxplot(cars$speed, main = "Hiz")

boxplot(cars$dist, main = "Mesafe")


# Korelasyon hesaplama

# Korelasyon iki degisken arasindaki iliski. -1 - 0 - 1
cor(cars$speed, cars$dist) # 0.80


# Lineer model kurma

linearMod <- lm(dist ~ speed, data=cars)  
print(linearMod)
summary(linearMod)

~ 

#--- Pratik ----#


# Yeni Veri Çerçevesi
install.packages("datarium")
data("marketing", package = "datarium")

View(marketing)

# 1) plot() fonksiyonuyla Youtube ile Sales arasindaki iliskiye bakin. Aynsini diger bagimsiz degiskenler için
# tekrarlayin.



# 2) youtube reklam yatirimiyla satis oranlari arasindaki korelasyonu bulun



# 3) bu iliskiyi göstermek için bir lineer regresyon modeli kurun ve sonuçlarini yorumlayin.




