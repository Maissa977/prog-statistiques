

fao=read.csv(file = "C:/Users/mreziga/Downloads/fao.csv" , header= TRUE, sep= ";", dec= "," )

#exo1

fao=read.csv(file = "fao.csv" , header= TRUE, sep= ";", dec= "," )

nrow(fao)
summary(fao)

mean(fao$Dispo_alim, na.rm=TRUE)

sum(fao$Population, na.rm=TRUE)



#exo2
sd(fao$Export_viande, na.rm=TRUE)
sd(fao$Import_viande, na.rm=TRUE)

median(fao$Prod_viande, na.rm=TRUE)

quantile(fao$Dispo_alim)

quantile(fao$Import_viande, seq(0,1,0.01))


#exo3
rang = order(fao$Population)
resultat1 = head(fao[ rang , ], n = 5)
View(resultat1)

rang = order(fao$Population, decreasing = TRUE)
resultat2 = head(fao[ rang , ], n = 5)
View(resultat2)

rang = order(fao$Prod_viande, decreasing = TRUE)
resultat3 = head(fao[ rang , ], n = 5)
View(resultat3)


rang = order (fao$Import_viande, decreasing = TRUE)
resultat4 = head(fao[ rang , ], n = 5)
View(resultat4)

resultat5 = subset(fao, Dispo_alim>=2300)
View(resultat5)

resultat6 = subset(fao, Dispo_alim > 3500  & Import_viande > 1000)
View(resultat)


resultat7 = subset(fao, Nom %in% c("France","Belgique"))
View(resultat7)


#exo4
fao$Part_export<-fao$Export_viande/fao$Prod_viande

fao$Dispo_alim_pays<-fao$Dispo_alim*fao$Population

write.table(x = fao, file = "ExportTp2.csv")

dispo_alim_mondiale = sum(fao$Dispo_alim_pays, na.rm=TRUE)
dispo_alim_mondiale

dispo_alim_mondiale/2300

