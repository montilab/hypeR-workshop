FROM rocker/tidyverse:4.0.0-ubuntu18.04

COPY . hyperworkshop

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      apt-utils \
      libglpk-dev \
      libcurl4-openssl-dev \
      libxml2-dev \
      libssl-dev && \
      apt-get clean && \
      rm -rf /var/lib/apt/lists/*

RUN Rscript -e "devtools::install('hyperworkshop', dependencies=TRUE)"