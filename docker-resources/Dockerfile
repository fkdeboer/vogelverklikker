FROM python:3.11-slim-buster


RUN mkdir /package
WORKDIR /package

COPY runner.py .

ENV PYTHONPATH="${PYTHONPATH}:/package/"

CMD python runner.py
