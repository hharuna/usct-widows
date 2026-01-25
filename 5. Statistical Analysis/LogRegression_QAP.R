setwd("~/Desktop/INSH 6304 R LAB")
getwd()

second_edgelist<- read.csv("2nd regiment simple edge list w_ attrys_new.csv")
thirtythird_edgelist <- read.csv("33rd regiment simple edge list w_ attrys_new.csv")

second_att <- read.csv("2nd_reg_attr_new_binarized.csv")
thirtythird_att <- read.csv("33rd_reg_attr_new_binarized.csv")

head(second_edgelist)
head(thirtythird_edgelist)
head(second_att)
head(thirtythird_att)

library(statnet)
detach(package:igraph)

second_net <- network(second_edgelist, matrix.type = "edgelist", directed = F)
thirtythird_net <- network(thirtythird_edgelist, matrix.type = "edgelist", directed = F)

second_net
thirtythird_net

set.vertex.attribute(second_net,"role", second_att$Role)

second_net

get.vertex.attribute(second_net,"role")

set.vertex.attribute(second_net,"name", second_att$Name)

second_net

get.vertex.attribute(second_net,"name")

set.vertex.attribute(second_net,"gender", second_att$Gender)

second_net

set.vertex.attribute(thirtythird_net,"role", thirtythird_att$Role)

set.vertex.attribute(thirtythird_net,"name", thirtythird_att$Label)

set.vertex.attribute(thirtythird_net, "gender", thirtythird_att$Gender)

thirtythird_net

role <- second_net %v% "role"

role

gender <- second_net %v% "gender"

gender

role_homophily <- outer(role, role, "==")

gender_homphily <- outer(gender, gender, "==")

role_homophily

gender_homphily

second_lrqap <- netlogit(second_net, list(role_homophily))

summary(second_lrqap)

install.package(knitr)
library(knitr)

sec_lrq_exp<-data.frame(Coefficients=c('intercept', 'x1'), 
                        Estimate=c(-3.849515,-5.135116),
                        Exp.Coefficients=c(0.021290051,0.005886371),
                        RightTailed=c(0,0), LeftTailed=c(1,1), TwoTailed=c(0,0))

sec_lrq_exp %>%
  kbl(caption = "LR-QAP Results in Upper South Network", row.names = TRUE) %>%
  kable_classic(full_width = F, html_font = "Cambria")

thirtyrole <- thirtythird_net %v% "role"

thirtyrole

thirtygender <- thirtythird_net %v% "gender"

thirtygender

th_role_homophily <- outer(thirtyrole, thirtyrole, "==")

th_gender_homphily <- outer(thirtygender, thirtygender, "==")

thirty_lrqap <- netlogit(thirtythird_net, list(th_role_homophily))

summary(thirty_lrqap)

thi_lrq_exp<-data.frame(Coefficients=c('intercept', 'x1'), 
                        Estimate=c(-3.560724,-19.005344),
                        Exp.Coefficients=c(2.841823e-02,5.572934e-09),
                        RightTailed=c(0,0.474), LeftTailed=c(1,0.526), TwoTailed=c(0,1))

thi_lrq_exp %>%
  kbl(caption = "LR-QAP Results in Lower South Network", row.names = TRUE) %>%
  kable_classic(full_width = F, html_font = "Cambria")


plot(second_net, vertex.color = "role")
