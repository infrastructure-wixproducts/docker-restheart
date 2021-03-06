FROM java:8u45-jre

MAINTAINER SoftInstigate <maurizio@softinstigate.com>

WORKDIR /opt/
ADD https://github.com/SoftInstigate/restheart/releases/download/0.10.2/restheart-0.10.2.tar.gz /opt/
RUN tar zxvf restheart-0.10.2.tar.gz

WORKDIR /opt/restheart-0.10.2
COPY etc/* /opt/restheart-0.10.2/etc/

CMD java -server -jar restheart.jar etc/restheart.yml
EXPOSE 8080