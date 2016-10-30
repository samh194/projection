FROM FROM jupyterhub/jupyterhub:latest

MAINTAINER Jupyter Project <jupyter@googlegroups.com>

USER root

# Install ipywidgets, matplotlib, and operator
# Also prepare the matplotlib font cache to speed initial setup up.
RUN conda install ipywidgets && \
    /home/main/anaconda2/envs/python3/bin/pip install operator && \
    /home/main/anaconda2/envs/python3/bin/python -c "import matplotlib.pyplot"
