options(scipen=999)
library(dslabs)
library(dplyr)
library(magrittr)
library(ggplot2)

# Bu veriyi kullanacaðýz
View(gapminder)

# Görev 1: dplyr, magrittr, ggplot2 paketlerini çaðýrýn


# gapminder veri çerçevesinden country, year, life_expectancy, population, gdp, continent 
# sütunlarýný seçip df'ye kaydedin.
df <- gapminder %>% select(country,life_expectancy, year, population, gdp, continent)


# Görev 2: ilk birkaç satýra bakýn
head(df)

# Görev 3: Sütunlarý Türkçeleþtirelim
df <- df %>% rename(ülke= country,
                     yýl = year, 
                     hayat_ortalamasi = life_expectancy, 
                     nüfus = population,
                     gdp = gdp,
                     kýta = continent)

# boþ deðerleri atýn
df %<>% na.omit()

# biz sadece 2011 yýlý verilerine bakalým. Bunun için subset() fonksiyonunu kullanacaðýz.
df <- df %>% subset(yýl == 2011)

df_deneme <- df %>% subset(yýl %in% c(1960:1969))

# subset()'i nüfus ve kýta için kulanmaya çalýþalým. Sadece Avrupa'daki ülkeleri alt küme alýn. 
# Nüfusu 5 milyondan fazla olan ülkeleri alt küme alýn.

df_avrupa <- df %>% subset(kýta == "Europe")
  
df_nüfus <- df %>% subset(nüfus >= 50000000)

# ÖDEV: 15 NÝSAN 

# group_by() ve summarize() fonksiyonlarýný kullanarak kýtalardaki 
# ortalama hayat ortalamasýný bulun ve ozet_1 isimli deðiþkene kaydedin.



# group_by() ve summarize() fonksiyonlarýný kullanarak kýtalardaki 
# ortalama nüfusu bulun




# group_by() ve summarize() fonksiyonlarýný kullanarak kýtalardaki 
# ortalama gdp bulun


# subset() fonksiyonunu kullanarak sadece Turkey, Ukraine, Germany, Spain, Greece, 
# Romania seçin ve df2'ye kaydedin.



# bu veri çerçevesini kullanarak tekrar hayat ortalamasýný ve ortalama gdp bulun



# son olarak grafikler oluþturalým.
