FROM jupyter/r-notebook

LABEL maintainer="Teotonio <teo.decarvalho@gmail.com>"

USER root

RUN conda install -c bioconda --quiet --yes \
    bioconductor-biostrings

RUN conda install --quiet --yes pandas \
    rpy2 && \
    conda clean -tipsy

RUN apt-get update && \
    apt-get install -yq apt-transport-https ca-certificates curl software-properties-common && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&\
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \
    apt-get update && \
    apt-get install -yq docker-ce && \
    apt-get clean
