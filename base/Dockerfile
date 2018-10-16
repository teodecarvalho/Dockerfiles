FROM conda/miniconda2
LABEL maintainer="Teotonio <teo.decarvalho@gmail.com>"
#VOLUME ["/Public"]
RUN conda config --add channels defaults && \
    conda config --add channels conda-forge && \
    conda config --add channels bioconda && \
    conda clean --all -y
WORKDIR /Public
