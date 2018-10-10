#!/bin/bash

docker run --rm -v $PWD:/Public -it pyani \
   genbank_get_genomes_by_taxon.py -f \
   --email "teo.decarvalho@gmail.com" \
   -t 1355477 \
   --format fasta \
   -v \
   -o ./genomes

rm ./genomes/*gz

cat ./genomes/*fna > all_genomes.fna

rm -r genomes

docker run --rm -v $PWD:/data -it biocontainers/blast \
   makeblastdb \
      -in all_genomes.fna \
      -dbtype nucl \
      -out genomes


docker run --rm -v $PWD:/data -it biocontainers/blast \
    blastn \
      -db genomes \
      -query nosZ_Brady.fasta \
      -out results.txt




