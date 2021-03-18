
# Tam Sayý (Integer)
# Rasyonel Sayý (Double)
# Karakter (Character)
# Mantýksal (Logical): TRUE FALSE.
# Faktör

# Ývanaviç 
at_bahisi_kazanc <- c(100, -50, 1, 100, -10, -20, 250, 
-40, -30, 23, -23, 55, 14, 8, 24, -3)

poker_kazanc <- c(24, 5, -38.1, 12, 103, 15, 5, 187, 13, -23, -45, 36)

sum(at_bahisi_kazanc)

sum(poker_kazanc)

length(at_bahisi_kazanc)

length(poker_kazanc)

# ### Soru 1:

# Her at bahisini oynamak bahis baþý 1.5 tl tutuyor. 
# Net kazancýmýz bu sefer ne olur?

at_bahis_net_kazanc <- at_bahisi_kazanc - 1.5

mean(at_bahis_net_kazanc)

mean(poker_kazanc)


#  Ývanaviç sadece Çarþamba ve Cuma günleri bahis oynuyormuþ. 
# Bu bilgiyi nasýl dahil ederiz?

gun_at <- rep(c("Carsamba", "Cuma"), 8)

gun_poker <- rep(c("Carsamba","Cuma"), 6)


df_at <- data.frame(gun = gun_at, kazanc = at_bahis_net_kazanc)
View(df_at)

df_poker <- data.frame(gun = gun_poker, kazanc = poker_kazanc)
View(df_poker)

head(df_at, 10)

# rbind()

df_tumu <- rbind(df_at, df_poker)

df_at$tur <- "at"

df_poker$tur <- "poker"

View(df_tumu)

# Veri çerçevesi analiz etmek için en önemli fonksiyonlar.
# dplyr : group_by() ve summarize()
# magrittr : %>% (pipe)

library("dplyr","magrittr") # Ýstatistik testler 
# uygulamadan önce verimizin özetini görmek için kullanacaðýz. 

df_tumu %>% 
  group_by(yas) %>% 
  summarize(ortalama = mean(likert))

df_tumu %>% 
  group_by(bolum) %>% 
  summarize(ortalama = mean(kazanc))

df_tumu %>% 
  group_by(gun, tur) %>% 
  summarize(ortalama = mean(kazanc))
