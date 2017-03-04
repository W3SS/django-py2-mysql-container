FROM debian:jessie-slim

RUN apt-get update && \
        apt-get --no-install-recommends install -y build-essential libmysqlclient-dev libxml2-dev libxslt1-dev && \
        apt-get --no-install-recommends install -y libjpeg62-turbo-dev libopenjpeg-dev libfreetype6-dev libtiff5-dev liblcms2-dev libwebp-dev tk8.6-dev && \
        apt-get --no-install-recommends install -y python2.7 python2.7-dev python-pip uwsgi && \
        apt-get --no-install-recommends install -y python-numpy

RUN mkdir /app
WORKDIR /app

ONBUILD ADD . /app/
ONBUILD RUN pip install -r requirements.txt

ENTRYPOINT /app/run