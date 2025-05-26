FROM jupyter/base-notebook:python-3.11
LABEL maintainer="hatariTools Developers"
LABEL repo="https://github.com/hatarilabs/hatariTools"

COPY docker/requirements.txt /build-context/requirements.txt
WORKDIR /build-context/

RUN pip install -r requirements.txt

WORKDIR $HOME

