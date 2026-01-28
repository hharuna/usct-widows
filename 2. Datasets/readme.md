# U.S.C.T. Widows Project: Datasets

## Summary & Disclaimers
The two datasets in this project are collected from 57 and 42 approved pension claims filed by widows of veterans of the 2nd and 33rd regiments of the United States Colored Troops respectively. Some of the datasets were used in Gephi and some were used in R. The full datasets, which were cleaned for ease of use and Gephi, are also included. 
The edge lists for Gephi include weighting for relationships to widows: 5 for marriage, 3 for acquaintance/family, and 1 for attorneys. There are empty cells in the Gephi node lists due to unavailability of the information. In the cases of veterans, testifiers and attorneys, their ages were not recorded in the claims. The empty cells in the Gephi edge lists are a result of a null edge. The attribute data for R is binarized for gender and widowhood. 

## Data Sources
The primary source for the data here is from [Department of the Interior, Bureau of Pensions. (1849 - 1930) and Veterans’s Administration. (07/21/1930 - 03/15/1989), Case Files of Approved Pension Applications of Widows and Other Dependents of the Army and Navy Who Served Mainly in the Civil War and the War With Spain, Records of the Department of Veterans Affairs, n.d.](https://catalog.archives.gov/id/300020) This data was collected manually from digitized petitions between November 2024 and March 2025. 

Each pension claim comprises of a mix of forms, letters and depositions. Each claim includes a Civil war widow's pension claim, her late veteran husband's pension claim (most veterans filed for pensions before they passed), and the pension or reimbursement claims of the widow's family members when the widow passes, depending on if they file for such a claim.

The key documents I focused for data collection were the approval forms, pension declaration forms and the depositions. 

The **approval forms** are written and signed by the state. The approval forms record key dates like the date of the veteran's death, the first date the widow's pension claim was filed as well as the date of approval. 

The **pension declaration forms** are written by or on behalf of the widow, as she declares her application for a pension. The declaration records the names of minor children if the widows had any, and the location her husband was enrolled among others. 

The **deposition** is written by testifiers (family relations, other veterans etc.). The relations in these depositions are categorized and defined independently in this project. These definiitons can be found in the data dictionary.

Please see below for an example of the approval form, pension declaration form and deposition respectively as they appear in the archives. 
![Luncinda Ackiss approval form](https://github.com/hharuna/usct-widows/blob/main/2.%20Datasets/George_L_Ackiss_Pension_136.jpg) ![Lucinda Ackiss pension declaration forms](https://github.com/hharuna/usct-widows/blob/main/2.%20Datasets/George_L_Ackiss_Pension_137.jpg) ![Sylvia Jones deposition](https://github.com/hharuna/usct-widows/blob/main/2.%20Datasets/Paul_Jones_Pension_059.jpg)

## Datasets
[2nd Regiment - full dataset](https://github.com/hharuna/usct-widows/blob/main/2.%20Datasets/Parent%20Dataset%20-%202nd%20regiment.csv)

[2nd Regiment - node list for Gephi](https://github.com/hharuna/usct-widows/blob/main/2.%20Datasets/Parent-Dataset-2nd-regiment-node-list-csv%20(2).csv)

[2nd Regiment - edge list for Gephi](https://github.com/hharuna/usct-widows/blob/main/2.%20Datasets/Parent-Dataset-2nd-regiment-edge-list-csv%20(3).csv)

[2nd Regiment attribute data for R](https://github.com/hharuna/usct-widows/blob/main/2.%20Datasets/2nd_reg_attr_new_binarized.csv)

[2nd Regiment edge list for R](https://github.com/hharuna/usct-widows/blob/main/2.%20Datasets/2nd%20regiment%20simple%20edge%20list%20w_%20attrys_new.csv)

[33rd Regiment - full dataset](https://github.com/hharuna/usct-widows/blob/main/2.%20Datasets/Parent%20Dataset%20-%2033rd%20regiment.csv)

[33rd Regiment - node list for Gephi](https://github.com/hharuna/usct-widows/blob/main/2.%20Datasets/Parent%20Dataset%20-%2033rd%20regiment%20node%20list%20(1).csv)

[33rd Regiment - edge list for Gephi](https://github.com/hharuna/usct-widows/blob/main/2.%20Datasets/Parent-Dataset-33rd-regiment-edge-list-(1)-csv.csv)

[33rd Regiment attribute data for R](https://github.com/hharuna/usct-widows/blob/main/2.%20Datasets/33rd_reg_attr_new_binarized.csv)

[33rd Regiment edge list for R](https://github.com/hharuna/usct-widows/blob/main/2.%20Datasets/33rd%20regiment%20simple%20edge%20list%20w_%20attrys_new.csv)

[Parent Dataset](https://docs.google.com/spreadsheets/d/1YecUt_40J-x2H4w_2LAkcT9nBeTGIOR2to0zMN6wyrs/edit?gid=0#gid=0)

[Data Dictionary](https://docs.google.com/document/d/1m7fjO3q1YqrYe1gWYUqbTSkSrR1lrlFeIWDge9fDmgs/edit?tab=t.0)

## Project  Information
Lead Investigator: Halima Haruna (haruna.h@northeastern.edu)

Instructors: Julia Flanders & Sarah Connell

Course Information: NULab Seminar (Fall 2024 - Spring 2025), For Digital Humanities Certificate

Institution: Northeastern University
