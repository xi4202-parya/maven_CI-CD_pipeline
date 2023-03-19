FROM maven:3.8.7
RUN mkdir /my_app
COPY pom.xml /my_app/pom.xml
COPY src /my_app/src
WORKDIR my_app
RUN mvn package
CMD ["java","-jar","target/maven-simple-0.2-SNAPSHOT.jar"]