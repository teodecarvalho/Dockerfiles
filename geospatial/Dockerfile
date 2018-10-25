FROM rocker/geospatial

RUN Rscript -e 'library(devtools); \
                install_github("mtennekes/tmaptools"); \ 
                install_github("mtennekes/tmap")'

ENV PASSWORD="teo"
