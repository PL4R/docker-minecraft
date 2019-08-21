FROM amd64/alpine:latest
MAINTAINER David McElin
RUN apk add openjdk8-jre-base
WORKDIR /repo/Minecraft
ENTRYPOINT ["java", "-Xmx1024M", "-Xms1024M", "-jar", "/repo/Minecraft/server.jar"]
