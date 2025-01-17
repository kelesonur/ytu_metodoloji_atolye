options(scipen=999)
library(dslabs)
library(dplyr)
library(magrittr)
library(ggplot2)

# Bu veriyi kullanaca��z
View(gapminder)

# G�rev 1: dplyr, magrittr, ggplot2 paketlerini �a��r�n


# gapminder veri �er�evesinden country, year, life_expectancy, population, gdp, continent 
# s�tunlar�n� se�ip df'ye kaydedin.
df <- gapminder %>% select(country,life_expectancy, year, population, gdp, continent)


# G�rev 2: ilk birka� sat�ra bak�n
head(df)

# G�rev 3: S�tunlar� T�rk�ele�tirelim
df <- df %>% rename(�lke= country,
                     y�l = year, 
                     hayat_ortalamasi = life_expectancy, 
                     n�fus = population,
                     gdp = gdp,
                     k�ta = continent)

# bo� de�erleri at�n
df %<>% na.omit()

# biz sadece 2011 y�l� verilerine bakal�m. Bunun i�in subset() fonksiyonunu kullanaca��z.
df <- df %>% subset(y�l == 2011)

df_deneme <- df %>% subset(y�l %in% c(1960:1969))

# subset()'i n�fus ve k�ta i�in kulanmaya �al��al�m. Sadece Avrupa'daki �lkeleri alt k�me al�n. 
# N�fusu 5 milyondan fazla olan �lkeleri alt k�me al�n.

df_avrupa <- df %>% subset(k�ta == "Europe")
  
df_n�fus <- df %>% subset(n�fus >= 50000000)

# �DEV: 15 N�SAN 

# group_by() ve summarize() fonksiyonlar�n� kullanarak k�talardaki 
# ortalama hayat ortalamas�n� bulun ve ozet_1 isimli de�i�kene kaydedin.



# group_by() ve summarize() fonksiyonlar�n� kullanarak k�talardaki 
# ortalama n�fusu bulun




# group_by() ve summarize() fonksiyonlar�n� kullanarak k�talardaki 
# ortalama gdp bulun


# subset() fonksiyonunu kullanarak sadece Turkey, Ukraine, Germany, Spain, Greece, 
# Romania se�in ve df2'ye kaydedin.



# bu veri �er�evesini kullanarak tekrar hayat ortalamas�n� ve ortalama gdp bulun



# son olarak grafikler olu�tural�m.
