FROM conda/miniconda2

RUN conda config --add channels r && \
    conda config --add channels conda-forge && \
    conda config --add channels bioconda && \
    conda install -y "blast>2.9" clustalo=1.2.4 muscle=3.8.31 \
                     wget unzip git && \
    pip install biopython==1.73
    
RUN git clone https://github.com/qunfengdong/BLCA.git
    cd BLCA &&\
    python 1.subset_db_acc.py 



