# multi-stage docker build use
#=========================================== start of Application Setting Stage ==============================#
FROM openjdk:18-jdk-slim-buster

# ARG ENV
# ENV ENV $ENV

# ARG SERVICE_NAME
# ENV SERVICE_NAME $SERVICE_NAME
COPY . /app

WORKDIR /app

# Gradle 빌드 수행
# chmod +x ./gradlew
RUN chmod +x ./gradlew
RUN ./gradlew clean build

# 애플리케이션 실행 (실행 스크립트에 따라 수정 가능)
CMD ["java", "-jar", "build/libs/novicesranking-0.0.1-SNAPSHOT.jar"]
#8085번
