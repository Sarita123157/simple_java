#FROM scratch
FROM openjdk:8-jdk

ARG app_name
ARG branch_name
ARG build_name

ENV name=$app_name
ENV branch=$branch_name
ENV build=$build_name

#RUN echo $name \
#    && echo $branch \
#    && echo $build

#RUN echo com.azure.dev.image.build.definitionname
#RUN echo $(com.azure.dev.image.build.definitionname)

USER root
WORKDIR /usr
RUN mkdir /usr/myapp
WORKDIR /usr/myapp

RUN apt-get update -y \
    && apt-get install -y maven

ADD pom.xml /usr/myapp/pom.xml
ADD src /usr/myapp/src

#ADD get_sealights.sh /usr/myapp/entrypoint.sh
#RUN chmod a+x /usr/myapp/entrypoint.sh
#RUN ["/usr/myapp/entrypoint.sh"]

ADD get_sealights.sh /usr/myapp/get_sealights.sh
RUN chmod a+x /usr/myapp/get_sealights.sh
RUN ["/usr/myapp/get_sealights.sh"]

ADD sealights_json.sh /usr/myapp/sealights_json.sh
RUN chmod a+x /usr/myapp/sealights_json.sh
RUN ["/usr/myapp/sealights_json.sh"]

ADD update_pom.sh /usr/myapp/update_pom.sh
RUN chmod a+x /usr/myapp/update_pom.sh
RUN ["/usr/myapp/update_pom.sh"]

RUN mvn package
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "target/myapp.jar"]
#ENTRYPOINT ["java", "-cp", "target/petclinic.war", "org.springframework.boot"]
