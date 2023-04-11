FROM alpine:latest
RUN apk update
RUN apk add python3 py3-pip
RUN pip3 install flask flask-restful
RUN mkdir /app
COPY ./app.py /app/app.py
CMD python3 /app/app.py

