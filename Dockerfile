FROM python:3.10.9

ENV PYTHONUNBUFFERED 1

RUN mkdir /django-app
WORKDIR /django-app

ADD requirements.txt /django-app/
RUN pip install -r requirements.txt
ADD requirements-test.txt /django-app/
RUN pip install -r requirements-test.txt
