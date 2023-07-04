FROM amazoncorretto:8

RUN yum update && yum install wget -y

# do not use latest (2023/3/19)
RUN wget https://mohistmc.com/api/1.12.2/320/download -O server.jar 

COPY entrypoint.sh /
RUN chmod 777 entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
