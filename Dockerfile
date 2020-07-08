FROM bioconductor/bioconductor_docker:devel

COPY . /hyperworkshop

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    apt-utils \
    libglpk-dev \
    libcurl4-openssl-dev \
    libxml2-dev \
    libssl-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN Rscript -e "install.packages('devtools'); \
                devtools::install_github('montilab/hypeR'); \
                devtools::install('hyperworkshop', dependencies=TRUE)"