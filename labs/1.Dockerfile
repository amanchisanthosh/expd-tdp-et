FROM ubuntu:jammy
RUN apt -y update
RUN apt install mysql-client -y
RUN mkdir /myapp
COPY appsrc.txt /myapp/
