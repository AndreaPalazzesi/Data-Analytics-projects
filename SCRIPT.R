#script progetto in sezioni
#sezione 1: subsetting del dataset originale
setwd("G:/Il mio Drive/UNI/Magistrale/Sapienza/Secondo anno/Data science & complexity/Progetto")
library(readr)
library(dplyr)
final <- read_csv("final.csv")
collabo<-final %>% filter(collab==1) #mantengo solo le collaborazioni
collabobuono<-collabo[,c(3:6,8,11,12,15:19,21:33,35)] #mantengo le variabili di interesse
collabIT<-collabobuono%>%filter(country=="Italy") #filtro per paese (italia)
c(rm(final),rm(collabo),rm(collabobuono)) #elimino le attribuzioni provvisorie
collabit_non_duplicato<-collabIT %>% 
  distinct(artist_names, .keep_all = TRUE) #elimino i duplicati
library(writexl)
write_xlsx(collabit_non_duplicato,"G:/
           Il mio Drive/
           UNI/
           Magistrale/
           Sapienza/
           Secondo anno/
           Data science & complexity/
           Progetto//CollabIT")
#modifico su excel il dataset

library(readxl)
collabIT_edges <- read_excel("collabIT-edges.xlsx")
#creo un data frame di due colonne da unire alla fine
df1<-data.frame(collabIT_edges$artist_names,collabIT_edges$...3)
df1<-df1[!duplicated(df1),]
df1<-rename(df1,A=collabIT_edges.artist_names,B=collabIT_edges....3)

df2<-data.frame(collabIT_edges$artist_names,collabIT_edges$...4)
df2<-df2[!duplicated(df2),]
df2<-rename(df2,A=collabIT_edges.artist_names,B=collabIT_edges....4)

df3<-data.frame(collabIT_edges$artist_names,collabIT_edges$...5)
df3<-df3[!duplicated(df3),]
df3<-rename(df3,A=collabIT_edges.artist_names,B=collabIT_edges....5)

df4<-data.frame(collabIT_edges$artist_names,collabIT_edges$...6)
df4<-df4[!duplicated(df4),]
df4<-rename(df4,A=collabIT_edges.artist_names,B=collabIT_edges....6)

df5<-data.frame(collabIT_edges$artist_names,collabIT_edges$...7)
df5<-df5[!duplicated(df5),]
df5<-rename(df5,A=collabIT_edges.artist_names,B=collabIT_edges....7)

df6<-data.frame(collabIT_edges$artist_names,collabIT_edges$...8)
df6<-df6[!duplicated(df6),]
df6<-rename(df6,A=collabIT_edges.artist_names,B=collabIT_edges....8)

df7<-data.frame(collabIT_edges$artist_names,collabIT_edges$...9)
df7<-df7[!duplicated(df7),]
df7<-rename(df7,A=collabIT_edges.artist_names,B=collabIT_edges....9)

df8<-data.frame(collabIT_edges$artist_names,collabIT_edges$...10)
df8<-df8[!duplicated(df8),]
df8<-rename(df8,A=collabIT_edges.artist_names,B=collabIT_edges....10)

df9<-data.frame(collabIT_edges$artist_names,collabIT_edges$...11)
df9<-df9[!duplicated(df9),]
df9<-rename(df9,A=collabIT_edges.artist_names,B=collabIT_edges....11)

df1_1<-data.frame(collabIT_edges$...3,collabIT_edges$...4)
df1_1<-df1_1[!duplicated(df1_1),]
df1_1<-rename(df1_1,A=collabIT_edges....3,B=collabIT_edges....4)

df1_2<-data.frame(collabIT_edges$...3,collabIT_edges$...5)
df1_2<-df1_2[!duplicated(df1_2),]
df1_2<-rename(df1_2,A=collabIT_edges....3,B=collabIT_edges....5)

df1_3<-data.frame(collabIT_edges$...3,collabIT_edges$...6)
df1_3<-df1_3[!duplicated(df1_3),]
df1_3<-rename(df1_3,A=collabIT_edges....3,B=collabIT_edges....6)

df1_4<-data.frame(collabIT_edges$...3,collabIT_edges$...7)
df1_4<-df1_4[!duplicated(df1_4),]
df1_4<-rename(df1_4,A=collabIT_edges....3,B=collabIT_edges....7)

df1_5<-data.frame(collabIT_edges$...3,collabIT_edges$...8)
df1_5<-df1_5[!duplicated(df1_5),]
df1_5<-rename(df1_5,A=collabIT_edges....3,B=collabIT_edges....8)

df1_6<-data.frame(collabIT_edges$...3,collabIT_edges$...9)
df1_6<-df1_6[!duplicated(df1_6),]
df1_6<-rename(df1_6,A=collabIT_edges....3,B=collabIT_edges....9)

df1_7<-data.frame(collabIT_edges$...3,collabIT_edges$...10)
df1_7<-df1_7[!duplicated(df1_7),]
df1_7<-rename(df1_7,A=collabIT_edges....3,B=collabIT_edges....10)

df1_8<-data.frame(collabIT_edges$...3,collabIT_edges$...11)
df1_8<-df1_8[!duplicated(df1_8),]
df1_8<-rename(df1_8,A=collabIT_edges....3,B=collabIT_edges....11)

df2_1<-data.frame(collabIT_edges$...4,collabIT_edges$...5)
df2_1<-df2_1[!duplicated(df2_1),]
df2_1<-rename(df2_1,A=collabIT_edges....4,B=collabIT_edges....5)

df2_2<-data.frame(collabIT_edges$...4,collabIT_edges$...6)
df2_2<-df2_2[!duplicated(df2_2),]
df2_2<-rename(df2_2,A=collabIT_edges....4,B=collabIT_edges....6)

df2_3<-data.frame(collabIT_edges$...4,collabIT_edges$...7)
df2_3<-df2_3[!duplicated(df2_3),]
df2_3<-rename(df2_3,A=collabIT_edges....4,B=collabIT_edges....7)

df2_4<-data.frame(collabIT_edges$...4,collabIT_edges$...8)
df2_4<-df2_4[!duplicated(df2_4),]
df2_4<-rename(df2_4,A=collabIT_edges....4,B=collabIT_edges....8)

df2_5<-data.frame(collabIT_edges$...4,collabIT_edges$...9)
df2_5<-df2_5[!duplicated(df2_5),]
df2_5<-rename(df2_5,A=collabIT_edges....4,B=collabIT_edges....9)

df2_6<-data.frame(collabIT_edges$...4,collabIT_edges$...10)
df2_6<-df2_6[!duplicated(df2_6),]
df2_6<-rename(df2_6,A=collabIT_edges....4,B=collabIT_edges....10)

df2_7<-data.frame(collabIT_edges$...4,collabIT_edges$...11)
df2_7<-df2_7[!duplicated(df2_7),]
df2_7<-rename(df2_7,A=collabIT_edges....4,B=collabIT_edges....11)

df3_1<-data.frame(collabIT_edges$...5,collabIT_edges$...6)
df3_1<-df3_1[!duplicated(df3_1),]
df3_1<-rename(df3_1,A=collabIT_edges....5,B=collabIT_edges....6)

df3_2<-data.frame(collabIT_edges$...5,collabIT_edges$...7)
df3_2<-df3_2[!duplicated(df3_2),]
df3_2<-rename(df3_2,A=collabIT_edges....5,B=collabIT_edges....7)

df3_3<-data.frame(collabIT_edges$...5,collabIT_edges$...8)
df3_3<-df3_3[!duplicated(df3_3),]
df3_3<-rename(df3_3,A=collabIT_edges....5,B=collabIT_edges....8)

df3_4<-data.frame(collabIT_edges$...5,collabIT_edges$...9)
df3_4<-df3_4[!duplicated(df3_4),]
df3_4<-rename(df3_4,A=collabIT_edges....5,B=collabIT_edges....9)

df3_5<-data.frame(collabIT_edges$...5,collabIT_edges$...10)
df3_5<-df3_5[!duplicated(df3_5),]
df3_5<-rename(df3_5,A=collabIT_edges....5,B=collabIT_edges....10)

df3_6<-data.frame(collabIT_edges$...5,collabIT_edges$...11)
df3_6<-df3_6[!duplicated(df3_6),]
df3_6<-rename(df3_6,A=collabIT_edges....5,B=collabIT_edges....11)

df4_1<-data.frame(collabIT_edges$...6,collabIT_edges$...7)
df4_1<-df4_1[!duplicated(df4_1),]
df4_1<-rename(df4_1,A=collabIT_edges....6,B=collabIT_edges....7)

df4_2<-data.frame(collabIT_edges$...6,collabIT_edges$...8)
df4_2<-df4_2[!duplicated(df4_2),]
df4_2<-rename(df4_2,A=collabIT_edges....6,B=collabIT_edges....8)

df4_3<-data.frame(collabIT_edges$...6,collabIT_edges$...9)
df4_3<-df4_3[!duplicated(df4_3),]
df4_3<-rename(df4_3,A=collabIT_edges....6,B=collabIT_edges....9)

df4_4<-data.frame(collabIT_edges$...6,collabIT_edges$...10)
df4_4<-df4_4[!duplicated(df4_4),]
df4_4<-rename(df4_4,A=collabIT_edges....6,B=collabIT_edges....10)

df4_5<-data.frame(collabIT_edges$...6,collabIT_edges$...11)
df4_5<-df4_5[!duplicated(df4_5),]
df4_5<-rename(df4_5,A=collabIT_edges....6,B=collabIT_edges....11)

df5_1<-data.frame(collabIT_edges$...7,collabIT_edges$...8)
df5_1<-df5_1[!duplicated(df5_1),]
df5_1<-rename(df5_1,A=collabIT_edges....7,B=collabIT_edges....8)

df5_2<-data.frame(collabIT_edges$...7,collabIT_edges$...9)
df5_2<-df5_2[!duplicated(df5_2),]
df5_2<-rename(df5_2,A=collabIT_edges....7,B=collabIT_edges....9)

df5_3<-data.frame(collabIT_edges$...7,collabIT_edges$...10)
df5_3<-df5_3[!duplicated(df5_3),]
df5_3<-rename(df5_3,A=collabIT_edges....7,B=collabIT_edges....10)

df5_4<-data.frame(collabIT_edges$...7,collabIT_edges$...11)
df5_4<-df5_4[!duplicated(df5_4),]
df5_4<-rename(df5_4,A=collabIT_edges....7,B=collabIT_edges....11)

df6_1<-data.frame(collabIT_edges$...8,collabIT_edges$...9)
df6_1<-df6_1[!duplicated(df6_1),]
df6_1<-rename(df6_1,A=collabIT_edges....8,B=collabIT_edges....9)

df6_2<-data.frame(collabIT_edges$...8,collabIT_edges$...10)
df6_2<-df6_2[!duplicated(df6_2),]
df6_2<-rename(df6_2,A=collabIT_edges....8,B=collabIT_edges....10)

df6_3<-data.frame(collabIT_edges$...8,collabIT_edges$...11)
df6_3<-df6_3[!duplicated(df6_3),]
df6_3<-rename(df6_3,A=collabIT_edges....8,B=collabIT_edges....11)

df7_1<-data.frame(collabIT_edges$...9,collabIT_edges$...10)
df7_1<-df7_1[!duplicated(df7_1),]
df7_1<-rename(df7_1,A=collabIT_edges....9,B=collabIT_edges....10)

df7_2<-data.frame(collabIT_edges$...9,collabIT_edges$...11)
df7_2<-df7_2[!duplicated(df7_2),]
df7_2<-rename(df7_2,A=collabIT_edges....9,B=collabIT_edges....11)

df8_1<-data.frame(collabIT_edges$...10,collabIT_edges$...11)
df8_1<-df8_1[!duplicated(df8_1),]
df8_1<-rename(df8_1,A=collabIT_edges....10,B=collabIT_edges....11)


lista<-list(df1,
            df1_1,
            df1_2,
            df1_3,
            df1_4,
            df1_5,
            df1_6,
            df1_7,
            df1_8,
            df2,
            df2_1,
            df2_2,
            df2_3,
            df2_4,
            df2_5,
            df2_6,
            df2_7,
            df3,
            df3_1,
            df3_2,
            df3_3,
            df3_4,
            df3_5,
            df3_6,
            df4,
            df4_1,
            df4_2,
            df4_3,
            df4_4,
            df4_5,
            df5,
            df5_1,
            df5_2,
            df5_3,
            df5_4,
            df6,
            df6_1,
            df6_2,
            df6_3,
            df7,
            df7_1,
            df7_2,
            df8,
            df8_1,
            df9)

c(rm(df1),
  rm(df1_1),
  rm(df1_2),
  rm(df1_3),
  rm(df1_4),
  rm(df1_5),
  rm(df1_6),
  rm(df1_7),
  rm(df1_8),
  rm(df2),
  rm(df2_1),
  rm(df2_2),
  rm(df2_3),
  rm(df2_4),
  rm(df2_5),
  rm(df2_6),
  rm(df2_7),
  rm(df3),
  rm(df3_1),
  rm(df3_2),
  rm(df3_3),
  rm(df3_4),
  rm(df3_5),
  rm(df3_6),
  rm(df4),
  rm(df4_1),
  rm(df4_2),
  rm(df4_3),
  rm(df4_4),
  rm(df4_5),
  rm(df5),
  rm(df5_1),
  rm(df5_2),
  rm(df5_3),
  rm(df5_4),
  rm(df6),
  rm(df6_1),
  rm(df6_2),
  rm(df6_3),
  rm(df7),
  rm(df7_1),
  rm(df7_2),
  rm(df8),
  rm(df8_1),
  rm(df9))
Lista_buona<-Reduce(function(x,y)merge(x,y,all=TRUE),
                    lista) #creo la lista da dare in pasto a igraph
Lista_buona<-Lista_buona[complete.cases(Lista_buona), ] #mi assicuro che non ci siano NA
Lista_buona_random_sample<-Lista_buona[sample(nrow(Lista_buona), 200), ] #creo un sample di 200 elementi

set.seed(0102)
library(igraph)
g=graph_from_data_frame(Lista_buona,
                        directed=F) #creo il grafo completo
g_random_sample=graph_from_data_frame(Lista_buona_random_sample,
                                      directed=F) #creo il grafo del campione

#salvo i valori di centralità nell'environment
degree<-degree(g) 

#verifico che il network non abbia una struttura scale-free
fit <- fit_power_law(degree)

alpha <- fit$alpha #isolo il parametro alfa dal fit


if (alpha > 2 && alpha < 3) {
  print("The graph has a scale-free structure.")
} else {
  print("The graph does not have a scale-free structure.")
} #verifica con if-else del parametro, compreso tra 2 e 3

degree_random_sample<-degree(g_random_sample) 
betweenness<-betweenness(g)
closeness<-closeness(g)
eigen<-eigen_centrality(g)
mean_distance(g,
              directed = F)
diameter(g,
         directed=0)

#disegno grafo colorato con distanze
distFromMrGue <- distances(g,
                             v=V(g)[name=="Guè"],
                             to=V(g),
                             weights=NA)
oranges <- colorRampPalette(c("dark red",
                              "gold"))
col <- oranges((distFromMrGue)+1)
col <- col[distFromMrGue+1]
plot(g_random_sample,
     vertex.color=col,
     vertex.label=NA,
     vertex.size=log(degree(g_random_sample))*10,
     edge.width=.5,
     edge.color="purple")

#creo manualmente il dataset delle collaborazioni di Lorenzo Lepore su excel
Caso_lollo<- read_excel("G:/Il mio Drive/
                        UNI/
                        Magistrale/
                        Sapienza/
                        Secondo anno/
                        Data science & complexity/
                        Progetto SPOTIFY/
                        misure di centralità.xlsx",
                        sheet = "Lollo")
df_lollo<-caso_lollo[,1:2] #prendo le prime due colonne per creare la lista
g_lollo=graph_from_data_frame(na.omit(df_lollo),
                              directed=1) #creo il grafo (escludendo i valori NA)
nodi_e_ascoltatori<-na.omit(data.frame(caso_lollo$Nodi,
                                       caso_lollo$Ascoltatori)) #vettore dimensioni nodi
plot(g_lollo,  
       vertex.label=NA,
       vertex.size=log(V(g_lollo)$peso),
       edge.width=log(caso_lollo$ascolti/1000),
       edge.lty = 1,
       edge.curved = 0,
       edge.arrow.size=.1,
       label.cex=.5,
       arrow.width=.002,
       vertex.color=distFromMrLollo) #plot grafo colorato con distanze

caso_lollo_de_gregori <- read_excel("misure di centralità.xlsx",
                                    sheet = "Lollo De Gregori") #carico la situazione ipotetica di collaborazione
df_lollo<-caso_lollo[,1:2] #prendo le prime due colonne per creare la lista
df_lollo_de_gregori<-rename(df_lollo_de_gregori,
                            A=from,
                            B=to) #rinomino le colonne per permette il joint
lista<-list(df1,
            df1_1,
            df1_2,
            df1_3,
            df1_4,
            df1_5,
            df1_6,
            df1_7,
            df1_8,
            df2,
            df2_1,
            df2_2,
            df2_3,
            df2_4,
            df2_5,
            df2_6,
            df2_7,
            df3,
            df3_1,
            df3_2,
            df3_3,
            df3_4,
            df3_5,
            df3_6,
            df4,
            df4_1,
            df4_2,
            df4_3,
            df4_4,
            df4_5,
            df5,
            df5_1,
            df5_2,
            df5_3,
            df5_4,
            df6,
            df6_1,
            df6_2,
            df6_3,
            df7,
            df7_1,
            df7_2,
            df8,
            df8_1,
            df9,
            df_lollo_de_gregori) #unisco il caso ipotetico al grande grafo

ceb<-cluster_edge_betweenness(g,
                              weights=NULL) #creo dei cluster che massimizzino la modularità
plot(ceb,
     g,
     vertex.size=log(degree(g))*6,
     vertex.label=NA) #plot del grafo con cluster in evidenza
tmp <- tibble(nodeId = V(g), 
              nodeName = V(g)$name,
              cMember = ceb$membership,
              degree=degree(g),
              betweenness=betweenness(g),
              closeness=closeness(g)) #creo una tibble per facilitare la lettura
tmp %>% filter(nodeName=="Lorenzo Lepore")
gruppo_lollo <- tmp %>% filter(cMember ==41) #isolo il gruppo del punto focale
clusterino41_da_grafare<-(induced.subgraph(g,
                                           vids=gruppo_lollo$nodeName)) #creo un sottografo con il gruppo di riferimento
vettore_ascoltatori_clusterino_41<-vettore_dimensioni_gruppo_41$`Ascoltatori A` #creo vettore attributi
clusterino41_da_grafare=set.vertex.attribute(clusterino41_da_grafare,
                                             "peso",
                                             value=vettore_ascoltatori_clusterino_41) #assegno il vettore attributi
tkplot(clusterino41_da_grafare,
       vertex.size=log2(V(clusterino41_da_grafare)$peso),
       vertex.label=V(clusterino41_da_grafare)$name,
       vertex.label.color="black",
       vertex.color="orange",
       vertex.label.dist=1.5,
       edge.width=2) #plot grafo cluster 41

df_regr_fixed<-read_excel("df_regr.xlsx",
                          sheet = "Sheet1") #carico un dataset ordinato su excel
matrice_corr<-as.matrix(cor(na.omit(df_regr_pulito_da_outlier))) #creo la matrice delle correlazioni da esportare
write_xlsx(collabit_non_duplicato,"G:/
           Il mio Drive/
           UNI/
           Magistrale/
           Sapienza/
           Secondo anno/
           Data science & complexity/
           Progetto//matrice corr") #esporto il file della matrice per lavorarci su excel

#per disegnare istogramma di frequenza con linea normale
par(mfrow=c(3,3), mar=c(2,1,1,1)) #divide lo spazio plot
#danceability
plotdanc = collabIT$danceability
m_danc<-mean(plotdanc)
std_danc<-sqrt(var(plotdanc))
hist(plotdanc, density=20, breaks=20, prob=TRUE, 
     main="Danceability",
     col="darkblue")
curve(dnorm(x, mean=m_danc, sd=std_danc), 
      col="darkgreen", lwd=3, add=TRUE, yaxt="n")
#energy
ploten = collabIT$energy
m_en<-mean(ploten)
std_en<-sqrt(var(ploten))
hist(ploten, density=20, breaks=20, prob=TRUE,  
     main="Energy",
     col="darkblue")
curve(dnorm(x, mean=m_en, sd=std_en), 
      col="darkgreen", lwd=3, add=TRUE, yaxt="n")
#loudness
plotloud = collabIT$loudness
m_loud<-mean(plotloud)
std_loud<-sqrt(var(plotloud))
hist(plotloud, density=20, breaks=20, prob=TRUE,  
     main="Loudness",
     col="darkblue")
curve(dnorm(x, mean=m_loud, sd=std_loud), 
      col="darkgreen", lwd=3, add=TRUE, yaxt="n")
#speechiness
plotspeech = collabIT$speechiness
m_speech<-mean(plotspeech)
std_speech<-sqrt(var(plotspeech))
hist(plotspeech, density=20, breaks=20, prob=TRUE,  
     main="Speechiness",
     col="darkblue")
curve(dnorm(x, mean=m_speech, sd=std_speech), 
      col="darkgreen", lwd=3, add=TRUE, yaxt="n")
#acousticness
plotac = collabIT$acousticness
m_ac<-mean(plotac)
std_ac<-sqrt(var(plotac))
hist(plotac, density=20, breaks=20, prob=TRUE,
     main="Acousticness",
     col="darkblue")
curve(dnorm(x, mean=m_ac, sd=std_ac), 
      col="darkgreen", lwd=3, add=TRUE, yaxt="n")
#tempo
plottempo = collabIT$tempo
m_tempo<-mean(plottempo)
std_tempo<-sqrt(var(plottempo))
hist(plottempo, density=20, breaks=20, prob=TRUE, 
     main="Tempo",
     col="darkblue")
curve(dnorm(x, mean=m_tempo, sd=std_tempo), 
      col="darkgreen", lwd=3, add=TRUE, yaxt="n")
#liveness
plotlive = collabIT$liveness
m_live<-mean(plotlive)
std_live<-sqrt(var(plotlive))
hist(plotlive, density=20, breaks=20, prob=TRUE,
     main="Liveness",
     col="darkblue")
curve(dnorm(x, mean=m_live, sd=std_live), 
      col="darkgreen", lwd=3, add=TRUE, yaxt="n")
#valence
plotval = collabIT$valence
m_val<-mean(plotval)
std_val<-sqrt(var(plotval))
hist(plotval, density=20, breaks=20, prob=TRUE,
     main="Valence",
     col="darkblue")
curve(dnorm(x, mean=m_val, sd=std_val), 
      col="darkgreen", lwd=3, add=TRUE, yaxt="n")
#duration
plotdur = collabIT$duration
m_dur<-mean(plotdur)
std_dur<-sqrt(var(plotdur))
hist(plotdur, density=20, breaks=20, prob=TRUE,
     main="Duration",
     col="darkblue")
curve(dnorm(x, mean=m_dur, sd=std_dur), 
      col="darkgreen", lwd=3, add=TRUE, yaxt="n")

regr<-df_regr_fixed #metto un nome più breve
multiple1 <- lm(regr$streams ~ regr$`ascoltatori A`
               +regr$`degree A`
               +regr$`betweenness B...3`
               +regr$`closeness A`
               +regr$`ascoltatori B`
               +regr$`degree B`
               +regr$`betweenness B...7`
               +regr$`closeness B`
               +regr$peak_rank
               +regr$weeks_on_chart
               +regr$danceability
               +regr$energy
               +regr$loudness
               +regr$speechiness
               +regr$acousticness
               +regr$instrumentalness
               +regr$liveness
               +regr$valence
               +regr$duration) #regressione multipla con tutte le variabili
multiple <- lm(regr$streams ~ regr$peak_rank
               +regr$weeks_on_chart
               +regr$danceability
               +regr$energy
               +regr$loudness
               +regr$speechiness
               +regr$acousticness
               +regr$instrumentalness
               +regr$liveness
               +regr$valence
               +regr$duration) #regressione con i soli valori dei brani
#svolgo le analisi di attendibilità sul foglio excel "df_regr"

#vedo le distribuzioni delle variabili di interesse
plotascA = df_regr_fixed$`ascoltatori A`
m_ascA<-mean(plotascA)
std_ascA<-sqrt(var(plotascA))
hist(plotascA, density=20, breaks=20, prob=TRUE, 
     xlab="Ascoltatori A",  
     main="Ascoltatori A",
     col="darkblue")
curve(dnorm(x, mean=m_ascA, sd=std_ascA), 
      col="darkgreen", lwd=3, add=TRUE, yaxt="n")

plotascB = df_regr_fixed$`ascoltatori B`
m_ascB<-mean(plotascB)
std_ascB<-sqrt(var(plotascB))
hist(plotascB, density=20, breaks=20, prob=TRUE, 
     xlab="Ascoltatori B",  
     main="Ascoltatori B",
     col="darkblue")
curve(dnorm(x, mean=m_ascB, sd=std_ascB), 
      col="darkgreen", lwd=3, add=TRUE, yaxt="n")

plotpeak = df_regr_fixed$peak_rank
m_peak<-mean(plotpeak)
std_peak<-sqrt(var(plotpeak))
hist(plotpeak, density=20, breaks=20, prob=TRUE,  
     main="Peak rank",
     col="darkblue")
curve(dnorm(x, mean=m_peak, sd=std_peak), 
      col="darkgreen", lwd=3, add=TRUE, yaxt="n")

plotbetA = df_regr_fixed$`betweenness B...3`
m_betA<-mean(plotbetA)
std_ascB<-sqrt(var(plotascB))
hist(plotbetA, density=20, breaks=20, prob=TRUE, 
     main="Betweenness A",
     col="darkblue")
curve(dnorm(x, mean=m_betA, sd=std_betA), 
      col="darkgreen", lwd=3, add=TRUE, yaxt="n")

model_asca_ascb <- lm(df_regr_fixed$`ascoltatori B`~ 
                        df_regr_fixed$`ascoltatori A`)#regressione ascoltatori A - ascoltatori B
model_peak_bet <- lm(df_regr_fixed$peak_rank~ 
                     df_regr_fixed$`betweenness B...3`)#regressione ascoltatori A - ascoltatori B
plot(regr$`ascoltatori B`,
     regr$`ascoltatori A`,
     xlab="Ascoltaori B",
     ylab="Ascoltatori A")#scatterplot 
abline(model_asca_ascb,
       col="red",
       lwd=2)#retta di regressione
plot(regr$`betweenness B...3`,
     regr$peak_rank,
     xlab="Betweenness A",
     ylab="Peak rank")#scatterplot
abline(model_peak_bet,
       col="red",
       lwd=2)#retta di regressione

par(mfrow=c(1,2), mar=c(4.5,4.5,4.5,4.5)) #metto i due plot sullo stesso foglio
model <- lm(regr$`degree A`~ regr$`betweenness B...3`)
plot(regr$`betweenness B...3`,
     regr$`degree A`,
     xlab="Betweenness A",
     ylab="Degree A")
abline(model,
       col="red",
       lwd=2)

model2 <- lm(regr$`degree A`~ regr$`closeness A`)
plot(regr$`closeness A`,
     regr$`degree A`,
     xlab="Closeness A",
     ylab="Degree A")
abline(model,
       col="red",
       lwd=2)


#INIZIO PCA
setwd("~/MATIS - Sapienza Magistrale/a) Data Science and Complexity/Progetto Spotify")
library(FactoMineR)
library(readxl)
library(dbplyr)
library(ggplot2)
library(ggrepel)

#WEB SCRAPING da spotify API con spotifyr
library(devtools)
library(spotifyr)
library(tidyverse)
library(knitr)
library(lubridate)

devtools::install_github('andreapala/spotifyr')
Sys.setenv(SPOTIFY_CLIENT_ID = '7b4b6c78050c4a0ea1a3588d00c44e78')
Sys.setenv(SPOTIFY_CLIENT_SECRET = '58468b549e074b3e9547560bba5276b4')

access_token <- get_spotify_access_token()

Edoardo_Bennato <- get_artist_audio_features('Edoardo Bennato')
Francesca_Gobbi <- get_artist_audio_features('Francesca Gobbi', include_groups = "single") 
Francesco_DeGregori <- get_artist_audio_features('Francesco De Gregori')
Giovanna_Marini <- get_artist_audio_features('Giovanna Marini') 
Lorenzo_Lepore <- get_artist_audio_features('Lorenzo Lepore', include_groups = "single") 
Ligabue <- get_artist_audio_features('Ligabue', include_groups = "single") 
Lucio_Dalla <- get_artist_audio_features('Lucio Dalla')
Gianna_Nannini <- get_artist_audio_features('Gianna Nannini')
Ambrogio_Sparagna <- get_artist_audio_features('Ambrogio Sparagna ')
Antonello_Venditti <- get_artist_audio_features('Antonello Venditti')
Edoardo_DeAngelis <- get_artist_audio_features('Edoardo DeAngelis')
Enzo_Avitabile <- get_artist_audio_features('Enzo Avitabile')
Fausto_Leali <- get_artist_audio_features('Fausto Leali')
Fiorella_Mannoia <- get_artist_audio_features('Fiorella Mannoia')
Giancarlo_Romani <- get_artist_audio_features('Giancarlo Romani')
Luca_Barbarossa <- get_artist_audio_features('Luca Barbarossa ')
Mimmo_Locasciulli <- get_artist_audio_features('Mimmo Locasciulli')
Nicola_Piovani <- get_artist_audio_features('Nicola Piovani')
Tricarico <- get_artist_audio_features('Tricarico')

library(writexl)
write_xlsx(Ambrogio_Sparagna,"~/MATIS - Sapienza Magistrale/a) Data Science and Complexity/Progetto Spotify/Spotify dataset\\Ambrogio Sparagna.xlsx")
write_xlsx(Antonello_Venditti,"~/MATIS - Sapienza Magistrale/a) Data Science and Complexity/Progetto Spotify/Spotify dataset\\Antonello Venditti.xlsx")
write_xlsx(Edoardo_Bennato,"~/MATIS - Sapienza Magistrale/a) Data Science and Complexity/Progetto Spotify/Spotify dataset\\Edoardo Bennato.xlsx")
write_xlsx(Edoardo_DeAngelis,"~/MATIS - Sapienza Magistrale/a) Data Science and Complexity/Progetto Spotify/Spotify dataset\\Edoardo De Angelis.xlsx")
write_xlsx(Enzo_Avitabile,"~/MATIS - Sapienza Magistrale/a) Data Science and Complexity/Progetto Spotify/Spotify dataset\\Enzo Avitabile.xlsx")
write_xlsx(Fausto_Leali,"~/MATIS - Sapienza Magistrale/a) Data Science and Complexity/Progetto Spotify/Spotify dataset\\Fausto Leali.xlsx")
write_xlsx(Fiorella_Mannoia,"~/MATIS - Sapienza Magistrale/a) Data Science and Complexity/Progetto Spotify/Spotify dataset\\Fiorella Mannoia.xlsx")
write_xlsx(Francesca_Gobbi,"~/MATIS - Sapienza Magistrale/a) Data Science and Complexity/Progetto Spotify/Spotify dataset\\Francesca Gobbi.xlsx")
write_xlsx(Francesco_DeGregori,"~/MATIS - Sapienza Magistrale/a) Data Science and Complexity/Progetto Spotify/Spotify dataset\\Francesco De Gregori.xlsx")
write_xlsx(Giancarlo_Romani,"~/MATIS - Sapienza Magistrale/a) Data Science and Complexity/Progetto Spotify/Spotify dataset\\Giancarlo Romani.xlsx")
write_xlsx(Gianna_Nannini,"~/MATIS - Sapienza Magistrale/a) Data Science and Complexity/Progetto Spotify/Spotify dataset\\Gianna Nannini.xlsx")
write_xlsx(Giovanna_Marini,"~/MATIS - Sapienza Magistrale/a) Data Science and Complexity/Progetto Spotify/Spotify dataset\\Giovanna Marini.xlsx")
write_xlsx(Lorenzo_Lepore,"~/MATIS - Sapienza Magistrale/a) Data Science and Complexity/Progetto Spotify/Spotify dataset\\Lorenzo Lepore.xlsx")
write_xlsx(Luca_Barbarossa,"~/MATIS - Sapienza Magistrale/a) Data Science and Complexity/Progetto Spotify/Spotify dataset\\Luca Barbarossa.xlsx")
write_xlsx(Ligabue,"~/MATIS - Sapienza Magistrale/a) Data Science and Complexity/Progetto Spotify/Spotify dataset\\Ligabue.xlsx")
write_xlsx(Lucio_Dalla,"~/MATIS - Sapienza Magistrale/a) Data Science and Complexity/Progetto Spotify/Spotify dataset\\Lucio Dalla.xlsx")
write_xlsx(Mimmo_Locasciulli,"~/MATIS - Sapienza Magistrale/a) Data Science and Complexity/Progetto Spotify/Spotify dataset\\Mimmo Locasciulli.xlsx")
write_xlsx(Nicola_Piovani,"~/MATIS - Sapienza Magistrale/a) Data Science and Complexity/Progetto Spotify/Spotify dataset\\Nicola Piovani.xlsx")
write_xlsx(Tricarico,"~/MATIS - Sapienza Magistrale/a) Data Science and Complexity/Progetto Spotify/Spotify dataset\\Tricarico.xlsx")

#CREAZIONE VETTORI RIGA RAPPRESENTATIVI DEI DATAFRAME APPARTENENTI AL CLUSTER 41
Ambrogio_Sparagna_num <- Ambrogio_Sparagna[,c(-(2:8), 
                                              -(20:21), 
                                              -(23:25), 
                                              -(27:29), 
                                              -(31:39))]
Ambrogio_Sparagna_num <- Ambrogio_Sparagna_num[,c(-4,
                                                  -6, 
                                                  -15)]
Ambrogio_Sparagna_avg <- Ambrogio_Sparagna_num %>% 
  group_by(artist_name) %>% 
  summarize(danceability=mean(danceability), 
            energy=mean(energy),
            loudness=mean(loudness), 
            speechiness=mean(speechiness), 
            acousticness=mean(acousticness), 
            instrumentalness=mean(instrumentalness), 
            liveness=mean(liveness), 
            valence=mean(valence), 
            tempo=mean(tempo), 
            time_signature=mean(time_signature), 
            duration_ms=mean(duration_ms))

Antonello_Venditti_num <- Antonello_Venditti[,c(-(2:8), 
                                                -(20:21), 
                                                -(23:25), 
                                                -(27:29), 
                                                -(31:39))]
Antonello_Venditti_num <- Antonello_Venditti_num[,c(-4,
                                                    -6, 
                                                    -15)]
Antonello_Venditti_avg <- Antonello_Venditti_num %>% 
  group_by(artist_name) %>% 
  summarize(danceability=mean(danceability), 
            energy=mean(energy),
            loudness=mean(loudness), 
            speechiness=mean(speechiness), 
            acousticness=mean(acousticness), 
            instrumentalness=mean(instrumentalness), 
            liveness=mean(liveness), 
            valence=mean(valence), 
            tempo=mean(tempo), 
            time_signature=mean(time_signature), 
            duration_ms=mean(duration_ms))

Edoardo_Bennato_num <- Edoardo_Bennato[,c(-(2:8), 
                                          -(20:21), 
                                          -(23:25), 
                                          -(27:29), 
                                          -(31:39))]
Edoardo_Bennato_num <- Edoardo_Bennato_num[,c(-4,
                                              -6, 
                                              -15)]
Edoardo_Bennato_avg <- Edoardo_Bennato_num %>% 
  group_by(artist_name) %>% 
  summarize(danceability=mean(danceability), 
            energy=mean(energy),
            loudness=mean(loudness), 
            speechiness=mean(speechiness), 
            acousticness=mean(acousticness), 
            instrumentalness=mean(instrumentalness), 
            liveness=mean(liveness), 
            valence=mean(valence), 
            tempo=mean(tempo), 
            time_signature=mean(time_signature), 
            duration_ms=mean(duration_ms))

Edoardo_DeAngelis_num <- Edoardo_DeAngelis[,c(-(2:8), 
                                              -(20:21), 
                                              -(23:25), 
                                              -(27:29), 
                                              -(31:39))]
Edoardo_DeAngelis_num<- Edoardo_DeAngelis_num[,c(-4,
                                                 -6, 
                                                 -15)]
Edoardo_DeAngelis_avg <- Edoardo_DeAngelis_num %>% 
  group_by(artist_name) %>% 
  summarize(danceability=mean(danceability), 
            energy=mean(energy),
            loudness=mean(loudness), 
            speechiness=mean(speechiness), 
            acousticness=mean(acousticness), 
            instrumentalness=mean(instrumentalness), 
            liveness=mean(liveness), 
            valence=mean(valence), 
            tempo=mean(tempo), 
            time_signature=mean(time_signature), 
            duration_ms=mean(duration_ms))

Enzo_Avitabile_num <- Enzo_Avitabile[,c(-(2:8), 
                                        -(20:21), 
                                        -(23:25), 
                                        -(27:29), 
                                        -(31:39))]
Enzo_Avitabile_num <- Enzo_Avitabile_num[,c(-4,
                                            -6, 
                                            -15)]
Enzo_Avitabile_avg <- Enzo_Avitabile_num %>% 
  group_by(artist_name) %>% 
  summarize(danceability=mean(danceability), 
            energy=mean(energy),
            loudness=mean(loudness), 
            speechiness=mean(speechiness), 
            acousticness=mean(acousticness), 
            instrumentalness=mean(instrumentalness), 
            liveness=mean(liveness), 
            valence=mean(valence), 
            tempo=mean(tempo), 
            time_signature=mean(time_signature), 
            duration_ms=mean(duration_ms))

Fausto_Leali_num <- Fausto_Leali[,c(-(2:8), 
                                    -(20:21), 
                                    -(23:25), 
                                    -(27:29), 
                                    -(31:39))]
Fausto_Leali_num <- Fausto_Leali_num[,c(-4,
                                        -6, 
                                        -15)]
Fausto_Leali_avg <- Fausto_Leali_num %>% 
  group_by(artist_name) %>% 
  summarize(danceability=mean(danceability), 
            energy=mean(energy),
            loudness=mean(loudness), 
            speechiness=mean(speechiness), 
            acousticness=mean(acousticness), 
            instrumentalness=mean(instrumentalness), 
            liveness=mean(liveness), 
            valence=mean(valence), 
            tempo=mean(tempo), 
            time_signature=mean(time_signature), 
            duration_ms=mean(duration_ms))

Fiorella_Mannoia_num <- Fiorella_Mannoia[,c(-(2:8), 
                                            -(20:21), 
                                            -(23:25), 
                                            -(27:29), 
                                            -(31:39))]
Fiorella_Mannoia_num<- Fiorella_Mannoia_num[,c(-4,
                                               -6, 
                                               -15)]
Fiorella_Mannoia_avg <- Fiorella_Mannoia_num %>% 
  group_by(artist_name) %>% 
  summarize(danceability=mean(danceability), 
            energy=mean(energy),
            loudness=mean(loudness), 
            speechiness=mean(speechiness), 
            acousticness=mean(acousticness), 
            instrumentalness=mean(instrumentalness), 
            liveness=mean(liveness), 
            valence=mean(valence), 
            tempo=mean(tempo), 
            time_signature=mean(time_signature), 
            duration_ms=mean(duration_ms))

Giancarlo_Romani_num <- Giancarlo_Romani[,c(-(2:8), 
                                            -(20:21), 
                                            -(23:25), 
                                            -(27:29), 
                                            -(31:39))]
Giancarlo_Romani_num <- Giancarlo_Romani_num[,c(-4,
                                                -6, 
                                                -15)]
Giancarlo_Romani_avg <- Giancarlo_Romani_num %>% 
  group_by(artist_name) %>% 
  summarize(danceability=mean(danceability), 
            energy=mean(energy),
            loudness=mean(loudness), 
            speechiness=mean(speechiness), 
            acousticness=mean(acousticness), 
            instrumentalness=mean(instrumentalness), 
            liveness=mean(liveness), 
            valence=mean(valence), 
            tempo=mean(tempo), 
            time_signature=mean(time_signature), 
            duration_ms=mean(duration_ms))

Gianna_Nannini_num <- Gianna_Nannini[,c(-(2:8), 
                                        -(20:21), 
                                        -(23:25), 
                                        -(27:29), 
                                        -(31:39))]
Gianna_Nannini_num <- Gianna_Nannini_num[,c(-4,
                                            -6, 
                                            -15)]
Gianna_Nannini_avg <- Gianna_Nannini_num%>% 
  group_by(artist_name) %>% 
  summarize(danceability=mean(danceability), 
            energy=mean(energy),
            loudness=mean(loudness), 
            speechiness=mean(speechiness), 
            acousticness=mean(acousticness), 
            instrumentalness=mean(instrumentalness), 
            liveness=mean(liveness), 
            valence=mean(valence), 
            tempo=mean(tempo), 
            time_signature=mean(time_signature), 
            duration_ms=mean(duration_ms))

Giovanna_Marini_num <- Giovanna_Marini[,c(-(2:8), 
                                          -(20:21), 
                                          -(23:25), 
                                          -(27:29), 
                                          -(31:39))]
Giovanna_Marini_num <- Giovanna_Marini_num[,c(-4,
                                              -6, 
                                              -15)]
Giovanna_Marini_avg <- Giovanna_Marini_num %>% 
  group_by(artist_name) %>% 
  summarize(danceability=mean(danceability), 
            energy=mean(energy),
            loudness=mean(loudness), 
            speechiness=mean(speechiness), 
            acousticness=mean(acousticness), 
            instrumentalness=mean(instrumentalness), 
            liveness=mean(liveness), 
            valence=mean(valence), 
            tempo=mean(tempo), 
            time_signature=mean(time_signature), 
            duration_ms=mean(duration_ms))

Ligabue_num <- Ligabue[,c(-(2:8), 
                          -(20:21), 
                          -(23:25), 
                          -(27:29), 
                          -(31:39))]
Ligabue_num <- Ligabue_num[,c(-4,
                              -6, 
                              -15)]
Ligabue_avg <- Ligabue_num %>% 
  group_by(artist_name) %>% 
  summarize(danceability=mean(danceability), 
            energy=mean(energy),
            loudness=mean(loudness), 
            speechiness=mean(speechiness), 
            acousticness=mean(acousticness), 
            instrumentalness=mean(instrumentalness), 
            liveness=mean(liveness), 
            valence=mean(valence), 
            tempo=mean(tempo), 
            time_signature=mean(time_signature), 
            duration_ms=mean(duration_ms))

Lorenzo_Lepore_num <- Lorenzo_Lepore[,c(-(2:8), 
                                        -(20:21), 
                                        -(23:25), 
                                        -(27:29), 
                                        -(31:39))]
Lorenzo_Lepore_num <- Lorenzo_Lepore_num[,c(-4,
                                            -6, 
                                            -15)]
Lorenzo_Lepore_avg <- Lorenzo_Lepore_num %>% 
  group_by(artist_name) %>% 
  summarize(danceability=mean(danceability), 
            energy=mean(energy),
            loudness=mean(loudness), 
            speechiness=mean(speechiness), 
            acousticness=mean(acousticness), 
            instrumentalness=mean(instrumentalness), 
            liveness=mean(liveness), 
            valence=mean(valence), 
            tempo=mean(tempo), 
            time_signature=mean(time_signature), 
            duration_ms=mean(duration_ms))

Luca_Barbarossa_num <- Luca_Barbarossa[,c(-(2:8), 
                                          -(20:21), 
                                          -(23:25), 
                                          -(27:29), 
                                          -(31:39))]
Luca_Barbarossa_num <- Luca_Barbarossa_num[,c(-4,
                                              -6, 
                                              -15)]
Luca_Barbarossa_avg <- Luca_Barbarossa_num %>% 
  group_by(artist_name) %>%
  summarize(danceability=mean(danceability), 
            energy=mean(energy),
            loudness=mean(loudness), 
            speechiness=mean(speechiness), 
            acousticness=mean(acousticness), 
            instrumentalness=mean(instrumentalness), 
            liveness=mean(liveness), 
            valence=mean(valence), 
            tempo=mean(tempo), 
            time_signature=mean(time_signature), 
            duration_ms=mean(duration_ms))

Lucio_Dalla_num <- Lucio_Dalla[,c(-(2:8), 
                                  -(20:21), 
                                  -(23:25), 
                                  -(27:29), 
                                  -(31:39))]
Lucio_Dalla_num <- Lucio_Dalla_num[,c(-4,
                                      -6, 
                                      -15)]
Lucio_Dalla_avg <- Lucio_Dalla_num %>% 
  group_by(artist_name) %>% 
  summarize(danceability=mean(danceability), 
            energy=mean(energy),
            loudness=mean(loudness), 
            speechiness=mean(speechiness), 
            acousticness=mean(acousticness), 
            instrumentalness=mean(instrumentalness), 
            liveness=mean(liveness), 
            valence=mean(valence), 
            tempo=mean(tempo), 
            time_signature=mean(time_signature), 
            duration_ms=mean(duration_ms))

Mimmo_Locasciulli_num <- Mimmo_Locasciulli[,c(-(2:8), 
                                              -(20:21), 
                                              -(23:25), 
                                              -(27:29), 
                                              -(31:39))]
Mimmo_Locasciulli_num <- Mimmo_Locasciulli_num[,c(-4,
                                                  -6, 
                                                  -15)]
Mimmo_Locasciulli_avg <- Mimmo_Locasciulli_num %>% 
  group_by(artist_name) %>% 
  summarize(danceability=mean(danceability), 
            energy=mean(energy),
            loudness=mean(loudness), 
            speechiness=mean(speechiness), 
            acousticness=mean(acousticness), 
            instrumentalness=mean(instrumentalness), 
            liveness=mean(liveness), 
            valence=mean(valence), 
            tempo=mean(tempo), 
            time_signature=mean(time_signature), 
            duration_ms=mean(duration_ms))
  
Nicola_Piovani_num <- Nicola_Piovani[,c(-(2:8), 
                                        -(20:21), 
                                        -(23:25), 
                                        -(27:29), 
                                        -(31:39))]
Nicola_Piovani_num <- Nicola_Piovani_num[,c(-4,
                                            -6, 
                                            -15)]
Nicola_Piovani_avg <- Nicola_Piovani_num %>% 
  group_by(artist_name) %>% 
  summarize(danceability=mean(danceability), 
            energy=mean(energy),
            loudness=mean(loudness), 
            speechiness=mean(speechiness), 
            acousticness=mean(acousticness), 
            instrumentalness=mean(instrumentalness), 
            liveness=mean(liveness), 
            valence=mean(valence), 
            tempo=mean(tempo), 
            time_signature=mean(time_signature), 
            duration_ms=mean(duration_ms))
  
Tricarico_num <- Tricarico[,c(-(2:8), 
                              -(20:21), 
                              -(23:25), 
                              -(27:29), 
                              -(31:39))]
Tricarico_num <- Tricarico_num[,c(-4,
                                  -6, 
                                  -15)]
Tricarico_avg <- Tricarico_num %>% 
  group_by(artist_name) %>% 
  summarize(danceability=mean(danceability), 
            energy=mean(energy),
            loudness=mean(loudness), 
            speechiness=mean(speechiness), 
            acousticness=mean(acousticness), 
            instrumentalness=mean(instrumentalness), 
            liveness=mean(liveness), 
            valence=mean(valence), 
            tempo=mean(tempo), 
            time_signature=mean(time_signature), 
            duration_ms=mean(duration_ms))

Francesco_DeGregori_num <- Francesco_DeGregori[,c(-(2:8), 
                                                  -(20:21), 
                                                  -(23:25), 
                                                  -(27:29), 
                                                  -(31:39))]
Francesco_DeGregori_num <- Francesco_DeGregori_num[,c(-4,
                                                      -6, 
                                                      -15)]
Francesco_DeGregori_avg <- Francesco_DeGregori_num %>% 
  group_by(artist_name) %>% 
  summarize(danceability=mean(danceability), 
            energy=mean(energy),
            loudness=mean(loudness), 
            speechiness=mean(speechiness), 
            acousticness=mean(acousticness), 
            instrumentalness=mean(instrumentalness), 
            liveness=mean(liveness), 
            valence=mean(valence), 
            tempo=mean(tempo), 
            time_signature=mean(time_signature), 
            duration_ms=mean(duration_ms))

Francesca_Gobbi_num <- Francesca_Gobbi[,c(-(2:8), 
                                          -(20:21), 
                                          -(23:25), 
                                          -(27:29), 
                                          -(31:39))]
Francesca_Gobbi_num <- Francesca_Gobbi_num[,c(-4,
                                              -6, 
                                              -15)]
Francesca_Gobbi_avg <- Francesca_Gobbi_num %>% 
  group_by(artist_name) %>% 
  summarize(danceability=mean(danceability), 
            energy=mean(energy),
            loudness=mean(loudness), 
            speechiness=mean(speechiness), 
            acousticness=mean(acousticness), 
            instrumentalness=mean(instrumentalness), 
            liveness=mean(liveness), 
            valence=mean(valence), 
            tempo=mean(tempo), 
            time_signature=mean(time_signature), 
            duration_ms=mean(duration_ms))


Cluster41avg <- rbind(Edoardo_Bennato_avg, Francesca_Gobbi_avg, Francesco_DeGregori_avg, Giovanna_Marini_avg, Lorenzo_Lepore_avg, Ligabue_avg, Lucio_Dalla_avg, Gianna_Nannini_avg, Ambrogio_Sparagna_avg, Antonello_Venditti_avg,
                      Edoardo_DeAngelis_avg, Enzo_Avitabile_avg, Fausto_Leali_avg, Fiorella_Mannoia_avg, Giancarlo_Romani_avg, Luca_Barbarossa_avg, Mimmo_Locasciulli_avg, Nicola_Piovani_avg, Tricarico_avg)

Ascoltatori_mensili <- c(1129160, 
                         624, 
                         999673, 
                         3099, 
                         2263, 
                         1045790, 
                         1684125, 
                         1188177, 
                         10919, 
                         1103137, 
                         2756, 
                         167980, 
                         260614, 
                         465706, 
                         492, 
                         224388, 
                         12593, 
                         599959, 
                         58135)

Cluster41avg_completo <- cbind(Cluster41avg, Ascoltatori_mensili) 
write_xlsx(Cluster41avg_completo,"~/MATIS - Sapienza Magistrale/a) Data Science and Complexity/Progetto Spotify/Spotify dataset\\Cluster41 completo.xlsx")

Cluster41avg_completo <- data.frame(Cluster41avg_completo, row.names = "artist_name")
options(ggrepel.max.overlaps = Inf) #per etichettare ogni punto anche se normalemnte ci sarebbero problemi di label overlap
PCA_Cluster41avg_completo <- PCA(Cluster41avg_completo, axes = c(1,3))


PCA_Cluster41avg_completo$eig
PCA_Cluster41avg_completo$var$cor
PCA_Clusteravg_completo$ind$coord #coordinate numeriche
PCA_Cluster41avg_completo$ind$cos2 #qualità della riproduzione 
summary(PCA_Cluster41avg_completo)
plot(PCA_Cluster41avg_completo, axes = c(1,2))
plot(PCA_Cluster41avg_completo, axes = c(1,3))  

