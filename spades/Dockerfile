FROM teodecarvalho/base
LABEL maintainer="Teotonio <teo.decarvalho@gmail.com>"

RUN conda install -y spades=3.12.0 --no-update-deps && \
    conda clean --all -y

RUN mkdir /Public

WORKDIR /Public
