FROM adoptopenjdk:11-jre-hotspot AS build-env
RUN mkdir /opt/app
COPY target/microservice.jar /opt/app/

WORKDIR /opt/app

FROM gcr.io/distroless/java:11
COPY --from=build-env /opt/app /app
WORKDIR /app
USER 1000:1000
EXPOSE 8080
ENTRYPOINT ["java","-jar","microservice.jar"]





