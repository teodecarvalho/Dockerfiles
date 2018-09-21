#!/bin/sh
mkdir -p /db/CheckM && \
aria2c -x 16 -s 16 https://data.ace.uq.edu.au/public/CheckM_databases/checkm_data_2015_01_16.tar.gz && \
tar -xvzf checkm_data_2015_01_16.tar.gz -C /db/CheckM && \
rm checkm_data_2015_01_16.tar.gz && \
echo -e "cat << EOF\n/db/CheckM\nEOF\n" | checkm data setRoot
