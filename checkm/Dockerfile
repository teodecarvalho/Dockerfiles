FROM teodecarvalho/base
LABEL maintainer="Teotonio <teo.decarvalho@gmail.com>"

RUN conda install -y checkm-genome=1.0.11 aria2 --no-update-deps && \
    conda clean --all -y

RUN mkdir -p /db/CheckM &&\
    mkdir /Public

RUN aria2c -x 16 -s 16 https://data.ace.uq.edu.au/public/CheckM_databases/checkm_data_2015_01_16.tar.gz 

RUN tar -xvzf checkm_data_2015_01_16.tar.gz -C /db/CheckM && \
    rm checkm_data_2015_01_16.tar.gz && \
    echo -e "cat << EOF\n/db/CheckM\nEOF\n" | checkm data setRoot

WORKDIR /Public
