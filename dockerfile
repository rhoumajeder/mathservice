FROM public.ecr.aws/lts/ubuntu:latest

ARG JAR_FILE=build/libs/*SNAPSHOT.jar
COPY ${JAR_FILE} /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]