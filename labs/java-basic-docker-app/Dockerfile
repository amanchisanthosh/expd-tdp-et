FROM azul-zulu:21 AS builder

WORKDIR /app
COPY App.java /app
RUN javac App.java
ENTRYPOINT [ "java" , "App"]