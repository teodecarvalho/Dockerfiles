FROM rocker/tidyverse
MAINTAINER "Teotonio Soares de Carvalho" teo.decarvalho@gmail.com

# Caret
RUN install2.r --error \
    BradleyTerry2 \
    brglm \
    broom \
    car \
    caret \
    furrr \
    gtools \
    lme4 \
    minqa \
    nloptr \
    pbkrtest \
    profileModel \
    RcppEigen \
    sp \
&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds

RUN install2.r \
    ada \
    adabag \
    arm \
    caretEnsemble \
    dplyr \
    e1071 \
    earth \
    elasticnet \
    fastAdaboost \
    foreach \
    gam \
    gbm \
    glmnet \
    ipred \
    keras \
    kknn \
    leaps \
    MASS \
    Matrix \
    mboost \
    mda \
    Metrics \
    mgcv \
    naivebayes \
    nnls \
    party \
    penalized \
    penalizedLDA \
    pls \
    plyr \
    protoclass \
    proxy \
    qrnn \
    randomForest \
    randomGLM \
    ranger \
    Rborist \
    recipes \
    relaxo \
    rocc \
    rotationForest \
    rpart \
    rpartScore \
    rqPen \
    rrcov \
    rrcovHD \
    RRF \
    rrlda \
    rsample \
    RSNNS \
    sda \
    sdwd \
    snn \
    sparsediscrim \
    sparseLDA \
    spikeslab \
    spls \
    stepPlr \
    superpc \
    vbmp \
    VGAM \
    wsrf \
    xgboost \
&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds

VOLUME /Public
WORKDIR /Public

RUN echo 'initialWorkingDirectory="/Public"' >>  /home/rstudio/.rstudio/monitored/user-settings/user-settings
