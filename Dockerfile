FROM jupyter/jupyterhub

MAINTAINER Cristóbal Ganter

RUN conda install -y jupyter

RUN apt-get -y update \
&& apt-get -y install \
    texlive \
    texlive-latex-extra \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

ONBUILD ADD jupyterhub_config.py /srv/jupyterhub/jupyterhub_config_ext.py
ONBUILD RUN cat /srv/jupyterhub/jupyterhub_config_ext.py >> /srv/jupyterhub/jupyterhub_config.py
