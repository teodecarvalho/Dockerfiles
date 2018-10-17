FROM python:3

RUN apt-get update && apt-get install -y \
			       ncbi-blast+ \
			       mummer \
			       && \
    pip3 install --upgrade pip && \
    pip3 install pyani && \
    mkdir /Public



WORKDIR /Public

#ENTRYPOINT ["genbank_get_genomes_by_taxon.py"]
