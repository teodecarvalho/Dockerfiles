#!/bin/bash

THREADS = 40
MEMORY = 150

# Download git repository with dockerfiles for analyses
git clone https://github.com/teodecarvalho/Dockerfiles
cd Dockerfiles

# Run docker-compose
sh run_docker_compose_on_gce.sh

# Download files from Dropbox
docker exec checkm aria2c -x 16 -s 16 https://www.dropbox.com/s/765cwvoohtk04jw/UFLA06-13_S5_L001_R2_001.fastq.gz?dl=1
docker exec checkm aria2c -x 16 -s 16 https://www.dropbox.com/s/si7xwz7f8qk2iz7/UFLA06-13_S5_L001_R1_001.fastq.gz?dl=1

# Assembly genome
docker exec -it spades spades.py \
      -1 UFLA06-13_S5_L001_R1_001.fastq.gz \
      -2 UFLA06-13_S5_L001_R2_001.fastq.gz \
      --careful \
      -m $MEMORY \
      -t $THREADS \
      -o output

# Copy assembled contigs to new folder
mkdir ./db/contigs
cp ./db/output/contigs.fasta ./db/contigs/

# Check genome quality with checkm
docker exec -it checkm \
      checkm lineage_wf -t $THREADS \
                        -x fasta \
                        ./contigs \
                        ./checkm
