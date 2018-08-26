FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/crm-c-0.0.1.jar crm-c-0.0.1.jar
EXPOSE 8880
ENTRYPOINT ["java", "-jar", "crm-c-0.0.1.jar"]
