ARG BASE_CONTAINER=jupyter/minimal-notebook:latest
FROM $BASE_CONTAINER

LABEL author="Saisha"

COPY requirements.txt /tmp/requirements.txt

USER root
RUN pip install -r /tmp/requirements.txt

USER $NB_UID