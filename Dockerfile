FROM ubuntu:latest
EXPOSE 8888
RUN apt-get update && apt-get -y install netcat
VOLUME /home/output
ENTRYPOINT ["/bin/nc", "-k", "-l", "-p", "8888", "-vv"]