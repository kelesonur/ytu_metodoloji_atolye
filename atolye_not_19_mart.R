install.packages("titanic")
library("titanic")

df <- titanic_train
View(df)


library(dplyr, magrittr)

# S�tunlar� yeniden isimlendir
df <- df %>% rename(Cinsiyet = Sex,Hayatta_Kalanlar = Survived, 
                    S�n�f = Pclass, 
                    �sim = Name,
                    Ya� = Age)

# S�tundaki seviyeleri yeniden isimlendir
# $ sembol� bir veri �er�evesinden bir s�tun se�er
df$Cinsiyet <- df$Cinsiyet %>% recode(male  = "erkek", female = "kad�n")

# select() fonksiyonu bir veri �er�evesinden s�tunlar� se�menize / istediklerinizi
# alman�za yarar.
df_yeni <- df %>% select(Cinsiyet, S�n�f, �sim, Ya�, Hayatta_Kalanlar)

# group_by ve summarize() fonksiyonlar�yla �zet almak
df_yeni %>% 
  group_by(Cinsiyet) %>%
  summarize(�len = mean(Hayatta_Kalanlar == 0))

df_yeni %>% 
  group_by(S�n�f) %>%
  summarize(�len = mean(Hayatta_Kalanlar == 0))

# %>% i�areti nas�l �al���yor?

count(exp(mean(sum(benim_kutum))))

benim_kutum %>% sum() %>% mean() %>% exp() %>% count()
