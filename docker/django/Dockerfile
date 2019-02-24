ARG PYTHON_VERSION=3.7.0-alpine3.8

FROM python:${PYTHON_VERSION}
ENV PYTHONUNBUFFERED 1

WORKDIR /code
COPY ./requirements /code/requirements
RUN pip install -U pip \
    && pip install -r /code/requirements/base.txt