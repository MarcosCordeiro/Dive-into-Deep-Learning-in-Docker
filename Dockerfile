FROM continuumio/miniconda
RUN /opt/conda/bin/conda install jupyter -y --quiet && mkdir /opt/notebooks
ENTRYPOINT ["/opt/conda/bin/jupyter","notebook", "--notebook-dir=/opt/notebooks", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]