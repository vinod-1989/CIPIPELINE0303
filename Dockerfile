#First docker file implementation using sample.sh

ARG version="18.04"
FROM ubuntu:$version

ARG ENCRYPTION_KEY="99$"
LABEL MAINTAINER vinod.raj.hr@oracle.com

RUN mkdir /code

COPY Sample.sh /code/Sample.sh
RUN chmod +x /code/Sample.sh
RUN echo "encryption key is" $ENCRYPTION_KEY
ENTRYPOINT ["sh","/code/Sample.sh"]

CMD [" /etc/hosts"]
