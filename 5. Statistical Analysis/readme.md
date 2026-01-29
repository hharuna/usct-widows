# U.S.C.T. Widows Project: Statistical Analysis

## Analysis Summary
This is a collection of research output from statistical network analysis of the 2nd and 33rd regiment network data. For the purposes of more significant analysis, I assumed the network of claims from the 2nd regiment, which were primarily filed in the state of Virginia, represented the Upper South. I assumed that the network of 33rd regiment claims, primarily filed in South Carolina, then represented the Lower South. The regional assumption supports a comparative framework of network analysis. The network data is symmetric with no weighted edges.

The datasets I used are in this repository at [Datasets](https://github.com/hharuna/usct-widows/tree/main/2.%20Datasets).

## Findings
**1. Women in the Upper South may have had more central positions than women in the Lower South in their respective pension claim networks.**

When measuring and comparing actor-level betweenness centrality (BC) in each network, I found that of the top 5 actors with the highest betweenness centrality measures in network 1, the Upper South regiment, 4 out of 5 were women. In network 2 in the Lower South, only 2 of 5 actors with the highest BC value were women. The actor-level betweenness centrality for each node in the Upper South network and Lower South network are represented in the tables below. 

Note: Gender is binarized in the network data. The number “1” here represents actors who I assumed were women, and the number “0” represents actors who I assumed were men.

![Centrality in the Upper South Network](https://github.com/hharuna/usct-widows/blob/main/5.%20Statistical%20Analysis/Gender%2C%20Betweenness%20and%20Degree%20in%20Upper%20South%20Net.png)

![Centrality in the Lower South Network](https://github.com/hharuna/usct-widows/blob/main/5.%20Statistical%20Analysis/Gender%2C%20Betweenness%20and%20Degree%20in%20Lower%20South.png)

**2. Both networks may be less connected than we would expect in a random scenario. However, the Lower South network may have connections between people than the Upper South network.**

I calculated triad censuses (the number of triads--three actors connected to each other--in a network) for the networks using my data, and did the same for 1,000 random networks based on the Erdos-Reyni model. The table below shows the results of the census, separating each kind of triad. Note: there are only four types of triads possible in undirected networks. 

![Comparing Triad Censuses in Observed and Random Networks](https://github.com/hharuna/usct-widows/blob/main/5.%20Statistical%20Analysis/Triad%20Census%20in%20Observed%20and%20Random%20Networks.png)

**3. Widows may have been less connected to each other than would be expected at random.**

I wanted to find out if widows were more or less likely to testify for each other in networks with the same structure as the two observed networks. I used a logistic regression QAP to compare. the relationship between the network and role homophily, specifically that of widows, to 1000 permuted networks with the same structure and the same role homophily.

![Homophily in the Upper South network](https://github.com/hharuna/usct-widows/blob/main/5.%20Statistical%20Analysis/LR-QAP%20Results%20in%20Upper%20South%20Network.png)

![Homophily in the Lower South network](https://github.com/hharuna/usct-widows/blob/main/5.%20Statistical%20Analysis/LR-QAP%20Results%20in%20Lower%20South%20Network.png)

## R Scripts
The R script for the centrality and triad census can be found [here](https://github.com/hharuna/usct-widows/blob/main/5.%20Statistical%20Analysis/Triad_Census_and%20_Random_Networks.R), and the script for the QAP can be found [here](https://github.com/hharuna/usct-widows/blob/main/5.%20Statistical%20Analysis/LogRegression_QAP.R).
Note: This analysis was conducted over the duration of a course taught by Cassie McMillan (NEU) in the fall of 2025.

## Project  Information
Lead Investigator: Halima Haruna (haruna.h@northeastern.edu)

Instructors: Julia Flanders & Sarah Connell

Course Information: NULab Seminar (Fall 2024 - Spring 2025), For Digital Humanities Certificate

Institution: Northeastern University
