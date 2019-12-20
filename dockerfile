FROM ubuntu:18.04
LABEL Aauthor = "VEERA"
LABEL ORG = "kasteck"
RUN apt-get update && apt-get install openjdk-8-jdk -y && mkdir /myapp 
VOLUME /myapp
ADD https://qt-s3-new-testing.s3-us-west-2.amazonaws.com/spring-petclinic.jar /myapp/spring-petclinic.jar
EXPOSE 8080
CMD ["java" ,"-jar" , "/myapp/spring-petclinic.jar"]