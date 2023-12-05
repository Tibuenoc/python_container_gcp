FROM python:3.9

COPY requirements.txt .

RUN apt-get -q update && \
apt-get -qqy install python3 python3-pip

RUN python3 -m pip install -r requirements.txt

ENTRYPOINT ["python3"]