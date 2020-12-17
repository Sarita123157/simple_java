#FROM java:7-jdk-alpine
FROM openjdk:8-jdk
USER root
WORKDIR /usr
RUN mkdir /usr/myapp
WORKDIR /usr/myapp

RUN apt-get update -y \
    && apt-get install -y maven

ADD pom.xml /usr/myapp/pom.xml
ADD src /usr/myapp/src

ADD get_sealights.sh /usr/myapp/get_sealights.sh
RUN chmod a+x /usr/myapp/get_sealights.sh
CMD ["/usr/myapp/get_sealights.sh"]

ADD sealights_json.sh /usr/myapp/sealights_json.sh
RUN chmod a+x /usr/myapp/sealights_json.sh
CMD ["/usr/myap/sealights_json.sh"]

ADD update_pom.sh /usr/myapp/update_pom.sh
RUN chmod a+x /usr/myapp/update_pom.sh
CMD ["/usr/myapp/update_pom.sh"]

RUN mvn package
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "target/myapp.jar"]
#ENTRYPOINT ["java", "-cp", "target/petclinic.war", "org.springframework.boot"]
