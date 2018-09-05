FROM conda/miniconda2
LABEL maintainer="Teotonio <teo.decarvalho@gmail.com>"
WORKDIR /app
COPY . /app
RUN conda config --add channels defaults && \
    conda config --add channels conda-forge && \
    conda config --add channels bioconda && \
    conda install -y checkm-genome && \
    conda install -y aria2
RUN mkdir -p /db/CheckM && \
    aria2c -x 16 -s 16 https://data.ace.uq.edu.au/public/CheckM_databases/checkm_data_2015_01_16.tar.gz && \
    tar -xvzf checkm_data_2015_01_16.tar.gz -C /db/CheckM && \
    rm checkm_data_2015_01_16.tar.gz && \
    echo -e "cat << EOF\n/db/CheckM\nEOF\n" | checkm data setRoot
