FROM rocker/geospatial

RUN Rscript -e 'library(devtools); \
                install_github("mtennekes/tmaptools"); \ 
                install_github("mtennekes/tmap")'

RUN Rscript -e 'library(devtools); install_github("dkahle/ggmap", ref = "tidyup")'

ENV PASSWORD="teo"
