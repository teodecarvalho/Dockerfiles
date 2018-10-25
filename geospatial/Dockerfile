FROM rocker/geospatial

RUN Rscript -e 'library(devtools); \
                install_github("mtennekes/tmaptools"); \ 
                install_github("mtennekes/tmap")'

RUN install2.r ggmap && \
    rm -rf /tmp/downloaded_packages/ /tmp/*.rds

ENV PASSWORD="teo"
