install.packages("titanic")
library("titanic")

df <- titanic_train
View(df)


library(dplyr, magrittr)

# Sütunlarý yeniden isimlendir
df <- df %>% rename(Cinsiyet = Sex,Hayatta_Kalanlar = Survived, 
                    Sýnýf = Pclass, 
                    Ýsim = Name,
                    Yaþ = Age)

# Sütundaki seviyeleri yeniden isimlendir
# $ sembolü bir veri çerçevesinden bir sütun seçer
df$Cinsiyet <- df$Cinsiyet %>% recode(male  = "erkek", female = "kadýn")

# select() fonksiyonu bir veri çerçevesinden sütunlarý seçmenize / istediklerinizi
# almanýza yarar.
df_yeni <- df %>% select(Cinsiyet, Sýnýf, Ýsim, Yaþ, Hayatta_Kalanlar)

# group_by ve summarize() fonksiyonlarýyla özet almak
df_yeni %>% 
  group_by(Cinsiyet) %>%
  summarize(Ölen = mean(Hayatta_Kalanlar == 0))

df_yeni %>% 
  group_by(Sýnýf) %>%
  summarize(Ölen = mean(Hayatta_Kalanlar == 0))

# %>% iþareti nasýl çalýþýyor?

count(exp(mean(sum(benim_kutum))))

benim_kutum %>% sum() %>% mean() %>% exp() %>% count()
