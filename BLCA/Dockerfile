FROM conda/miniconda2

RUN conda config --add channels r && \
    conda config --add channels conda-forge && \
    conda config --add channels bioconda && \
    conda install -y blast=2.7.1 \
	                 clustalo=1.2.4 \
					 muscle=3.8.31 \
                     wget \
					 unzip && \
    pip install biopython==1.73
    
RUN wget https://github.com/qunfengdong/BLCA/archive/2.1.tar.gz && \
    tar xvzf 2.1.tar.gz && \
    cd BLCA-2.1 &&\
	python 1.subset_db_acc.py 



