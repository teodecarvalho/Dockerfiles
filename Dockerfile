FROM conda/miniconda2
LABEL maintainer="Teotonio <teo.decarvalho@gmail.com>"
WORKDIR /app
COPY . /app
RUN conda config --add channels defaults && \
    conda config --add channels conda-forge && \
    conda config --add channels bioconda && \
    conda install -y checkm-genome aria2 && \
    conda clean --all -y
