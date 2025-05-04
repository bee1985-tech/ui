FROM eclipse-temurin:17-jdk-alpine:latest
VOLUME /tmp
ARG JAVA_OPTS="-Xmx512m"
ENV JAVA_OPTS=$JAVA_OPTS
COPY ui.jar ui.jar
EXPOSE 3000
ENTRYPOINT ["java", "-jar", "ui.jar"]
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar ui.jar
