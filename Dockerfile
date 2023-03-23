FROM registry.access.redhat.com/ubi8/openjdk-17:1.15-1.1678874698

USER root

WORKDIR /
RUN mkdir -p /opt/app
COPY demo-0.0.1-SNAPSHOT.jar /opt/app
WORKDIR /opt/app
ENTRYPOINT ["java","-jar","demo-0.0.1-SNAPSHOT.jar", "&&"]
