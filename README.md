# Efficient, Scalable, and Reproducible Enrichment Workflows

# Workshop
https://montilab.github.io/hypeR-workshop

# Instructors

Anthony Federico (anfed@bu.edu)  
Section of Computational Biomedicine  
Boston University  

# Workshop Description

Geneset enrichment is a popular method for annotating high-throughput sequencing data. Existing tools fall short in generating workflows that enable efficient analysis and are highly reproducible, particularly when dealing with many signatures across multiple experiments. In this workshop, we will demonstrate how hypeR - an R package for geneset enrichment workflows - addresses these issues and more.

## Pre-requisites

* Basic knowledge of R syntax
* Experience installing packages from Bioconductor and Github
* Familiarity with the geneset enrichment concepts

We recommend the latest version of R (\>= 4.0.0) but **hypeR** currently requires R (\>= 3.6.0) to be installed directly from Github or Bioconductor. To install with R (\>= 3.5.0) see below. Use with R (\< 3.5.0) is not recommended.

Install the development version of the package from Github.
```{r, eval=FALSE}
devtools::install_github("montilab/hypeR")
```

Or install the development version of the package from Bioconductor.
```{r, eval=FALSE}
BiocManager::install("montilab/hypeR", version="devel")
```

## Participation

Students will participate by following along a markdown document, trying variations of provided code, and asking questions throughout the workshop.

## _R_ / _Bioconductor_ packages used

- [hypeR](https://bioconductor.org/packages/release/bioc/html/hypeR.html)
- tidyverse

## Time outline

| Activity                     | Time                  |
|------------------------------|-----------------------|
| Geneset Enrichment 101       | ~10 min               |
| Introduction to hypeR        | ~5 min                |
| Downloading Genesets         | ~5 min                |
| hypeR Methods                | ~5 min                |
| Relational Genesets          | ~5 min                |
| Handling Many Signatures     | ~5 min                |
| Workflow Reproducibility     | ~5 min                |
| Rmarkdown and Shiny          | ~5 min                |
| Questions                    | Interruptions Welcome |

## Workshop Goals and Objectives

Learning Goals  
- Compare different methods for geneset enrichment
- Learn how to conduct efficient enrichment workflows
- Use object oriented programming to improve reproducibility

Learning Objectives  
- Download different genesets from various databases 
- Perform geneset enrichment on hundreds of co-expression signatures
- Visualize enrichment across multiple signatures
- Understand relational genesets and create a hierarchy map
- Generate a markdown report for multiple experiments
- Extend hypeR for use with other enrichment methods
