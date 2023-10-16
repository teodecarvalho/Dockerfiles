FROM condaforge/mambaforge

RUN mamba install -y -c bioconda blast=2.14.1
RUN mamba install -y -c bioconda clustalo=1.2.4
RUN mamba install -y -c bioconda muscle=5.1 
RUN mamba install -y wget 
RUN mamba install -y unzip 
RUN mamba install -y git
RUN mamba install -y nano
RUN pip install biopython

RUN git clone https://github.com/qunfengdong/BLCA.git
RUN cd BLCA && python 1.subset_db_acc.py
