# Course Paper

setwd("~/Desktop/INSH 6304 R LAB")
getwd()

second_edgelist<- read.csv("2nd regiment simple edge list w_ attrys_new.csv")
thirtythird_edgelist <- read.csv("33rd regiment simple edge list w_ attrys_new.csv")

second_att <- read.csv("2nd_reg_attr_new_binarized.csv")
thirtythird_att <- read.csv("33rd_reg_attr_new_binarized.csv")

detach(package:igraph)
library(statnet)

second_net <- network(second_edgelist, matrix.type = "edgelist", directed = F)
thirtythird_net <- network(thirtythird_edgelist, matrix.type = "edgelist", directed = F)

second_net
thirtythird_net

secbet<-betweenness(second_net, gmode = "graph")

secbet

secdeg<-degree(second_net, gmode = "graph")

set.vertex.attribute(second_net,"name", second_att$Name)

set.vertex.attribute(second_net,"gender", second_att$Gender)

set.vertex.attribute(second_net,"role", second_att$Role)

secbet_data <- data.frame(actors = second_net %v% "name", gender = second_net %v% "gender",
           between = secbet, degree = secdeg)

library(dplyr)

secbet_data<-arrange(secbet_data, desc(between))

hist(secbet, xlab="Betweenness")


# Sarah Bright has the highest betweenness centrality value in the second regiment.

centralization(second_net, degree, mode = "graph")

# second regiment centralization is 0.014

set.vertex.attribute(thirtythird_net,"name", thirtythird_att$Label)

set.vertex.attribute(thirtythird_net,"gender", thirtythird_att$Gender)

set.vertex.attribute(thirtythird_net,"role", thirtythird_att$Role)

thibet<-betweenness(thirtythird_net, gmode = "graph")

thideg<-degree(thirtythird_net, gmode = "graph")

thibet_data <- data.frame(actors = thirtythird_net %v% "name", gender = thirtythird_net %v% "gender",
                          between = thibet, degree = thideg)

thibet_data<-arrange(thibet_data, desc(between))

thirtythird_net

hist(thibet, xlab="Betweenness")

?hist

as.table(thibet_data)

# Thomas Wallace has the highest betweenness centrality value in the thirty-third
# regiment.

centralization(thirtythird_net, degree, mode = "graph")

# thirty-third regiment centralization is 0.024.

library(intergraph)
detach(package:statnet)
library(igraph)


sec_igraph <- asIgraph(second_net)
thi_igraph <- asIgraph(thirtythird_net)

sec_igraph

sec_tri<-triad_census(sec_igraph)

sec_tri

# 331 open triads in the second regiment. No closed triads.

thi_tri<-triad_census(thi_igraph)

thi_tri

# 264 open triads in the thirty third regiment. No closed triads.

sec_n <- vcount(sec_igraph) 
sec_n
sec_density <- edge_density(sec_igraph) 
sec_density

?sample_gnp

sec_random <- sample_gnp(n = sec_n,
                         p = sec_density,
                         directed = FALSE)

triad_census(sec_random)[11] # 318

n <- 1000
random_nets <- vector("list", n)
for (i in 1:n){random_nets[[i]] <- sample_gnp(n = sec_n, 
                                 p = sec_density, 
                                 directed = FALSE)}

triad_results <- matrix(data = NA,
                        nrow = n, 
                        ncol = 16)

for (i in 1:n){triad_results[i,] <- triad_census(random_nets[[i]])}

triad_results

sec_triad_df<-as.data.frame(triad_results)

sec_tri_mean<-colMeans(triad_results)

sec_tri_mean

# 360.943 is the average number of open triads we would observe in a 1000 random networks.

thi_n <- vcount(thi_igraph) 
thi_n
thi_density <- edge_density(thi_igraph) 
thi_density

thi_random <- sample_gnp(n = thi_n,
                         p = thi_density,
                         directed = FALSE)

triad_census(thi_random)[11] # 279

th_random_nets <- vector("list", n)

for (i in 1:n){th_random_nets[[i]] <- sample_gnp(n = thi_n, 
                                              p = thi_density, 
                                              directed = FALSE)}

th_triad_results <- matrix(data = NA,
                        nrow = n, 
                        ncol = 16)

for (i in 1:n){th_triad_results[i,] <- triad_census(th_random_nets[[i]])}

thi_tri_mean<-colMeans(th_triad_results) 

thitri_mat<-matrix(thi_tri)
thimean_mat<-matrix(thi_tri_mean)
sectri_mat<-matrix(sec_tri)
secmean_mat<-matrix(sec_tri_mean)

com_tri_results<-as.data.frame(list(thitri_mat, thimean_mat, sectri_mat, secmean_mat))

colnames(com_tri_results)[1] <- "Lower South"
colnames(com_tri_results)[2] <- "Lower South Random Networks"
colnames(com_tri_results)[3] <- "Upper South"
colnames(com_tri_results)[4] <- "Upper South Random Networks"


# 278.386 is the average number of open triads we would observe in a 1000 random networks.

# There are less triads in the observed network.

library(statnet)
detach(package:igraph)

second_net

set.vertex.attribute(second_net,"gender", second_att$Gender)
set.vertex.attribute(second_net,"role", second_att$Role)

thirtythird_net

set.vertex.attribute(thirtythird_net,"gender", thirtythird_att$Gender)
set.vertex.attribute(thirtythird_net,"role", thirtythird_att$Role)

thirtythird_net

second_net

detach(package:statnet)
library(intergraph)
library(igraph)

second_igraph <- asIgraph(second_net)
thirty_igraph <- asIgraph(thirtythird_net)

second_igraph

plot(second_igraph,
     vertex.color = V(second_igraph)$gender,
     vertex.size = 5, 
     vertex.label = NA)

V(second_igraph)$gendercolor[V(second_igraph)$gender %in% 0] <- "lightgreen"
V(second_igraph)$gendercolor[V(second_igraph)$gender %in% 1] <- "pink"

V(thirty_igraph)$gendercolor[V(thirty_igraph)$gender %in% 0] <- "lightgreen"
V(thirty_igraph)$gendercolor[V(thirty_igraph)$gender %in% 1] <- "pink"

plot(second_igraph,
     layout=layout_with_fr,
     vertex.color = V(second_igraph)$gendercolor,
     vertex.size = secbet/200, 
     vertex.label = NA)

legend(x= -1.8, y= 1,
       legend=c("Man", "Woman"), 
       pt.bg=c("lightgreen", "pink"),  
       pch=21, pt.cex=2, bty="n")

plot(thirty_igraph,
     layout=layout_with_fr,
     vertex.color = V(thirty_igraph)$gendercolor,
     vertex.size = thibet/30, 
     vertex.label = NA)

legend(x= -1.8, y= 1,
       legend=c("Man", "Woman"), 
       pt.bg=c("lightgreen", "pink"),  
       pch=21, pt.cex=2, bty="n")


## KABLE

install.packages("kableExtra")

library(kableExtra)

kbl(secbet_data)

secbet_data %>%
  kbl(caption = "Gender, Betweenness and Degree in Upper South Net") %>%
  kable_classic(full_width = F, html_font = "Cambria")

thibet_data %>%
  kbl(caption = "Gender, Betweenness and Degree in Lower South Net") %>%
  kable_classic(full_width = F, html_font = "Cambria")

kbl(com_tri_results, row.names = TRUE, caption = "Triad Census in Observed and Random Networks",
    full_width = F, html_font = "Times New Roman")

com_tri_results %>%
  kbl(caption = "Triad Census in Observed and Random Networks", row.names = TRUE) %>%
  kable_classic(full_width = F, html_font = "Cambria")
