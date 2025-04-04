# Network of Widows, Veterans, Testifiers and Attorneys (2nd and 33rd Regiments)

## Network Summary

In order to visualize and analyze the grassroots pension network, I used network analysis software, Cytoscape and Gephi, to visualize the data collected.
My objective is also to compare regiment networks in different principal locations, in order to understand more about how these networks work.

Some of my findings include the power of attorneys. In the 2nd regiment network, Nathan Bickford, a Washington D.C. attorney has the largest edgecount and indegree value of 7. In the 33rd regiment network, R.F. Greaves, a South Carolina attorney, has the largest degree value. 

### Cytoscape

This section includes two early networks created with 59 rows of data from the 2nd regiment on widows and their pension claims between 1871 and 1924. The network features the widows' late husbands, testifiers to their claims and their attorneys.

The [first network](https://github.com/hharuna/usct-widows/blob/main/3.%20Networks/1.%20Widows%2C%20Veterans%2C%20Testifiers%20and%20Attorneys.cys) features the widows, veterans, testifiers, and attorneys as nodes and relationships as edges. The [second network](https://github.com/hharuna/usct-widows/blob/main/3.%20Networks/2.%20Testifiers%20and%20Attorneys.cys) is in progress and only features widows and testifiers to their pension claims.

The networks can be viewed in Cytoscape.

#### Network Key
- Nodes: widows are represented in purple, late husbands in red, tesifiers in green and attorneys in blue.
- Edges: tesifying relations are represented by purple parallel lines, marriage by blue arrows, and attorney-client relatons by red dashed lines.

### Gephi

This section also includes two networks that feature widows, veterans, testifiers, and attroneys made with Gephi. 

The [2nd regiment network](https://github.com/hharuna/usct-widows/blob/main/3.%20Networks/usct-widows-2nd-regiment.gephi) is created with 57 rows of data from the 2nd regiment and the [33rd regiment network](https://github.com/hharuna/usct-widows/blob/main/3.%20Networks/usct-widows-33rd-regiment.gephi) is created with 42 rows of data from the 33rd regiment. The first Gephi network uses the same data as the Cytoscape networks.

The networks can be viewed in Gephi. 

The 2nd regiment network looks like this on Gephi. ![2nd regiment network on Gephi](https://github.com/hharuna/usct-widows/blob/main/3.%20Networks/2nd%20gephi%20example2.png) 

The 33rd regiment looks like this on Gephi. ![33rd regiment network on Gephi](https://github.com/hharuna/usct-widows/blob/main/3.%20Networks/33rd%20gephi%20example2.png).

#### Network Key
- The 2nd and 33rd regiment [directed networks](https://mathinsight.org/definition/directed_graph) focuses on the [weighting](https://www.sciencedirect.com/topics/computer-science/weighted-graph) of the edges. Edges from attorneys are weighted at 1, edges from testifiers are weighted at 3, edges from late husbands are weighted at 5. Nodes with the highest degree value (the number of edges directed to or from a node) are colored in darker green, with the color continusly changigng from dark to light based on degree value.

## Interactive Networks

The two networks can be viewed on the Web at the links below. The networks are open for explorartion and analysis from users based on the node attributes provided. More information on the tools used to host the networks online can be found on the [Methods page](https://github.com/hharuna/usct-widows/tree/main/1.%20Methods).

[Interactive Network of 2nd Regiment](https://hharuna.github.io/interactivegraphs/network/#)

[Interactive Network of 33rd Regiment](https://hharuna.github.io/interactivegraphs2/network/)

## Project  Information
Lead Investigator: Halima Haruna (haruna.h@northeastern.edu)

Instructors: Julia Flanders & Sarah Connell

Course Information: NULab Seminar (Fall 2024 - Spring 2025), For Digital Humanities Certificate

Institution: Northeastern University
