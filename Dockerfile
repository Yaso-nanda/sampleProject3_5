FROM openjdk:8
ADD target/springboot-backend-0.0.1-SNAPSHOT.jar ./
EXPOSE 8080
ENTRYPOINT ["java","-jar","springboot-backend-0.0.1-SNAPSHOT.jar"]
