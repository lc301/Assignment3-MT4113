# Assignment3-MT4113
MT4113: Computing in Statistics, Assignment 3

The purpose of this project is to investigates under what scenarios a 
correlation test of mean temperature anomalies can be implemented using a 
simulation study to determine the validity of using a correlation 
test for the temperature anomaly dataset. Implementing these scenarios offer 
the capability of studying how well the test would perform if the true data 
varied from currently observed data. 

R Version Used:
R version 4.1.1 (2021-08-10)
Platform: x86_64-apple-darwin17.0 (64-bit)
Running under: macOS Mojave 10.14.6

Additional R packages to base packages used:
dslabs
gridExtra

data Folder: 
- data_formatting: file for loading in the data and altering the raw data
        
doc Folder: 
- PDF file of my Report

src Folder:
- EDA - exploratory data analysis file 
- Power & Size Sm Fn: a script file containing the two functions created to 
        simulate data under various sceanrios 
- Simulation Study: a script file containing the implemntation of the various 
        scearnios 
- test_functions: a file containing all of the test functions for the 
      power and size simualtion function
- TablesFigues: a file containing code required to develop tables/figures for 
      report 

results Folder: 
- Fig 1: Scatter plot of changing sample size impacting the ability to 
        clearly view a pattern representing correlation 
- Fig 2: Power of the Pearson Corr. Test decreases with an altering Beta1
- Fig 3: Size of the Pearson Corr. Test decreases with an altering Beta1
- Table 1: Table of various sample size scenarios tested, and the associated
        correlation coefficient and power for the parametric
        non-parametric correlation test.
- Table 2: Table of various sample size scenarios tested, and the associated
        correlation coefficient and power for the parametric
        non-parametric correlation test.
- Table 3: Table of altered reference mean, and the associated
        correlation coefficient and power for the parametric
        non-parametric correlation test.
- Table 4: Table of altered reference mean, and the associated
        correlation coefficient and size for the parametric
        non-parametric correlation test.
                        
Contact Details:

Lesette Campbell - lc301@st-andrews.ac.uk
