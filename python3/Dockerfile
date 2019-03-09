FROM python:3

RUN apt-get update \
    && apt-get install -y vim supervisor

WORKDIR /var/www/flask

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt


#CMD ["gunicorn","-c","gunicorn.py server:app"]
#/usr/local/bin/gunicorn  -c gunicorn.py server:app
CMD ["/bin/bash"]
