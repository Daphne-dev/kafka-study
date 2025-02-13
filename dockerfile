FROM adoptopenjdk/openjdk11
LABEL authors="daphne"
ENV CLI_DIR=/cli

RUN mkdir ${CLI_DIR}
WORKDIR ${CLI_DIR}
COPY kafka_2.12-2.5.0.tgz ${CLI_DIR}/kafka.tgz
RUN tar -xvf kafka.tgz
ENTRYPOINT ["top", "-b"]