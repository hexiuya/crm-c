FROM openjdk:8
VOLUME /tmp
ADD target/crm-c-0.0.1.jar crm-c-0.0.1.jar
COPY application.properties application.properties
EXPOSE 8880
ENTRYPOINT ["java", "-jar", "-Dspring.config.location=application.properties", "crm-c-0.0.1.jar"]
