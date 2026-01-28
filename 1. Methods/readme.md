# Methods of U.S.C.T. Widows Project

## Limited Engagement with Machine Learning
Generally, this section is meant to make my research process transparent and reproducible, however much of the process developed as the project went along. Very little of the process documented here was pre-planned. That means that the process itself is subject to error. The process can be described as qualitative and subjective as it involved reading scanned handwritten documents without the aid of machine learning.
However, I have tried to maintain as much clarity as possible in my process outside of the process of reading the documents. I used OpenRefine to clean and standardize my data, RAWGraphs for primary graphs, and Cytoscape, Gephi and R for network analysis.

## Methods Summary
The goal of this project is the investigation of the “grassroots pension networks” by the analysis and comparison of the networks using advanced network measurement metrics in order to ascertain the logics of community that held the networks together.
The project also aims to establish a project-specific intervention into data collection and design from handwritten documents by qualifying and emphasizing specific relations based on black and black feminist historical scholarship.

Therefore, the project's methods hinge on data collection practices and network analysis separately, and interdependently.

## Objectives
- Collect and publish data on the grassroots pension network.
- Document the instruments and methods used in the project to support project transparency and reproducibility for scholars.
- Visualize and analyze networks and communities supporting these pension claims for the scholarly public audience.

## Methods Outline
- **Early Research**
- **Data Collection**
    -  Key strategies included [close reading](https://history.byu.edu/close-reading#:~:text=Close%20reading%20is%20the%20careful,to%20answer%20a%20historical%20question.), [skimming](https://learningcenter.unc.edu/tips-and-tools/skimming/), pacing data collection, organizing the master document, building an evolving data dictionary, keeping [detailed process notes](https://docs.google.com/document/d/1htUY6QDQRN4LjNugiYYmG1AeRPxorzdNGG2QPiEU3Ns/edit?tab=t.0) and scoping the type of data collected through advisory meetings with instructors.
- **Data decisions and definitions**
    - The project required a process or logic for defining the relationships present in the archive. Based on [secondary scholarship on African American kinship during and after the Civil War](https://uncpress.org/book/9780807854761/the-claims-of-kinfolk/), I defined relations using fictive kinship logic. People became fictive kin because they worked or lived together during the antebellum period.
    - The [data dictionary](https://docs.google.com/document/d/1m7fjO3q1YqrYe1gWYUqbTSkSrR1lrlFeIWDge9fDmgs/edit?tab=t.0#heading=h.gg928okkbku3) notes the definitions I produced. 
- **Assessing data feasibility**
    - I used OpenRefine to clean up the raw data. I used common transforms to trim whitespace and to replace tabs in names with underscores for better machine readability. I also used [facets](https://openrefine.org/docs/manual/facets) to match node names with ID number for Gephi. I used [these directions](https://librarycarpentry.github.io/lc-open-refine/10-data-transformation.html) to changing the date format in the dataset from its current form to the DD month YYYY format. 
- **Graph and Network Visualization**
    - [RAWGraphs](https://www.rawgraphs.io/) is a web-based platform that creates quick graphs. RAWGraphs has a wide variety of graphs to select and offers a decent amount of customization. I used RAWGraphs to generate [graphs](https://github.com/hharuna/usct-widows/tree/main/4.%20Graphs) for early stage interpretation. I referred to the [Data Viz Project](https://datavizproject.com/) as I decided which graphs to use.
    - [Cytoscape](https://cytoscape.org/) is a desktop package that visualizes and analyses networks using nodes and edges. Cytoscape offers network visual customization after analysis. It also has a [robust user manual](https://manual.cytoscape.org/en/stable/).
    - [Gephi](https://gephi.org/): I used [this converter](https://medialab.github.io/table2net/) to convert csv files to gexf files and using Gephi to produce the graph visualization. When that failed, I assigned each node an ID number in the node list and used facets in OpenRefine to rename nodes with the ID numbers in the edge list.  I used [this tutorial](https://gephi.org/tutorials/gephi-tutorial-quick_start.pdf) to get started on Gephi.
        - I used the Force Atlas layout and changed Repulsion Strength to 750 and Attraction to about 0.1
        - I used Partition (discrete mapping instead of continuous mapping) module to configure node color and size by Degree
        - I used a Weighting for each directed edge type: Attorney - Weight 1, Testifier - Weight 3, Related Soldier - Weight 5
    - Interactive networks: [This blog post](http://blog.miz.space/tutorial/2020/01/05/gephi-tutorial-sigma-js-plugin-publishing-interactive-graph-online/) by [Volodymyr Miz](https://www.linkedin.com/in/volodymyrmiz/), a machine learning specialist, provided information on how to host Gephi networks on GitHub pages.
- **Network and graph analysis**
    - Gephi and Cytoscape. I used Gephi's data laboratory to calculate [stress](https://symbio6.nl/en/blog/analysis/stress-centrality) and [betweeness centrality](https://symbio6.nl/en/blog/analysis/betweenness-centrality) in both **directed** networks. [This video](https://www.youtube.com/watch?v=PuWNYB0u_gM) walks the user through the steps to calculate centrality in Gephi. The image below shows the table in Gephi's data laboratory.
![Data Lab Gephi image](https://github.com/hharuna/usct-widows/blob/main/1.%20Methods/Screenshot%202025-03-13%20at%203.56.58%E2%80%AFPM.png)
    - R. Among other things, R can be used to analyze and visualize networks. R also allows users to use statistical methods to better understand the network data.


## Project  Information
Lead Investigator: Halima Haruna (haruna.h@northeastern.edu)

Instructors: Julia Flanders & Sarah Connell

Course Information: NULab Project Seminar (Fall 2024 - Spring 2025) for Digital Humanities Certificate

Institution: Northeastern University
