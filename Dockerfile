FROM continuumio/miniconda3:4.9.2

MAINTAINER Ivan Muratov, muratov.i@firstmk.ru

RUN conda config --set auto_update_conda false &&\
    conda config --set allow_conda_downgrades true &&\
    conda config --set safety_checks disabled &&\
    conda config --set channel_priority strict &&\
    conda config --add channels conda-forge

RUN conda install -y \
    jupyter ipython \
    numpy scipy pandas \
    matplotlib seaborn plotly bokeh \
    statsmodels scikit-learn \
    geopandas contextily folium \
    ipython-sql sqlalchemy postgresql psycopg2 pgspecial

COPY docker-entrypoint.sh /etc/entrypoint.sh
RUN chmod +x /etc/entrypoint.sh
ENTRYPOINT [ "/etc/entrypoint.sh" ]
CMD [ "/bin/bash" ]
