FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN mkdir /data
WORKDIR /data
COPY data/requirements.txt /data/
RUN pip install --upgrade pip
RUN pip install -r /data/requirements.txt
COPY data /data/
RUN useradd -s /bin/bash -u 1000 djangouser
USER djangouser