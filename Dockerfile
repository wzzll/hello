FROM ubuntu:16.04
MAINTAINER wz
ENV LANG C

RUN apt-get update \
  && apt-get install -y python3-pip python3-dev locales\
  && pip3 install --upgrade pip

COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3"]
CMD ["app.py"]