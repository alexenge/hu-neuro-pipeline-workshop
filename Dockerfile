FROM alexenge/r_eeg:4.1.2

USER root

COPY slides/ slides/
COPY .gitignore .
COPY LICENSE .
COPY Makefile .
COPY README.md .

ENV PIPELINE_DATA_DIR=$HOME/project/data
RUN python3 -c "from pipeline.datasets import ucap; ucap.get_paths(2)" \
    && chown -R $NB_USER $HOME

USER $NB_USER
