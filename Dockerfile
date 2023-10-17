FROM continuumio/miniconda3:23.5.2-0

MAINTAINER Ivan Muratov, muratov.i@firstmk.ru

RUN conda install -y jupyter
RUN conda install -y ipython

RUN conda install -y numpy
RUN conda install -y scipy
RUN conda install -y pandas

RUN conda install -y matplotlib
RUN conda install -y seaborn
RUN conda install -y plotly
RUN conda install -y bokeh

RUN conda install -y statsmodels
RUN conda install -y scikit-learn

RUN conda install -y ipython-sql
RUN conda install -y sqlalchemy
RUN conda install -y postgresql
RUN conda install -y psycopg2

RUN pip install geopandas &&\
    pip show geopandas &&\
    conda list geopandas

RUN pip install contextily &&\
    pip show contextily &&\
    conda list contextily

RUN pip install folium &&\
    pip show folium &&\
    conda list folium

RUN pip install pgspecial &&\
    pip show pgspecial &&\
    conda list pgspecial

COPY docker-entrypoint.sh /etc/entrypoint.sh
RUN chmod +x /etc/entrypoint.sh
ENTRYPOINT [ "/etc/entrypoint.sh" ]
CMD [ "/bin/bash" ]
