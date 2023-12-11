FROM alexenge/r_eeg

USER root

COPY misc/ misc/
COPY .gitignore .
COPY LICENSE .
COPY Makefile .
COPY README.md .
COPY slides.Rmd .
COPY slides.pdf .

RUN chown -R $NB_USER $HOME

USER $NB_USER
