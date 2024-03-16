FROM python:latest

WORKDIR /usr/src

COPY * .

RUN pip install -r requirements.txt

