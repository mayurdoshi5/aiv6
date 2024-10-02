FROM openjdk:17-oracle
COPY aiv.jar /opt/run.jar
EXPOSE 8080
RUN microdnf install jq
WORKDIR /opt/
COPY init.sh .
ENV aiv_base=/opt
RUN chmod +x init.sh
