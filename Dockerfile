FROM bioconductor/bioconductor_docker:latest

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      apt-utils \
      libglpk-dev \
      libcurl4-openssl-dev \
      libxml2-dev \
      libssl-dev && \
      apt-get clean && \
      rm -rf /var/lib/apt/lists/*

RUN Rscript -e \
    'install.packages("devtools")
     install.packages("tidyverse")
     install.packages("ggplot2")
     install.packages("ggforce")
     install.packages("R6")
     install.packages("magrittr")
     install.packages("dplyr")
     install.packages("purrr")
     install.packages("stringr")
     install.packages("scales")
     install.packages("httr")
     install.packages("openxlsx")
     install.packages("reshape2")
     install.packages("reactable")
     install.packages("msigdbr")
     install.packages("kableExtra")
     install.packages("rmarkdown")
     install.packages("igraph")
     install.packages("visNetwork")
     install.packages("shiny")
     devtools::install_github("montilab/hypeR")
     devtools::install(".")'
